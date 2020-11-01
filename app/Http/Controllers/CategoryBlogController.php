<?php

namespace App\Http\Controllers;

use App\Models\Category_blog;
use Illuminate\Http\Request;

class CategoryBlogController extends Controller
{

    private $category;

    public function __construct(Category_blog $category)
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
        $category = $this->category->all();
        return $this->onSuccess("Category ditemukan", $category);
    }

    public function pagination($page)
    {
        $category = $this->category->paginate($page);
        return $this->onSuccess("Category ditemukan", $category);
    }

    public function search(Request $request)
    {
        if($request->has('name')) {
            $q = Category_blog::query();
            if($request->name != null && $request->name != '') {
                $category = $q->where('name', 'LIKE', "%".$request->name."%")->get();
            }
        } else {
            $category = Category_blog::paginate(10);
        }
        return $this->onSuccess("Category Ditemukan", $category);
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
                'name' => 'required',
            ]);
            $category = new Category_blog();
            $category = $this->category->create($request->all());
            return $this->onSuccess("Category Blog Berhasil Ditambahkan", $category);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Category_blog  $category_blog
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $category = Category_blog::find($id);
        return $this->onSuccess("Category Ditemukan", $category);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Category_blog  $category_blog
     * @return \Illuminate\Http\Response
     */
    public function edit(Category_blog $category_blog)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Category_blog  $category_blog
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $this->validate($request, [
                'name' => 'required',
            ]);
            $category = $this->category->where('id', $id)->update($request->all());
            $mCategory = $this->category->find($id);
            return $this->onSuccess("Category Blog Berhasil Diupdate", $mCategory);

        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Category_blog  $category_blog
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $category = $this->category->destroy($id);
            return $this->onSuccess("Category Blog Berhasil Dihapus", null);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }
}
