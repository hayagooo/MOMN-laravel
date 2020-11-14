<?php

namespace App\Http\Controllers;

use App\Models\Bussiness;
use App\Models\Payment;
use App\Models\User;
use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Http\Request;

class PaymentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
    public function store(Request $request, $token)
    {
            $this->validate($request, [
                'app' => 'nullable',
                'rekening' => 'nullable',
                'bank' => 'nullable',
                'nomor_hp' => 'nullable',
                'email' => 'nullable',
                'mitra' => 'nullable',
            ]);
            $user = User::where('api_token', $token)->first();
            $saldo = $user->saldo;
            $user->saldo = $saldo - $request->saldo;
            $payment = new Payment();
            $payment->saldo = $request->saldo;
            $payment->type = $request->type;
            $payment->rekening = $request->rekening;
            $payment->bank = $request->bank;
            $payment->email = $request->email;
            $payment->mitra = $request->mitra;
            $payment->nomor_hp = $request->nomor_hp;
            $payment->app = $request->app;
            $payment->user_id = $user->id;
            if($request->has('email')) {
                $userReceiver = User::where('email', $request->email)->first();
                if($userReceiver != null) {
                    $userReceiver->saldo = $userReceiver->saldo + $request->saldo;
                    $userReceiver->save();
                    $payment->receiver_id = $userReceiver->id;
                }
            }
            if($request->has('mitra')) {
                $mitraReceiver = Bussiness::where('name', $request->mitra)->first();
                if($mitraReceiver != null) {
                    $mitraReceiver->saldo = $mitraReceiver->saldo + $request->saldo;
                    $mitraReceiver->save();
                    $payment->mitra_id = $mitraReceiver->id;
                }
            }
            $user->save();
            $payment->save();
            return $this->onSuccess('Pembayaran Berhasil', $payment);
    }

    public function getDashboard()
    {
        $payment = Payment::select('id', 'date')->get()
        ->groupBy(function($date) {
            return Carbon::parse($date->date)->format('m');
        });
        $paymentcount = [];
        $paymentArr = [];
        $date = Carbon::now()->addDays(-31 * 6)->format('M');
        $dateNow = Carbon::now()->format('M');
        $dateNowNum = Carbon::now()->format('m');
        $dateAgoNum = Carbon::now()->addDays(-31 * 6)->format('m');
        $periodeMonth = CarbonPeriod::create($date, '1 month', $dateNow);
        $months = [];
        foreach($periodeMonth as $key => $value) {
            $months[] = $value->format('M');
        }
        foreach($payment as $key => $value) {
            $paymentcount[(int)$key] = count($value);
        }
        for($i=$dateAgoNum; $i<=$dateNowNum; $i++) {
            if(!empty($paymentcount[$i])) {
                $paymentArr[$i] = $paymentcount[$i];
            } else {
                $paymentArr[$i] = 0;
            }
        }

        $arr = [
            'month' => $months,
            'payments' => (array) $paymentArr
        ];

        return $this->onSuccess('Months', $arr);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Payment  $payment
     * @return \Illuminate\Http\Response
     */
    public function show(Payment $payment)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Payment  $payment
     * @return \Illuminate\Http\Response
     */
    public function edit(Payment $payment)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Payment  $payment
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Payment $payment)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Payment  $payment
     * @return \Illuminate\Http\Response
     */
    public function destroy(Payment $payment)
    {
        //
    }
}
