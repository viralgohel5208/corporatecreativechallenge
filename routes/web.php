<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/', [App\Http\Controllers\HomeController::class, 'index']);

Route::get('/account', [App\Http\Controllers\Auth\LoginController::class,'showLoginForm'])->name('account'); 

Route::get('/prize', [App\Http\Controllers\HomeController::class, 'prizes'])->name('prize');
Route::get('/how-it-works', [App\Http\Controllers\HomeController::class, 'howitworks'])->name('how-it-works');

Route::get('/road-map', [App\Http\Controllers\HomeController::class, 'roadmap'])->name('road-map');
Route::get('/our-categories', [App\Http\Controllers\HomeController::class, 'ourcategories'])->name('our-categories');

Route::get('/contact-us', [App\Http\Controllers\ContactsController::class, 'createForm'])->name('contact-us');
Route::post('/contact-us', [App\Http\Controllers\ContactsController::class, 'ContactUsForm'])->name('contact-us.store');

Route::get('/faq', [App\Http\Controllers\HomeController::class, 'faq'])->name('faq');

Route::get('/privacy-policy', [App\Http\Controllers\HomeController::class, 'privacyPolicy'])->name('privacy-policy');
Route::get('/terms-conditions', [App\Http\Controllers\HomeController::class, 'termsConditions'])->name('terms-conditions');

//Auth::routes();

Route::group([ 'middleware' => array('auth','verify_email')], function () {

   // Route::group(['middleware' => ['verified']], function() {

    Route::get('/home', [App\Http\Controllers\UserController::class, 'index'])->name('home');
     
    Route::get('/user/editprofile', [App\Http\Controllers\UserController::class, 'editProfile'])->name('user-edit-profile');
    Route::post('/userInfoStore',[App\Http\Controllers\UserController::class,'accountInfoStore'])->name('user.info.store');
    Route::post('/userPassworsStore',[App\Http\Controllers\UserController::class,'changePasswordStore'])->name('user.password.store');
    Route::post('/userLinkStore',[App\Http\Controllers\UserController::class,'accountLinkStore'])->name('user.info.link');

    //});

});

Route::get('/corporate-admin',[App\Http\Controllers\Auth\AdminLoginController::class,'showAdminLoginForm'])->name('admin.login-view');
Route::get('/corporate-admin/login',[App\Http\Controllers\Auth\AdminLoginController::class,'showAdminLoginForm'])->name('admin.login-view');
Route::post('/corporate-admin/login',[App\Http\Controllers\Auth\AdminLoginController::class,'adminLogin'])->name('admin.login');

Route::group(['prefix' => 'corporate-admin','middleware' => 'auth:admin'], function () { 
    
    Route::get('/dashboard', [App\Http\Controllers\admin\HomeController::class, 'index'])->name('dashboard');

    Route::get('/pages', [App\Http\Controllers\admin\PagesController::class, 'page'])->name('pages');
    Route::get('/page/{id}',[App\Http\Controllers\admin\PagesController::class, 'pageEdit'])->name('editpage');
    Route::post('/page/{id}',[App\Http\Controllers\admin\PagesController::class, 'pageUpdate'])->name('updatepage');


    Route::get('/users', [App\Http\Controllers\admin\HomeController::class, 'users'])->name('users');
    Route::get('/getAjaexUser', [App\Http\Controllers\admin\HomeController::class, 'getAjaexUser'])->name('getAjaexUser');

    Route::post('/user-statuschange', [App\Http\Controllers\admin\HomeController::class, 'userstatuschange'])->name('user-statuschange');
    Route::post('/user-changeActive', [App\Http\Controllers\admin\HomeController::class, 'userchangeActive'])->name('user-changeActive');
    
    Route::get('/user-view/{id}', [App\Http\Controllers\admin\HomeController::class, 'userView'])->name('user.view');
    Route::get('/user-edit/{id}', [App\Http\Controllers\admin\HomeController::class, 'userEdit'])->name('user.edit');
    Route::post('/user-update', [App\Http\Controllers\admin\HomeController::class, 'userUpdate'])->name('user.update');
    Route::post('/user-destroy/{id}', [App\Http\Controllers\admin\HomeController::class, 'userDestroy'])->name('user.destroy');

    Route::post('/user-export', [App\Http\Controllers\admin\HomeController::class, 'userExport'])->name('user-export');

    Route::get('/settings',  [App\Http\Controllers\admin\SettingsController::class, 'index'])->name('settings');
    Route::post('/settings', [App\Http\Controllers\admin\SettingsController::class, 'store'])->name('settings.store');

    Route::get('/faqs', [App\Http\Controllers\admin\FaqsController::class, 'index']);
    Route::post('/faqs', [App\Http\Controllers\admin\FaqsController::class, 'faqs'])->name('faqs');
    Route::get('/faqsEdit/{id}', [App\Http\Controllers\admin\FaqsController::class, 'edit'])->name('faqs.edit');
    Route::post('/faqsDestroy/{id}', [App\Http\Controllers\admin\FaqsController::class, 'destroy'])->name('faqs.destroy');

    Route::get('/contacts', [App\Http\Controllers\admin\ContactsController::class, 'contacts'])->name('contacts');
    Route::get('/getContacts', [App\Http\Controllers\admin\ContactsController::class, 'getContacts'])->name('getContacts');
    Route::get('/contacts/{id}', [App\Http\Controllers\admin\ContactsController::class, 'destroy'])->name('contacts.destroy');

    Route::get('/company', [App\Http\Controllers\admin\CompanyController::class, 'index']);
    Route::get('/addcompany', [App\Http\Controllers\admin\CompanyController::class, 'addcompany'])->name('addcompany');
    Route::get('/companyEdit/{id}', [App\Http\Controllers\admin\CompanyController::class, 'edit'])->name('company.edit');
    Route::post('/company', [App\Http\Controllers\admin\CompanyController::class, 'company'])->name('company');
    Route::post('/companyDestroy/{id}', [App\Http\Controllers\admin\CompanyController::class, 'destroy'])->name('company.destroy');

    Route::get('/roadmaps', [App\Http\Controllers\admin\RoadmapsController::class, 'index']);
    Route::post('/roadmaps', [App\Http\Controllers\admin\RoadmapsController::class, 'roadmaps'])->name('roadmaps');
    Route::get('/roadmapsEdit/{id}', [App\Http\Controllers\admin\RoadmapsController::class, 'edit'])->name('roadmaps.edit');
    Route::post('/roadmapsDestroy/{id}', [App\Http\Controllers\admin\RoadmapsController::class, 'destroy'])->name('roadmaps.destroy');
    
    Route::get('/prizes', [App\Http\Controllers\admin\PrizesController::class, 'index']);
    Route::get('/addprizes', [App\Http\Controllers\admin\PrizesController::class, 'addprizes'])->name('addprizes');
    Route::post('/prizes', [App\Http\Controllers\admin\PrizesController::class, 'prizes'])->name('prizes');
    Route::get('/prizesEdit/{id}', [App\Http\Controllers\admin\PrizesController::class, 'edit'])->name('prizes.edit');
    Route::post('/prizesDestroy/{id}', [App\Http\Controllers\admin\PrizesController::class, 'destroy'])->name('prizes.destroy');

});