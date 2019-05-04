<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\recordCompany;
use Redirect;

class adminRecordCompany extends Controller
{
    public function makeRecordCompany()
    {
        $recordsCompanies = recordCompany::all();
    	return view('recordCompany.recordCompanyView',[

            'recordComapanies' => $recordsCompanies


        ]);
    }

    public function insertRecordCompany(Request $request)
    {
    	$recordCompany = new recordCompany();
    	$recordCompany->nombre = $request->nameRecord;
    	$recordCompany->descripcion = $request->descRecord;
    	$recordCompany->save();
    	return back()->with('success','El Instrumento ha sido registrado con exito');
    	
    }

    public function deleteRecordCompany(Request $request)
    {
        $respuesta = $request->id;
        if ($request->ajax()) {
        
            $result = recordCompany::find($respuesta);
            $result->delete();
            return response($request->id);
        }
    }
}
