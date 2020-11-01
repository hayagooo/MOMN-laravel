<?php

use App\Http\Controllers\BlogController;
use App\Http\Controllers\CategoryBlogController;
use App\Http\Controllers\CategoryGameController;
use App\Http\Controllers\CategoryPartnerController;
use App\Http\Controllers\CategoryPromoController;
use App\Http\Controllers\GameController;
use App\Http\Controllers\PartnerController;
use App\Http\Controllers\PricingGameController;
use App\Http\Controllers\PromoController;
use App\Http\Controllers\TagBlogController;
use App\Http\Controllers\TransactionGameController;
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


// Crud //
// Blog
Route::resource('blog', BlogController::class);
Route::resource('tags/blog', TagBlogController::class);
Route::resource('category/blog', CategoryBlogController::class);
// Game
Route::resource('game', GameController::class);
Route::resource('price/game', PricingGameController::class);
Route::resource('category/game', CategoryGameController::class);
Route::resource('transaction/game', TransactionGameController::class);
// Partner
Route::resource('partner', PartnerController::class);
Route::resource('category/partner', CategoryPartnerController::class);
// Promo
Route::resource('promo', PromoController::class);
Route::resource('category/promo', CategoryPromoController::class);
// End Crud //

// Searching //
// Blog
Route::post('blog/q/', [BlogController::class, 'search']);
Route::post('category/blog/q/', [CategoryBlogController::class, 'search']);
Route::post('tags/blog/q/', [TagBlogController::class, 'search']);
// Game
Route::post('game/q/', [GameController::class, 'search']);
Route::post('category/game/q/', [CategoryGameController::class, 'search']);
Route::post('price/game/q/', [PricingGameController::class, 'search']);
Route::post('transaction/game/q/', [TransactionGameController::class, 'search']);
// Partner
Route::post('partner/q/', [PartnerController::class, 'search']);
Route::post('category/partner/q/', [CategoryPartnerController::class, 'search']);
// Promo
Route::post('promo/q/', [PromoController::class, 'search']);
Route::post('categeory/promo/q/', [CategoryPromoController::class, 'search']);
// Searching //

// relation many to many
Route::post('blog/add/tags', [BlogController::class, 'addTags']);
Route::post('tag/add/blogs', [TagBlogController::class, 'addBlog']);
