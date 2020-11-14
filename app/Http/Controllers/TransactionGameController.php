<?php

namespace App\Http\Controllers;

use App\Models\Transaction_game;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Kreait\Firebase\Database\Transaction;

class TransactionGameController extends Controller
{

    private $tf;

    public function __construct(Transaction_game $tf)
    {
        $this->tf = $tf;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $transaction = $this->tf->all();
        return $this->onSuccess("Data Transaksi Game Ditemukan", $transaction);
    }

    public function pagination($page)
    {
        $transaction = $this->tf->paginate($page);
        return $this->onSuccess("Data Transaksi Game Ditemukan", $transaction);
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
            $transaction = new Transaction_game();
            $transaction->id_account = $request->id_account;
            $transaction->name_account = $request->name_account;
            $transaction->phone = $request->phone;
            $transaction->email = $request->email;
            $transaction->token_tf = Str::random(6);
            $transaction->verified = 0;
            $transaction->id_game = $request->id_game;
            $transaction->id_price = $request->id_price;
            $transaction->save();
            return $this->onSuccess("Data Transaksi Game Ditambahkan", $transaction);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    public function search(Request $request)
    {
        if($request->has('game') || $request->has('name') || $request->has('token')) {
            $q = Transaction_game::query();
            if($request->game != null && $request->game != '') {
                $tf = $q->where('id_game', $request->game)->get();
            }
            if($request->name != null && $request->name != '') {
                $tf = $q->where('name_account', 'LIKE', '%'.$request->name.'%')->get();
            }
            if($request->token != null && $request->token != '') {
                $tf = $q->where('token_tf', $request->token)->get();
            }
        } else {
            $tf = Transaction_game::all();
        }
        return $this->onSuccess("Data Transaksi Game Ditemukan", $tf);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Transaction_game  $transaction_game
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $transaction = $this->tf->find($id);
        $price = $transaction->Price;
        $game = $transaction->Game;
        return $this->onSuccess("Data Transaksi Game Ditemukan", $transaction);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Transaction_game  $transaction_game
     * @return \Illuminate\Http\Response
     */
    public function edit(Transaction_game $transaction_game)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Transaction_game  $transaction_game
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $transaction = Transaction_game::find($id);
            $transaction->id_account = $request->id_account;
            $transaction->name_account = $request->name_account;
            $transaction->phone = $request->phone;
            $transaction->email = $request->email;
            $transaction->token_tf = Str::random(6);
            $transaction->verified = 0;
            $transaction->id_game = $request->id_game;
            $transaction->id_price = $request->id_price;
            $transaction->save();
            return $this->onSuccess("Data Transaksi Game Diupdate", $transaction);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Transaction_game  $transaction_game
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $transaction = $this->tf->destroy($id);
            return $this->onSuccess("Data Transaksi Game Dihapus", null);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    public function verify(Request $request)
    {
        $token = $request->token;
        $tfs = Transaction_game::where('token_tf', $token)->first();
        if($tfs != null && $tfs != [] && $tfs != '') {
            $transaction = Transaction_game::find($tfs->id);
            $transaction->verified = 1;
            $transaction->save();
            return $this->onSuccess('Verifikasi Berhasil', $transaction);
        } else {
            return $this->onSuccess('Transaksi tidak ditemukan', null);
        }
    }

    public function sendEmail(Request $request, $id)
    {
        $email = $request->email;
        $transaction = Transaction_game::where('id', $id)->first();
        if($transaction != null) {
            $email = $transaction->email;
            $textEmail = [
                'title' => "TopUp Game ".$transaction->name,
                'text_top' => 'Anda telah TopUp Game'.$transaction->name.' Gunakan kode token berikut untuk proses verifikasi :',
                'token' => $transaction->token_tf,
                'text_bottom' => 'Terima kasih telah TopUp dengan kami'
            ];
            Mail::to($email)->send(new \App\Mail\VerifyTransaction($textEmail));
            return $this->onSuccess("Link Verify Sudah Dikirim Melalui Email, Sekarang Check Email Anda", $transaction);
        } else {
            return $this->onSuccess("User tidak ditemukan", null);
        }
    }
}
