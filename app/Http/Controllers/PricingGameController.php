<?php

namespace App\Http\Controllers;

use App\Models\Pricing_game;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;

class PricingGameController extends Controller
{
    public $folderBanner;
    public $dimenBanner;

    public function __construct()
    {
        $this->folderBanner = public_path().'/images/game/pricing';
        $this->dimenBanner = 150;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $price = Pricing_game::all();
        return $this->onSuccess("Data Price Game Ditemukan", $price);
    }

    public function search(Request $request)
    {
        if($request->has('game')) {
            $q = Pricing_game::query();
            if($request->game != null && $request->game != '') {
                $price = $q->where('id_game', $request->game)->get();
            }
        } else {
            $price = Pricing_game::all();
        }
        return $this->onSuccess("Data Price Game Ditemukan", $price);
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
                'banner' => 'image|mimes:jpeg,jpg,png',
            ]);
            $price = new Pricing_game();
            $price->price = $request->price;
            $price->point = $request->point;
            $price->id_game = $request->game;
            // if($request->hasFile('banner')) {
            if(!File::isDirectory($this->folderBanner)) {
                File::makeDirectory($this->folderBanner, $mode = 0777, true, true);
            }
            $file = $request->file('banner');
            $fileName = 'price.'.time().'.'.$file->extension();
            $img = Image::make($file->path());
            $img->resize($this->dimenBanner, $this->dimenBanner, function($constraint) {
                $constraint->aspectRatio();
            })->save($this->folderBanner.'/'.$fileName);
            $price->banner = $fileName;
            // }
            $price->save();
            return $this->onSuccess("Data Price Game Berhasil Ditambahkan", $price);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Pricing_game  $pricing_game
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $price = Pricing_game::find($id);
        $game = $price->Game;
        $tf = $price->Transaction;
        return $this->onSuccess("Data Price Game Ditemukan", $price);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Pricing_game  $pricing_game
     * @return \Illuminate\Http\Response
     */
    public function edit(Pricing_game $pricing_game)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Pricing_game  $pricing_game
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $this->validate($request, [
                'banner' => 'image|mimes:jpeg,jpg,png',
            ]);
            $price = Pricing_game::find($id);
            $price->price = $request->price;
            $price->point = $request->point;
            $price->id_game = $request->game;
            if($request->hasFile('banner')) {
                if(!File::isDirectory($this->folderBanner)) {
                    File::makeDirectory($this->folderBanner, $mode = 0777, true, true);
                }
                unlink($this->folderBanner.'/'.$price->banner);
                $file = $request->file('banner');
                $fileName = 'price.'.time().'.'.$file->extension();
                $img = Image::make($file->path());
                $img->resize($this->dimenBanner, $this->dimenBanner, function($constraint) {
                    $constraint->aspectRatio();
                })->save($this->folderBanner.'/'.$fileName);
                $price->banner = $fileName;
            }
            $price->save();
            return $this->onSuccess("Data Price Game Berhasil Diupdate", $price);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Pricing_game  $pricing_game
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $price = Pricing_game::find($id);
            unlink($this->folderBanner.'/'.$price->banner);
            $price->delete($id);
            return $this->onSuccess("Data Price Game Berhasil Dihapus", null);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }
}
