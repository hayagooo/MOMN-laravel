<?php

namespace App\Http\Controllers;

use App\Models\Category_partner;
use Illuminate\Http\Request;

class CategoryPartnerController extends Controller
{

    public $ctr;

    public function __construct(Category_partner $category)
    {
        $this->ctr = $category;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $category = $this->ctr->all();
        return $this->onSuccess("Category Partner Ditemukan", $category);
    }

    public function pagination($page)
    {
        $category = $this->ctr->paginate($page);
        return $this->onSuccess("Category Partner Ditemukan", $category);
    }

    public function search(Request $request)
    {
        if($request->has('name')) {
            $q = $this->ctr->query();
            if($request->name != null && $request->name != '') {
                $ctr = $q->where('name', 'LIKE', '%'.$request->name.'%')->get();
            }
        } else {
            $ctr = $this->ctr->all();
        }
        return $this->onSuccess("Category Partner Ditemukan", $ctr);
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
            $category = $this->ctr->create($request->all());
            return $this->onSuccess("Category Partner Berhasil Ditambahkan", $category);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Category_partner  $category_partner
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $category = $this->ctr->find($id);
        return $this->onSuccess("Category Partner Ditemukan", $category);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Category_partner  $category_partner
     * @return \Illuminate\Http\Response
     */
    public function edit(Category_partner $category_partner)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Category_partner  $category_partner
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $category = $this->ctr->where('id', $id)->update($request->all());
            $mCategory = $this->ctr->find($id);
            return $this->onSuccess("Category Partner Diupdate", $mCategory);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Category_partner  $category_partner
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $category = $this->ctr->destroy($id);
            return $this->onSuccess("Category Partner Dihapus", null);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }
}
