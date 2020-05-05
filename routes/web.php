<?php

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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', function () {return view('welcome');})->name('labas');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/contacts', 'ContactsController@get');
Route::get('/conversation/{id}', 'ContactsController@getMessagesFor');
Route::post('/conversation/send', 'ContactsController@send');

Route::get('user/profile', 'UserProfileController@index')->name('user.profile');

Route::get('user/edit', 'UserProfileController@edit')->name('user.edit');
Route::post('user/edit', 'UserProfileController@update')->name('user.update');

Route::get('/change-password', 'Auth\ChangePasswordController@index')->name('password.change');

Route::post('/change-password', 'Auth\ChangePasswordController@changePassword')->name('password.update');

Route::post('user/profile/delete', 'UserProfileController@destroy')->name('delete');




