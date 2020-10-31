<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use GuzzleHttp\Exception\ClientException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;

class BlogController extends Controller
{

    public $folderThumbnail;
    public $folderPath;
    public $fileDimen;

    public function __construct()
    {
        $this->folderThumbnail = public_path().'/images/blog/thumbnails';
        $this->folderPath = public_path().'/images/blog';
        $this->fileDimen = 100;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // $q = Blog::query();
        // if($request->has('title')) {
        //     $q->where('title', 'like', $request->get('title'));
        // }
        // if($request->has('category')) {
        //     $q->where('id_category', $request->get('category'));
        // }
        $blog = Blog::paginate(9);
        return $this->onSuccess("Data Blog Ditemukan", $blog);
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
            'banner' => 'image|mimes:jpeg,png,jpg,svg',
            'title' => 'required',
            'description' => 'required',
        ]);
        try {
            $blog = new Blog();
            $blog->title = $request->title;
            $blog->description = $request->description;
            $blog->id_category = $request->category;
            // if($request->hasFile('banner')) {
                if(!File::isDirectory($this->folderThumbnail)) {
                    File::makeDirectory($this->folderThumbnail, $mode = 0777, true, true);
                }
                if(!File::isDirectory($this->folderPath)) {
                    File::makeDirectory($this->folderPath, $mode = 0777, true, true);
                }
                $file = $request->file('banner');
                $filename = time().'.'.$file->extension();
                $img = Image::make($file->path());
                $img->resize($this->fileDimen, $this->fileDimen, function($constraint) {
                    $constraint->aspectRatio();
                })->save($this->folderThumbnail.'/'.$filename);
                $file->move($this->folderPath, $filename);
            // }
            $blog->banner = $filename;
            $blog->save();
            return $this->onSuccess("Blog berhasil ditambahkan", $blog);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $blog = Blog::find($id);
        return $this->onSuccess("Blog ditemukan", $blog);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function edit(Blog $blog)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $blog = Blog::find($id);
            $blog->title = $request->title;
            $blog->description = $request->description;
            $blog->id_category = $request->category;
            if($request->hasFile('banner')) {
                if(!File::isDirectory($this->folderThumbnail)) {
                    File::makeDirectory($this->folderThumbnail);
                }
                if(!File::isDirectory($this->folderPath)) {
                    File::makeDirectory($this->folderPath);
                }
                $file = $request->file('banner');
                $filename = time().'.'.$file->extension();
                $img = Image::make($file->path());
                $img->resize($this->fileDimen, $this->fileDimen, function($constraint) {
                    $constraint->aspectRatio();
                })->save($this->folderThumbnail.'/'.$filename);
                $file->move($this->folderPath, $filename);
                unlink($this->folderPath.'/'.$blog->banner);
                unlink($this->folderThumbnail.'/'.$blog->banner);
                $blog->banner = $filename;
            }
            $blog->save();
            return $this->onSuccess("Blog berhasil diupdate", $blog);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $blog = Blog::find($id);
            $blog->delete();
            unlink($this->folderPath.'/'.$blog->banner);
            unlink($this->folderThumbnail.'/'.$blog->banner);
            return $this->onSuccess("Blog berhasil dihapus", null);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

}
