<?php

namespace App\Http\Controllers;

use App\Models\Game;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;

class GameController extends Controller
{

    public $folderThumbnail;
    public $folderLogo;
    public $folderImage;
    public $dimenLogo;
    public $dimenThumnail;

    public function __construct()
    {
        $this->folderThumbnail = public_path().'/images/game/thumbnail';
        $this->folderLogo = public_path().'/images/game/logo';
        $this->folderImage = public_path().'/images/game/';
        $this->dimenLogo = 100;
        $this->dimenThumnail = 200;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try {
            $game = Game::all();
            return $this->onSuccess("Data Game Ditemukan", $game);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
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
        $this->validate($request, [
            'logo' => 'image|mimes:png,jpg,jpeg',
            'cover' => 'image|mimes:png,jpg,jpeg',
            'name' => 'required'
        ]);
        try {
            $game = new Game();
            $game->name = $request->name;
            $game->id_category = $request->category;
            // if($request->hasFile('logo')) {
            if(!File::isDirectory($this->folderLogo)) {
                File::makeDirectory($this->folderLogo, $mode = 0777, true, true);
            }
            if(!File::isDirectory($this->folderThumbnail)) {
                File::makeDirectory($this->folderThumbnail, $mode = 0777, true, true);
            }
            if(!File::isDirectory($this->folderImage)) {
                File::makeDirectory($this->folderImage, $mode = 0777, true, true);
            }
            $fileLogo = $request->file('logo');
            $fileNameLogo = 'Logo.'.time().'.'.$fileLogo->extension();
            $imgLogo = Image::make($fileLogo->path());
            $imgLogo->resize($this->dimenLogo, $this->dimenLogo, function($constraint) {
                $constraint->aspectRatio();
            })->save($this->folderLogo.'/'.$fileNameLogo);

            $file = $request->file('cover');
            $fileName = 'Cover.'.time().'.'.$file->extension();
            $img = Image::make($file->path());
            $img->resize($this->dimenThumnail, $this->dimenLogo, function($constraint) {
                $constraint->aspectRatio();
            })->save($this->folderThumbnail.'/'.$fileName);
            $file->move($this->folderImage, $fileName);

            $game->logo = $fileNameLogo;
            $game->cover = $fileName;
            // }
            $game->save();
            return $this->onSuccess("Data Game Berhasil Ditambahkan", $game);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Game  $game
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $game = Game::find($id);
        $category = $game->Category;
        $price = $game->Price;
        $tf = $game->Transaction;
        return $this->onSuccess("Data Game Ditemukan", $game);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Game  $game
     * @return \Illuminate\Http\Response
     */
    public function edit(Game $game)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Game  $game
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'logo' => 'image|mimes:jpg,jpeg,png|nullable',
            'cover' => 'image|mimes:jpeg,jpg,png|nullable',
            'name' => 'required',
        ]);
        try {
            $game = Game::find($id);
            $game->name = $request->name;
            $game->id_category = $request->category;
            if(!File::isDirectory($this->folderThumbnail)) {
                File::makeDirectory($this->folderThumbnail, $mode = 0777, true, true);
            }
            if(!File::isDirectory($this->folderLogo)) {
                File::makeDirectory($this->folderLogo, $mode = 0777, true, true);
            }
            if(!File::isDirectory($this->folderImage)) {
                File::makeDirectory($this->folderImage, $mode = 0777, true, true);
            }
            if($request->hasFile('logo')) {
                unlink($this->folderLogo.'/'.$game->logo);
                $fileLogo = $request->file('logo');
                $fileNameLogo = 'Logo.'.time().'.'.$fileLogo->extension();
                $imgLogo = Image::make($fileLogo->path());
                $imgLogo->resize($this->dimenLogo, $this->dimenLogo, function($constraint) {
                    $constraint->aspectRatio();
                })->save($this->folderLogo.'/'.$fileNameLogo);
                $game->logo = $fileNameLogo;
            }
            if($request->hasFile('cover')) {
                unlink($this->folderImage.'/'.$game->cover);
                unlink($this->folderThumbnail.'/'.$game->cover);
                $file = $request->file('cover');
                $fileName = 'Cover'.time().'.'.$fileLogo->extension();
                $img = Image::make($file->path());
                $img->resize($this->dimenThumnail, $this->dimenThumnail, function($constraint) {
                    $constraint->aspectRatio();
                })->save($this->folderThumbnail.'/'.$fileName);
                $file->move($this->folderImage, $fileName);
                $game->cover = $fileName;
            }
            $game->save();
            return $this->onSuccess("Data Game Berhasil Diupdate", $game);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Game  $game
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $game = Game::find($id);
            unlink($this->folderImage.'/'.$game->cover);
            unlink($this->folderLogo.'/'.$game->logo);
            unlink($this->folderThumbnail.'/'.$game->cover);
            $game->delete();
            return $this->onSuccess("Data Game Berhasil Dihapus", null);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }
}
