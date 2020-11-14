<?php

namespace App\Http\Controllers;

use App\Models\Bussiness;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;

class BussinessController extends Controller
{

    public $dimen;
    public $path;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->dimen = 350;
        $this->path = public_path().'/images/bussiness/icon/';
    }

    public function index(Request $request)
    {
        if($request->has('ownerId') || $request->has('token')) {
            // $id = $request->get('ownerId');
            $token = $request->get('token');
            $user = User::with('Bussiness')->find(Auth::id());
            // $bussiness = Bussiness::where('owner_id', $id)->paginate(6);
            return $this->onSuccess('Bisnis Ditemukan', $user);
        }
        $bussiness = Bussiness::paginate(6);
        return $this->onSuccess('Bisnis Ditemukan', $bussiness);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            $this->validate($request, [
                'icon' => 'image|mimes:jpeg,jpg,png'
            ]);
            $bussiness = new Bussiness();
            $bussiness->name = $request->name;
            $bussiness->category = $request->category;
            $bussiness->kode_qr = Str::random(10);
            $bussiness->privacy = $request->privacy;
            $bussiness->saldo = 0;
            $bussiness->owner_id = $request->userId;
            if(!File::isDirectory($this->path)) {
                File::makeDirectory($this->path);
            }
            $file = $request->file('icon');
            $fileName = 'IconBussiness_'.time().'.'.$file->extension();
            $img = Image::make($file->path());
            $img->resize($this->dimen, $this->dimen, function($constraint) {
                $constraint->aspectRatio();
            })->save($this->path.'/'.$fileName);
            $bussiness->icon = $fileName;
            $bussiness->save();
            return $this->onSuccess('Bisnis sudah siap', $bussiness);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Bussiness  $bussiness
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $bussiness = Bussiness::with('User')->find($id);
        return $this->onSuccess('Bisnis Ditemukan', $bussiness);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Bussiness  $bussiness
     * @return \Illuminate\Http\Response
     */
    public function edit(Bussiness $bussiness)
    {
        //
    }

    public function search(Request $request)
    {
        $bussiness = Bussiness::where('name', 'LIKE', $request->name.'%')->get();
        return $this->onSuccess('Bisnis ditemukan', $bussiness);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Bussiness  $bussiness
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // try {
            $bussiness = Bussiness::find($id);
            $bussiness->name = $request->name;
            $bussiness->category = $request->category;
            $bussiness->kode_qr = Str::random(10);
            $bussiness->privacy = $request->privacy;
            $bussiness->saldo = 0;
            $bussiness->owner_id = $request->userId;
            if($request->hasFile('icon') && $request->file('icon') != null) {
                $this->validate($request, [
                    'icon' => 'nullable|image|mimes:jpeg,jpg,png'
                ]);
                unlink($this->path.'/'.$bussiness->icon);
                if(!File::isDirectory($this->path)) {
                    File::makeDirectory($this->path);
                }
                $file = $request->file('icon');
                $fileName = 'IconBussiness_'.time().'.'.$file->extension();
                $img = Image::make($file->path());
                $img->resize($this->dimen, $this->dimen, function($constraint) {
                    $constraint->aspectRatio();
                })->save($this->path.'/'.$fileName);
                $bussiness->icon = $fileName;
            }
            $bussiness->save();
            return $this->onSuccess('Bisnis sudah diupdate', $bussiness);
        // } catch (\Exception $e) {
        //     return $this->exception($e);
        // }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Bussiness  $bussiness
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $bussiness = Bussiness::find($id);
            if(File::isFile($this->path.'/'.$bussiness->icon)) {
                unlink($this->path.'/'.$bussiness->icon);
            }
            $bussiness->delete();
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }
}
