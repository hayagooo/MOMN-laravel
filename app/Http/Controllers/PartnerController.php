<?php

namespace App\Http\Controllers;

use App\Models\Partner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;

class PartnerController extends Controller
{

    public $folderLogo;
    public $dimenLogo;

    public function __construct()
    {
        $this->folderLogo = public_path().'/images/partner';
        $this->dimenLogo = 150;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $partner = Partner::all();
        return $this->onSuccess("Partner Ditemukan", $partner);
    }

    public function search(Request $request)
    {
        if($request->has('name') || $request->has('category')) {
            $q = Partner::query();
            if($request->name != null && $request->name != '') {
                $partner = $q->where('name', 'LIKE', '%'.$request->name.'%')->get();
            }
            if($request->category != null && $request->category != '') {
                $partner = $q->where('id_category', $request->category)->get();
            }
        } else {
            $partner = Partner::all();
        }
        return $this->onSuccess("Partner Ditemukan", $partner);
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
                'logo' => 'image|mimes:jpg,png,jpeg'
            ]);
            $partner = new Partner();
            $partner->name = $request->name;
            $partner->id_category = $request->category;
            // if($request->hasFile('logo')) {
            if(!File::isDirectory($this->folderLogo)) {
                File::makeDirectory($this->folderLogo);
            }
            $file = $request->file('logo');
            $fileName = "partnerLogo".time().'.'.$file->extension();
            $img = Image::make($file->path());
            $img->resize($this->dimenLogo, $this->dimenLogo, function($constraint) {
                $constraint->aspectRatio();
            })->save($this->folderLogo.'/'.$fileName);
            $partner->logo = $fileName;
            // }
            $partner->save();
            return $this->onSuccess("Partner Telah Ditambahkan", $partner);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Partner  $partner
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $partner = Partner::find($id);
        $category = $partner->Category;
        return $this->onSuccess("Partner Ditemukan", $partner);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Partner  $partner
     * @return \Illuminate\Http\Response
     */
    public function edit(Partner $partner)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Partner  $partner
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $this->validate($request, [
                'logo' => 'image|mimes:jpg,jpeg,png'
            ]);
            $partner = Partner::find($id);
            $partner->name = $request->name;
            $partner->id_category = $request->category;
            if($request->hasFile('logo')) {
                unlink($this->folderLogo.'/'.$partner->logo);
                if(!File::isDirectory($this->folderLogo)) {
                    File::makeDirectory($this->folderLogo);
                }
                $file = $request->file('logo');
                $fileName = 'partnerLogo'.time().'.'.$file->extension();
                $img = Image::make($file->path());
                $img->resize($this->dimenLogo, $this->dimenLogo, function($constraint) {
                    $constraint->aspectRatio();
                })->save($this->folderLogo.'/'.$fileName);
                $partner->logo = $fileName;
            }
            $partner->save();
            return $this->onSuccess("Partner Diupdate", $partner);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Partner  $partner
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $partner = Partner::find($id);
            unlink($this->folderLogo.'/'.$partner->logo);
            $partner->delete();
            return $this->onSuccess("Partner Dihapus", null);
        } catch (\Exception $e) {
            return $this->exception($e);
        }
    }
}
