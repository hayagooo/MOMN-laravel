<?php

use App\Http\Controllers\BlogController;
use App\Http\Controllers\BussinessController;
use App\Http\Controllers\CategoryBlogController;
use App\Http\Controllers\CategoryGameController;
use App\Http\Controllers\CategoryPartnerController;
use App\Http\Controllers\CategoryPromoController;
use App\Http\Controllers\GameController;
use App\Http\Controllers\PartnerController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\PricingGameController;
use App\Http\Controllers\PromoController;
use App\Http\Controllers\TagBlogController;
use App\Http\Controllers\TestimoniController;
use App\Http\Controllers\TransactionGameController;
use App\Http\Controllers\UserController;
use App\Models\Bussiness;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
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

Route::group(['middleware' => ['cors', 'json.response', 'auth:api']], function () {
    Route::resource('admin/user', UserController::class);
    Route::get('auth/user', [UserController::class, 'getAuth']);
    Route::post('user/{apiToken}/topup', [UserController::class, 'addSaldo']);
    Route::get('user/topup', [UserController::class, 'getTopup']);
    Route::post('user/{token}/update', [UserController::class, 'update']);
    Route::post('user/{token}/update/password', [UserController::class, 'update']);
    Route::post('user/{token}/payments', [PaymentController::class, 'store']);
    Route::get('user/payments', [UserController::class, 'getPayments']);
    Route::post('user/q/search', [UserController::class, 'search']);
    Route::resource('user/business', BussinessController::class);
    Route::post('user/q/business', [BussinessController::class, 'search']);
});
Route::group(['middleware' => ['cors', 'json.response']], function () {
    Route::get('getting/data/dashboard', [PaymentController::class, 'getDashboard']);
    // Auth
    Route::post('user/{id}/upload', [UserController::class, 'uploadImage']);
    Route::post('user/{id}/verify', [UserController::class, 'verifyEmailToken']);
    Auth::routes(['verify' => true]);
    Route::post('request/reset/password', [UserController::class, 'requestResetPassword']);
    Route::post('reset/{token}/password', [UserController::class, 'resetPassword']);
    Route::post('signup', [UserController::class, 'register']);
    Route::post('signin', [UserController::class, 'login']);
    // Social Login
    Route::post('socialLogin/{provider}', [UserController::class, 'socialSignup']);
    Route::get('auth/{provider}/callback', [UserController::class, 'socialIndex'])->where('provider', '.*');

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
    // Testimoni
    Route::resource('testimoni', TestimoniController::class);
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
    Route::post('transaction/game/verify', [TransactionGameController::class, 'verify']);
    Route::post('transaction/game/{id}/sendEmail', [TransactionGameController::class, 'sendEmail']);
    // Partner
    Route::post('partner/q/', [PartnerController::class, 'search']);
    Route::post('category/partner/q/', [CategoryPartnerController::class, 'search']);
    // Promo
    Route::post('promo/q/', [PromoController::class, 'search']);
    Route::post('category/promo/q/', [CategoryPromoController::class, 'search']);
    // Testimoni
    Route::post('testimoni/q/', [TestimoniController::class, 'search']);
    // Searching //

    // relation many to many
    Route::post('blog/add/tags', [BlogController::class, 'addTags']);
    Route::post('tag/add/blogs', [TagBlogController::class, 'addBlog']);

    // Pagination //
    // Blog
    Route::get('blog/paginate/{page}', [BlogController::class, 'pagination']);
    Route::post('blog/q/paginate/{page}', [BlogController::class, 'searchPaginate']);
    Route::get('category/blog/paginate/{page}', [CategoryBlogController::class, 'pagination']);
    Route::get('tags/blog/paginate/{page}', [TagBlogController::class, 'pagination']);
    // Game
    Route::get('game/paginate/{page}', [GameController::class, 'pagination']);
    Route::get('category/game/paginate/{page}', [CategoryGameController::class, 'pagination']);
    Route::post('game/q/paginate/{page}', [GameController::class, 'searchPaginate']);
    Route::get('game/not/popular/{page}', [GameController::class, 'notPopular']);
    Route::get('price/game/paginate/{page}', [PricingGameController::class, 'pagination']);
    Route::get('transaction/game/paginate/{page}', [TransactionGameController::class, 'pagination']);
    // Partner
    Route::get('partner/paginate/{page}', [PartnerController::class, 'pagination']);
    Route::get('category/partner/paginate/{page}', [CategoryPartnerController::class, 'pagination']);
    // Promo
    Route::get('promo/paginate/{page}', [PromoController::class, 'pagination']);
    Route::post('promo/q/paginate/{page}', [PromoController::class, 'searchPaginate']);
    Route::get('category/promo/paginate/{page}', [CategoryPromoController::class, 'pagination']);
    // Testimoni
    Route::get('testimoni/paginate/{page}', [TestimoniController::class, 'pagination']);

    // Others
    // addViewer to blog
    Route::post('blog/{id}/addViewer', [BlogController::class, 'addViewer']);
    // Most Popular blog
    Route::get('blog/most/popular', [BlogController::class, 'mostPopular']);
});
