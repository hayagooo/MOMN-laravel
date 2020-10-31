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
        $tags = $this->tag->paginate(6);
        return response()->json([
            'status' => 'success',
            'data' => $tags
        ]);
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
            return response()->json([
                'status' => 'success',
                'message' => 'Tags berhasil ditambahkan',
                'data' => $tag
            ]);
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
        return response()->json([
            'status' => 'success',
            'data' => $tag,
        ]);
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
            return response()->json([
                'status' => 'success',
                'message' => 'Tags berhasil diupdate',
                'data' => $mTag
            ]);
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
            return response()->json([
                'status' => 'success',
                'message' => 'Tags berhasil dihapus',
            ]);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }
}