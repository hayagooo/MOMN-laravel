<?php

namespace App\Http\Controllers;

use App\Models\Category_promo;
use Illuminate\Http\Request;

class CategoryPromoController extends Controller
{

    public $ctr;

    public function __construct(Category_promo $category_promo)
    {
        $this->ctr = $category_promo;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $category_promo = $this->ctr->all();
        return $this->onSuccess("Category Promo Ditemukan", $category_promo);
    }

    public function pagination($page)
    {
        $category_promo = $this->ctr->paginate($page);
        return $this->onSuccess("Category Promo Ditemukan", $category_promo);
    }

    public function search(Request $request)
    {
        if($request->has('name')) {
            $q = $this->ctr->query();
            if($request->name != '' && $request->name != null) {
                $category_promo = $q->where('name', 'LIKE', '%'.$request->name.'%');
            }
        } else {
            $category_promo = $this->ctr->all();
        }
        return $this->onSuccess("Category Promo Ditemukan", $category_promo);
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
            $category_promo = $this->ctr->create($request->all());
            return $this->onSuccess("Category Promo Ditambahkan", $category_promo);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Category_promo  $category_promo
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $category_promo = $this->ctr->find($id);
        $promo = $category_promo->Promo;
        return $this->onSuccess("Category Promo Ditemukan", $category_promo);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Category_promo  $category_promo
     * @return \Illuminate\Http\Response
     */
    public function edit(Category_promo $category_promo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Category_promo  $category_promo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $category_promo = $this->ctr->where('id', $id)->update($request->all());
            $mCategory = $this->ctr->find($id);
            return $this->onSuccess("Category Promo Diupdate", $mCategory);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Category_promo  $category_promo
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $category_promo = $this->ctr->destroy($id);
            return $this->onSuccess("Category Promo Dihapus", null);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }
}
