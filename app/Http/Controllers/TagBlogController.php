<?php

namespace App\Http\Controllers;

use App\Models\Tag_blog;
use GuzzleHttp\Exception\ClientException;
use Illuminate\Http\Request;

class TagBlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    private $tag;

    public function __construct(Tag_blog $tag)
    {
        $this->tag = $tag;
    }

    public function index()
    {
        $tags = $this->tag->all();
        return $this->onSuccess("Tags Berhasil Ditemukan", $tags);
    }

    public function pagination($page)
    {
        $tags = $this->tag->paginate($page);
        return $this->onSuccess("Tags Berhasil Ditemukan", $tags);
    }

    public function search(Request $request)
    {
        if($request->has('name')) {
            $q = Tag_blog::query();
            if($request->name != null && $request->name != '') {
                $tag = $q->where('name', 'LIKE', "%".$request->name."%")->get();
            }
        } else {
            $tag = Tag_blog::all();
        }
        return $this->onSuccess("Tags Berhasil Ditemukan", $tag);
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
                'name' => 'required'
            ]);
            $tag = $this->tag->create($request->all());
            return $this->onSuccess("Tags Berhasil Ditambahkan", $tag);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Tag_blog  $tag_blog
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $tag = Tag_blog::find($id);
        return $this->onSuccess("Tags Berhasil Ditemukan", $tag);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Tag_blog  $tag_blog
     * @return \Illuminate\Http\Response
     */
    public function edit(Tag_blog $tag_blog)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Tag_blog  $tag_blog
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $tag = $this->tag->where('id', $id)->update($request->all());
            $mTag = Tag_blog::find($id);
            return $this->onSuccess("Tags Berhasil Diupdate", $mTag);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Tag_blog  $tag_blog
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $tag = $this->tag->destroy($id);
            return $this->onSuccess("Tags Berhasil Dihapus", null);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    public function addBlog(Request $request)
    {
        try {
            $id_blog = $request->blog;
            $id_tag = $request->tag;
            $tags = Tag_blog::find($id_tag);
            $tags->Blog()->attach($id_blog);
            return $this->onSuccess("Relasi Tags berhasil ditambahkan", $tags);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }
}
