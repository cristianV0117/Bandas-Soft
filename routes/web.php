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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

// Routes Musicians //
Route::get('/makeMusicianView', 'CreateMusician@makeMusicianView')->name('MusicianView');
Route::post('/makeMusician', 'CreateMusician@makeMusician')->name('Musician');
Route::get('/makeMusician/getMusicians','CreateMusician@getMusicians')->name('getMusicians');
Route::post('/makeMusician/deleteMusician','CreateMusician@deleteMusician');

// Routes instrument //
Route::get('/instrument/getInstrumentsList','adminInstruments@getInstrumentsList')->name('getInstrumentsListView');
Route::post('/instrument/insertInstrument','adminInstruments@insertInstrument')->name('insertInstrument');
Route::post('/instrument/deleteInstrument','adminInstruments@deleteInstrument');
Route::post('/instrument/editInstrument','adminInstruments@editInstrument');

//Routes Genres //
Route::get('/genre/getGenres','adminGenres@getGenresList')->name('getGenresView');
Route::post('/genre/insertGenre','adminGenres@insertGenre')->name('insertGenre');
Route::post('/genre/deleteGenre','adminGenres@deleteGenre');
Route::post('/genre/editGenre','adminGenres@editGenre');

//Route RecordCompanies //

Route::get('/recordCompany/makeRecordCompany','adminRecordCompany@makeRecordCompany')->name('makeRecordCompany');
Route::post('/recordCompany/insertRecordCompany','adminRecordCompany@insertRecordCompany')->name('insertRecordCompany');
Route::post('/recordCompany/deleteRecordCompany','adminRecordCompany@deleteRecordCompany');

//route of typeOfMusicalProductions //

Route::get('/typeOfMusicalP/getViewTypeOfMusical','adminTypeOfMusicalP@getViewTypeOfMusical')->name('getViewTypeOfMusical');
Route::post('/typeOfMusicalP/deleteTypeOf','adminTypeOfMusicalP@deleteTypeOf');

//Route of list Countrys//

Route::get('/country/getListCountrys','adminCountries@getListCountrys')->name('getListCountrys');
//Route of bands// 
Route::get('/band/createBand','admindBands@createBand')->name('createBand');
Route::post('/band/registerBand','admindBands@registerBand')->name('registerBand');
Route::get('/band/getInfoBand','admindBands@getInfoBand')->name('getInfoBand');
Route::get('/band/getIndiBand/{id}','admindBands@getIndiBand');
Route::post('/band/deleteBand','admindBands@deleteBand');
Route::post('/band/editBand','admindBands@editBand');
Route::post('/band/deleteGenreBand','admindBands@deleteGenreBand');
//test//

Route::get('/excelTest/getExcel','excelTest@getExcel')->name('getExcel');
Route::post('/excel/sendExcel','excelTest@sendExcel')->name('sendExcel');
Route::post('/excel/sendCampa','excelTest@sendCampa')->name('sendCampa');

