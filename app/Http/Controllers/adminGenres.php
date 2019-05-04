<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Genre;

class adminGenres extends Controller
{
    public function getGenresList()
    {
    	$generos = Genre::all();
    	return view('genres.genresView',[

    		'generos' => $generos

    	]);
    }

    public function insertGenre(Request $request)
    {
    	$a = $request->generos;
    	$generos = new Genre();
    	$generos->nombre = $a;
    	$generos->save();
    	return back()->with('success','El Instrumento ha sido registrado con exito');
    }

    public function deleteGenre(Request $request)
    {
    	$result = $request->id;
    	if ($request->ajax()) {
    		$respuesta = Genre::find($result);
    		$respuesta->delete();
    		return response(1);
    	}
    }

    public function editGenre(Request $request)
    {
    	$resultado = $request->id;
    	$resultadoName = $request->dataName;
    	if ($request->ajax()) {
    		$result = Genre::find($resultado);
    		$result->nombre = $resultadoName;
    		$result->save();
	    	return response(1);
    	}
    }
}
