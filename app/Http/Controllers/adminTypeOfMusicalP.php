<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TypeOfMusicalProduction;

class adminTypeOfMusicalP extends Controller
{
    public function getViewTypeOfMusical()
    {
    	$typeOf = TypeOfMusicalProduction::all();
    	return view('typeOfMusicalProduction.typeOfMusicalPView',[

    		'typeOfs' => $typeOf


    	]);
    }

    public function deleteTypeOf(Request $request)
    {
    	if ($request->ajax()) {
    		
    		$result = $request->id;
    		$tyoeOf = TypeOfMusicalProduction::find($result);
    		$tyoeOf->delete();
    		return response($tyoeOf);

    	}
    }
}
