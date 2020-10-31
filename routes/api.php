<?php

use App\Http\Controllers\BlogController;
use App\Http\Controllers\CategoryBlogController;
use App\Http\Controllers\TagBlogController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('blog', BlogController::class);
Route::resource('blog/tags', TagBlogController::class);
Route::resource('blog/category', CategoryBlogController::class);

// searching
Route::post('blog/q/', [BlogController::class, 'search']);

// relation
Route::post('blog/add/tags', [BlogController::class, 'addTags']);
Route::post('tag/add/blogs', [TagBlogController::class, 'addBlog']);
