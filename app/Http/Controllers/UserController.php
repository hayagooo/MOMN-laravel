<?php

namespace App\Http\Controllers;

use App\Models\Topup_user;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;

class UserController extends Controller
{

    public $folderAvatar;
    public $dimenAvatar;

    public function __construct()
    {
        $this->folderAvatar = public_path().'/images/avatar';
        $this->dimenAvatar = 100;
    }

    public function index()
    {
        $user = User::all();
        return $this->onSuccess("User Ditemukan", $user);
    }

    public function pagination($page)
    {
        $user = User::paginate($page);
        return $this->onSuccess("User Ditemukan", $user);
    }

    public function search(Request $request)
    {
        if($request->has('name') || $request->has('email')) {
            $q = User::query();
            if($request->name != '') {
                $user = $q->where('name', 'LIKE', '%'.$request->name.'%')->get();
            }
            if($request->email != '') {
                $user = $q->where('email', 'LIKE', $request->email.'%')->get();
            }
        } else {
            $user = User::all();
        }
        return $this->onSuccess("User Ditemukan", $user);
    }

    public function store(Request $request)
    {
        try {
            $this->validate($request, [
                'avatar' => 'image|mimes:jpg,png,jpeg'
            ]);
            $user = new User();
            $user->name = $request->name;
            $user->email = $request->email;
            $user->password = $request->password;
            $user->saldo = 0;
            $user->api_token = Str::random(25);
            $user->level = $request->level;
            $user->phone_number = $request->phone_number;
            $user->active = 0;
            $user->avatar = 'avatar.png';
            $user->save();
            $user->sendEmailVerificationNotification();
            return $this->onSuccess("Berhasil Daftar", $user);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    public function show($id)
    {
        $user = User::find($id);
        return $this->onSuccess("User Ditemukan", $user);
    }

    public function getAuth()
    {
        $user = Auth::user();
        return $this->onSuccess("User Ditemukan", $user);
    }

    public function verifyEmailToken(Request $request, $id)
    {
        $user = User::find($id);
        $token = $request->token;
        if($user->token_verify == $token) {
            $timeNow = Carbon::now();
            $user = User::find($id);
            $user->email_verified_at = $timeNow;
            $user->save();
           return $this->onSuccess("Berhasil Verifikasi", $user);
        }
    }

    public function addSaldo(Request $request, $apiToken)
    {
        $this->validate($request, [
            'rekening' => 'nullable',
            'bank' => 'nullable',
        ]);
        $user = User::where('api_token', $apiToken)->first();
        $saldo = $user->saldo;
        $user->saldo = $saldo + $request->saldo;
        $user->save();
        $topup = new Topup_user();
        $topup->type = $request->type;
        $topup->rekening = $request->rekening;
        $topup->nominal = $request->saldo;
        $topup->user_id = $user->id;
        $topup->bank = $request->bank;
        $topup->save();
        return $this->onSuccess("Topup Berhasil", $user);
    }

    public function getTopup()
    {
        $user = User::with('Topup')->find(Auth::id());
        return $this->onSuccess("Topup Berhasil Ditemukan", $user);
    }

    public function uploadImage(Request $request, $id)
    {
        $this->validate($request, [
            'avatar' => 'image|mimes:jpg,png,jpeg'
        ]);
        $user = User::find($id);
        if(File::isFile($this->folderAvatar.'/'.$user->avatar) && $user->avatar != null) {
            unlink($this->folderAvatar.'/'.$user->avatar);
        }
        if(!File::isDirectory($this->folderAvatar)) {
            File::makeDirectory($this->folderAvatar);
        }
        $file = $request->file('avatar');
        $fileName = str_replace(' ', '_', $request->name).'_'.time().'.'.$file->extension();
        $img = Image::make($file->path());
        $img->resize($this->dimenAvatar, $this->dimenAvatar, function($constraint) {
            $constraint->aspectRatio();
        })->save($this->folderAvatar.'/'.$fileName);
        $user->avatar = $fileName;
        $user->save();
        return $this->onSuccess("Berhasil Daftar", $user);
    }

    public function update(Request $request, $token)
    {
        try {
            $user = User::where('api_token', $token)->first();
            $user->name = $request->name;
            $user->email = $request->email;
            $user->phone_number = $request->phone_number;
            $user->save();
            return $this->onSuccess("Berhasil diupdate", $user);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    public function getPayments()
    {
        if(Auth::check()) {
            $user = User::with('Payments')->find(Auth::id());
            return $this->onSuccess("Pembayaran ditemukan", $user);
        }
    }

    public function updatePassword(Request $request, $token)
    {
        try {
            $user = User::where('api_token', $token)->first();
            if(Hash::check($request->passwordOld, $user->password)) {
                $user->password = $request->password;
                $user->save();
                return $this->onSuccess("Berhasil diupdate", $user);
            }
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    public function destroy($id)
    {
        try {
            $user = User::find($id);
            unlink($this->folderAvatar.'/'.$user->avatar);
            $user->delete();
            return $this->onSuccess("User Dihapus", null);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    public function login(Request $request)
    {
        if(Auth::attempt($request->only('email', 'password'))) {
            $user = Auth::user();
            $token = $user->createToken('nApp')->accessToken;
            $user = User::find($user->id);
            $user->active = 1;
            $user->save();
            return $this->onSuccess("Berhasil Login", [$user, $token]);
        } else {
            return $this->onSuccess("Gagal", null);
        }
    }

    public function register(Request $request)
    {
        // try {
            $this->validate($request, [
                'avatar' => 'image|mimes:jpg,png,jpeg'
            ]);
            $user = new User();
            $user->name = $request->name;
            $user->email = $request->email;
            $user->phone_number = $request->phone_number;
            $user->password = $request->password;
            $user->saldo = 0;
            $user->api_token = Str::random(25);
            $user->token_verify = Str::random(6);
            $user->level = $request->level;
            $user->active = 0;
            // if($request->hasFile('avatar')) {
            //     if(!File::isDirectory($this->folderAvatar)) {
            //         File::makeDirectory($this->folderAvatar);
            //     }
            //     $file = $request->file('avatar');
            //     $fileName = str_replace(' ', '_', $request->name).'_'.time().'.'.$file->extension();
            //     $img = Image::make($file->path());
            //     $img->resize($this->dimenAvatar, $this->dimenAvatar, function($constraint) {
            //         $constraint->aspectRatio();
            //     })->save($this->folderAvatar.'/'.$fileName);
            //     $user->avatar = $fileName;
            // } else {
            //     $user->avatar = 'avatar.png';
            // }
            $user->save();
            $email = $user->email;
            $textEmail = [
                'title' => 'Verify your e-mail to finish signing up for MOMN',
                'subTitle' => 'Thank you for choosing MOMN',
                'text' => "Please confirm that <b>$email</b> is your e-mail address with this token.",
                'token' => $user->token_verify,
            ];
            Mail::to($email)->send(new \App\Mail\VerifyMail($textEmail));
            return $this->onSuccess("Berhasil Daftar", $user);
        // } catch (\Exception $e) {
        //     return $this->exception($e);
        // }
    }

    public function requestResetPassword(Request $request)
    {

        $email = $request->email;
        $user = User::where('email', $email)->first();
        if($user != null) {
            $email = $user->email;
            $textEmail = [
                'title' => 'Hai Ninno, Do you have a request to reset your password ?',
                'text_top' => 'You  recent to request reset your password you MOMN Account, Use button below to reset it, <b>This password reset is only valid for the next 24 hours</b>',
                'link' => App::make('url')->to('/'),
                'text_bottom' => 'For the security, this request was received from a Desktop device using DuckDuckGo Browser, If you not request a password reset, please ignore this email or <a href="#">a</a> if you have questions.'
            ];
            Mail::to($email)->send(new \App\Mail\ResetPassword($textEmail));
            return $this->onSuccess("Link Reset Password Sudah Dikirim Melalui Email, Sekarang Check Email Anda", $user);
        } else {
            return $this->onSuccess("User tidak ditemukan", null);
        }
    }

    public function resetPassword(Request $request, $token)
    {
        $user = User::where('api_token', $token)->first();
        if($user != null) {
            $user->password = $request->password;
            $user->save();
            return $this->onSuccess("Reset Password Berhasil, Silahkan Login", $user);
        } else {
            return $this->onSuccess("Reset Password Gagal", null);
        }
    }

}
