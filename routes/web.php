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

/************************************/
/*         MANTENEDORES             */
/************************************/
//CAMBIA VISTA LOGIN COMO INICIO DE SITIO
Route::get('/', 'Auth\LoginController@showLoginForm')->name('login');

//RUTAS DE USUARIO LARAVEL
Auth::routes();

//RUTA DE VISTA, UNA VEZ QUE SE ESTA LOGUEADO
Route::get('/home', 'HomeController@index');

//RUTAS ADMINISTRACION DE USUARIOS
Route::resource('users','UsersController');

//RUTA PARA EL CAMBIO DE PASSWORD
Route::get('users/password/cambiar', 'PasswordUsersController@password');
Route::post('users/password/cambiar', 'PasswordUsersController@save');

//RUTAS ASIGNAR ROLES
Route::get('users/asignRole/{user}', 'UsersController@asignRole');
Route::post('users/saveRole', 'UsersController@saveRole');



//RUTA LOGIN AJAX
Route::get('getEstab/{mail}','Auth\LoginController@getEstab');


//RUTA CUADRO RESUMEN
Route::get('backuplogtarqueq', 'backuplogtarqueq@index');

// Rutas tarqueq 
Route::resource('tarqueq', 'TarqueqController');
// Rutas himalia 
Route::resource('himalia', 'HimaliaController');
// Rutas wixan 
Route::resource('wixan', 'WixanController');
// Rutas tiempo 
Route::resource('tiempo', 'TiempoController');
// Rutas time 
Route::resource('time', 'TimeController');
// Rutas guido 
Route::resource('guido', 'GuidoController');
// Rutas tasko 
Route::resource('tasko', 'TaskoController');
