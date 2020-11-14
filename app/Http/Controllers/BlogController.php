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
        $this->folderThumbnail = public_path().'/images/blog/thumbnail';
        $this->folderPath = public_path().'/images/blog';
        $this->fileDimen = 400;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index(Request $request)
    {
        $blog = Blog::all();
        return $this->onSuccess("Data Blog Ditemukan", $blog);
    }

    public function searchPaginate(Request $request, $page)
    {
        if($request->has('title') || $request->has('category')) {
            $q = Blog::query();
            if($request->title != '' && $request->title != null) {
                $blog = $q->where('title', 'LIKE', "%".$request->title."%")
                            ->orderBy('id', 'DESC')
                            ->with('Category')
                            ->paginate($page);
            }
            if($request->category != '' && $request->category != null) {
                $blog = $q->where('id_category', 'LIKE', "%".$request->category."%")
                            ->with('Category')
                            ->orderBy('id', 'DESC')
                            ->paginate($page);
            }
            if(($request->category == '' && $request->category == null) && ($request->title == '' && $request->title == null)) {
                $blog = Blog::orderBy('id', 'DESC')->with('Category')->paginate($page);
            }
        } else if($request->has('tags')) {
            $blog = Blog::join('tag_blog', 'blog.id', '=', 'tag_blog.id_blog')
                        ->join('tag', 'tag.id', '=', 'tag_blog.id_tag')
                        ->where('tag.id', '=', $request->tags)
                        ->with('Tags')
                        ->distinct()
                        ->select('blog.*')
                        ->orderBy('blog.id', 'DESC')
                        ->with('Category')
                        ->paginate($page);
        } else {
            $blog = Blog::orderBy('id', 'DESC')->with('Category')->paginate($page);
        }
        return $this->onSuccess("Data Blog Ditemukan", $blog);
    }

    public function pagination($page)
    {
        $blog = Blog::with('Category')->orderBy('id', 'DESC')->paginate($page);
        return $this->onSuccess("Data Blog Ditemukan", $blog);
    }

    public function search(Request $request)
    {
        if($request->has('title') || $request->has('category')) {
            $q = Blog::query();
            if($request->title != '' && $request->title != null) {
                $blog = $q->where('title', 'LIKE', "%".$request->title."%")
                        ->orderBy('id', 'DESC')
                        ->paginate(10);
            }
            if($request->category != '' && $request->category != null) {
                $blog = $q->where('id_category', 'LIKE', "%".$request->category."%")
                        ->orderBy('id', 'DESC')
                        ->paginate(10);
            }
        } else if($request->has('tags')) {
            $blog = Blog::join('tag_blog', 'blog.id', '=', 'tag_blog.id_blog')
                        ->join('tag', 'tag.id', '=', 'tag_blog.id_tag')
                        ->where('tag.id', '=', $request->tags)
                        ->with('Tags')
                        ->distinct()
                        ->select('blog.*', 'tag.*')
                        ->orderBy('blog.id', 'DESC')
                        ->paginate(10);
        } else {
            $blog = Blog::orderBy('id', 'DESC')->paginate(10);
        }
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

    public function addViewer($id)
    {
        $blog = Blog::find($id);
        $viewers = $blog->viewer;
        $blog->viewer = $viewers + 1;
        $blog->save();
        return $this->onSuccess('Viewer betambah satu', $blog);
    }

    public function mostPopular()
    {
        $blog = Blog::where('viewer', '!=', 0)->orderBy('viewer', 'DESC')->paginate(3);
        return $this->onSuccess("Data Blog Terpopuler Ditemukan", $blog);
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
        $category = $blog->Category;
        $tags = $blog->Tags;
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
        $this->validate($request, [
            'banner' => 'image|mimes:jpeg,jpg,png,svg',
            'title' => 'required',
            'description' => 'required',
        ]);
        try {
            $blog = Blog::find($id);
            $blog->title = $request->title;
            $blog->description = $request->description;
            $blog->id_category = $request->category;
            if($request->hasFile('banner')) {
                unlink($this->folderPath.'/'.$blog->banner);
                unlink($this->folderThumbnail.'/'.$blog->banner);
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
            unlink($this->folderPath.'/'.$blog->banner);
            unlink($this->folderThumbnail.'/'.$blog->banner);
            $blog->delete();
            return $this->onSuccess("Blog berhasil dihapus", null);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    public function addTags(Request $request)
    {
        try {
            $id_blog = $request->blog;
            $id_tag = $request->tag;
            $blog = Blog::with('Tags')->find($id_blog);
            $blog->Tags()->attach($id_tag);
            return $this->onSuccess("Relasi berhasil ditambahkan", $blog);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }
}
