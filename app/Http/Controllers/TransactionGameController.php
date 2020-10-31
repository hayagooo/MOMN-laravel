<?php

namespace App\Http\Controllers;

use App\Models\Transaction_game;
use Illuminate\Http\Request;

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
        $transaction = $this->tf->paginate(10);
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
            $transaction = $this->tf->create($request->all());
            return $this->onSuccess("Data Transaksi Game Ditambahkan", $transaction);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
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
            $transaction = $this->tf->where('id', $id)->update($request->all());
            $mTransaction = $this->tf->find($id);
            return $this->onSuccess("Data Transaksi Game Diupdate", $mTransaction);
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
}
