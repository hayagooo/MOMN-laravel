<?php

namespace App\Http\Controllers;

use App\Models\Category_game;
use Illuminate\Http\Request;

class CategoryGameController extends Controller
{

    private $category;

    public function __construct(Category_game $category)
    {
        $this->category = $category;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $category = $this->category->paginate(10);
        return $this->onSuccess("Category Game Ditemukan", $category);
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
            $category = $this->category->create($request->all());
            return $this->onSuccess("Category Game Berhasil Ditambahkan", $category);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Category_game  $category_game
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $category = $this->category->find($id);
        return $this->onSuccess("Category Game Ditemukan", $category);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Category_game  $category_game
     * @return \Illuminate\Http\Response
     */
    public function edit(Category_game $category_game)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Category_game  $category_game
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $category = $this->category->where('id', $id)->update($request->all());
            $mCategory = $this->category->find($id);
            return $this->onSuccess("Category Game Behasil Diupdate", $mCategory);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Category_game  $category_game
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $category = $this->category->destroy($id);
            return $this->onSuccess("Category Game Berhasil Dihapus", $category);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }
}
