<?php

namespace App\Http\Controllers;

use App\Models\Promo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;

class PromoController extends Controller
{
    public $folderBanner;
    public $folderThumbnail;
    public $dimenThumbnail;

    public function __construct()
    {
        $this->folderBanner = public_path().'/images/promo';
        $this->folderThumbnail = public_path().'/images/promo/thumbnail';
        $this->dimenThumbnail = 100;
    }

    public function search(Request $request)
    {
        if($request->has('title') || $request->has('category')) {
            $q = Promo::query();
            if($request->title != '' && $request->title != null) {
                $promo = $q->where('title', 'LIKE', '%'.$request->title.'%')->get();
            }
            if($request->category != '' && $request->category != null) {
                $promo = $q->where('id_category', $request->category)->get();
            }
        } else {
            $promo = Promo::all();
        }
        return $this->onSuccess("Promo Ditemukan", $promo);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $promo = Promo::all();
        return $this->onSuccess("Promo Ditemukan", $promo);
    }

    public function pagination($page)
    {
        $promo = Promo::paginate($page);
        return $this->onSuccess("Promo Ditemukan", $promo);
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
                'banner' => 'image|mimes:jpg,png,jpeg'
            ]);
            $promo = new Promo();
            $promo->title = $request->title;
            $promo->description = $request->description;
            $promo->id_category = $request->category;
            // if($request->hasFile('banner')) {
            if(!File::isDirectory($this->folderThumbnail)) {
                File::makeDirectory($this->folderThumbnail, $mode=0777, true, true);
            }
            if(!File::isDirectory($this->folderBanner)) {
                File::makeDirectory($this->folderBanner, $mode=0777, true, true);
            }
            $file = $request->file('banner');
            $fileName = 'promoBanner'.time().'.'.$file->extension();
            $img = Image::make($file->path());
            $img->resize($this->dimenThumbnail, $this->dimenThumbnail, function($constraint) {
                $constraint->aspectRatio();
            })->save($this->folderThumbnail.'/'.$fileName);
            $file->move($this->folderBanner, $fileName);
            $promo->banner = $fileName;
            // }
            $promo->save();
            return $this->onSuccess("Promo Ditambahkan", $promo);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Promo  $promo
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $promo = Promo::find($id);
        $category = $promo->Category;
        return $this->onSuccess("Promo Ditemukan", $promo);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Promo  $promo
     * @return \Illuminate\Http\Response
     */
    public function edit(Promo $promo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Promo  $promo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $this->validate($request, [
                'banner' => 'image|mimes:jpg,jpeg,png'
            ]);
            $promo = Promo::find($id);
            $promo->title = $request->title;
            $promo->description = $request->description;
            $promo->id_category = $request->category;
            if($request->hasFile('banner')) {
                if(!File::isDirectory($this->folderBanner)) {
                    File::makeDirectory($this->folderBanner, $mode=0777, true, true);
                }
                if(!File::isDirectory($this->folderThumbnail)) {
                    File::makeDirectory($this->folderThumbnail, $mode=0777, true, true);
                }
                unlink($this->folderBanner.'/'.$promo->banner);
                unlink($this->folderThumbnail.'/'.$promo->banner);
                $file = $request->file('banner');
                $fileName = 'promoBanner'.time().'.'.$file->extension();
                $img = Image::make($file->path());
                $img->resize($this->dimenThumbnail, $this->dimenThumbnail, function($constraint) {
                    $constraint->aspectRatio();
                })->save($this->folderThumbnail.'/'.$fileName);
                $file->move($this->folderBanner, $fileName);
                $promo->banner = $fileName;
            }
            $promo->save();
            return $this->onSuccess("Promo Diupdate", $promo);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Promo  $promo
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $promo = Promo::find($id);
            unlink($this->folderBanner.'/'.$promo->banner);
            unlink($this->folderThumbnail.'/'.$promo->banner);
            $promo->delete();
            return $this->onSuccess("Promo Dihapus", null);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }
}
