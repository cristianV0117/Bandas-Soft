<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Instrument;

class adminInstruments extends Controller
{
    public function getInstrumentsList()
    {
        $instruments = Instrument::all();
        return view('musician.LitsOfInstruments',[
            'instrumentos' => $instruments
        ]);
    }

    public function insertInstrument(Request $request)
    {
    	$a = $request->instrumento;
    	$result = new Instrument();
    	$result->nombre = $a;
    	$result->save();
    	return back()->with('success','El Instrumento ha sido registrado con exito');
    }

    public function deleteInstrument(Request $request)
    {
    	$respuesta = $request->id;
    	if ($request->ajax()) {
    		$result = Instrument::find($respuesta);
    		$result->delete();
    		return response($request->id);
    	}
    }

    public function editInstrument(Request $request)
    {
    	$resultado = $request->id;
    	$resultadoName = $request->dataName;
    	if ($request->ajax()) {
    		$result = Instrument::find($resultado);
    		$result->nombre = $resultadoName;
    		$result->save();
    		return response($resultado);
    	}
    }
}
