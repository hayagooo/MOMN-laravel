<?php

namespace App\Http\Controllers;

use App\Models\Testimoni;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;

class TestimoniController extends Controller
{

    public $path;
    public $dimen;
    public $dimenPng;

    public function __construct()
    {
        $this->path = public_path().'/images/testimoni';
        $this->dimen = 500;
        $this->dimenPng = 400;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $test = Testimoni::all();
        return $this->onSuccess("Testimoni Ditemukan", $test);
    }

    public function pagination($page)
    {
        $test = Testimoni::paginate($page);
        return $this->onSuccess("Testimoni Ditemukan", $test);
    }

    public function search(Request $request)
    {
        if($request->has('name') || $request->has('level')) {
            $q = Testimoni::query();
            if($request->name != null && $request->name != '') {
                $test = $q->where('name', 'LIKE', '%'.$request->name.'%')->get();
            }
            if($request->level != null && $request->level != '') {
                $test = $q->where('level', $request->level)->get();
            }
        } else {
            $test = Testimoni::all();
        }
        return $this->onSuccess("Testimoni Ditemukan", $test);
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
                'photo' => 'image|mimes:jpg,png,jpeg',
                'photo_png' => 'image|mimes:png',
            ]);
            $test = new Testimoni();
            $test->name = $request->name;
            $test->age = $request->age;
            $test->caption = $request->caption;
            $test->profession = $request->profession;
            $test->level = $request->level;
            // if($request->hasFile('photo')) {
            if(!File::isDirectory($this->path)) {
                File::makeDirectory($this->path);
            }
            $file = $request->file('photo');
            $fileName = "personTestimoni".time().'.'.$file->extension();
            $img = Image::make($file->path());
            $img->resize($this->dimen, $this->dimen, function($contraint) {
                $contraint->aspectRatio();
            })->save($this->path.'/'.$fileName);
            $test->photo = $fileName;
            // }
            if($request->hasFile('photo_png')) {
                $filePng = $request->file('photo_png');
                $fileNamePng = "FilePng".time().'.'.$filePng->extension();
                $imgPng = Image::make($filePng->path());
                $imgPng->resize($this->dimenPng, $this->dimenPng, function($contraint) {
                    $contraint->aspectRatio();
                })->save($this->path.'/'.$fileNamePng);
                $test->photo_png = $fileNamePng;
            }
            $test->save();
            return $this->onSuccess("Testimoni Ditambahkan", $test);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Testimoni  $testimoni
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $test = Testimoni::find($id);
        return $this->onSuccess("Testimoni Ditemukan", $test);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Testimoni  $testimoni
     * @return \Illuminate\Http\Response
     */
    public function edit(Testimoni $testimoni)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Testimoni  $testimoni
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $this->validate($request, [
                'photo' => 'image|mimes:jpeg,jpg,png',
                'photo_png' => 'image|mimes:png',
            ]);
            $test = Testimoni::find($id);
            $test->name = $request->name;
            $test->age = $request->age;
            $test->caption = $request->caption;
            $test->profession = $request->profession;
            $test->level = $request->level;
            if($request->hasFile('photo')) {
                if(!File::isDirectory($this->path)) {
                    File::makeDirectory($this->path);
                }
                unlink($this->path.'/'.$test->photo);
                $file = $request->file('photo');
                $fileName = 'personTestimoni'.time().'.'.$file->extension();
                $img = Image::make($file->path());
                $img->resize($this->dimen, $this->dimen, function($contraint) {
                    $contraint->aspectRatio();
                })->save($this->path.'/'.$fileName);
                $test->photo = $fileName;
            }
            if($request->hasFile('photo_png')) {
                $filePng = $request->file($this->path);
                $fileNamePng = "FilePng".time().'.'.$filePng->extension();
                $imgPng = Image::make($filePng->path());
                $imgPng->resize($this->dimenPng, $this->dimenPng, function($contraint) {
                    $contraint->aspectRatio();
                })->save($this->path.'/'.$fileNamePng);
                $test->photo_png = $fileNamePng;
            }
            $test->save();
            return $this->onSuccess("Testimoni Diupdate", $test);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Testimoni  $testimoni
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $test = Testimoni::find($id);
            unlink($this->path.'/'.$test->photo);
            $test->delete();
            return $this->onSuccess("Testimoni Dihapus", null);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }
}
