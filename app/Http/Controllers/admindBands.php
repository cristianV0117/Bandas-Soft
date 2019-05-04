<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Country;
use App\Genre;
use App\Band;
use App\recordCompany;
use App\Band_genre;
use App\Band_recordCompany;
use DB;


class admindBands extends Controller
{
    public function createBand()
    {
    	$records = recordCompany::all();
    	$countries = Country::all();
    	$genres = Genre::all();
    	return view('bands.createBandView',[

    		'countries' => $countries,
    		'genres' => $genres,
    		'records' => $records

    	]);
    }
    /**
     * El metodo registerBand se encarga de registrar la informacion general de una banda a la DB
     * @param Request $request 
     * @return type
     */
    public function registerBand(Request $request)
    {

    	//dd($request);
    	
    	$band = new Band();
    	$band->nombre = $request->nameBand;
    	$band->descripcion = $request->descBand;
    	$band->creado_el = $request->dateBand;
    	$band->pais_id = $request->countryName;
    	$band->save();
    	$bandID = $band->id;
    	foreach ($request->checkNameG_ as $checkG) {
    		$genreBand = new Band_genre();
    		$genreBand->bandas_id = $bandID;
    		$genreBand->generos_id = $checkG;
    		$genreBand->save();
    	}
    	foreach ($request->checkName_ as $check) {
    		$recordBand = new Band_recordCompany();
    		$recordBand->banda_id = $bandID;
    		$recordBand->sello_discografico_id = $check;
    		$recordBand->save();
    	}

        return back();
    }

    public function getInfoBand()
    {
    	$bands =  Band::all();
    	return view('bands.adminBandGenralView',[

    		'bands' => $bands
    	]);
    }

    public function getIndiBand(Request $request, $id)
    {
        $infoRecords = DB::table('bands as bn')
        ->select('rc.nombre as selloDiscografico')
        ->join('band_record_companies as br','br.banda_id','=','bn.id')
        ->join('record_companies as rc','rc.id','=','br.sello_discografico_id')
        ->where('bn.id',$id)
        ->groupBy('selloDiscografico')
        ->get();
 

        $infoGenres = DB::table('bands as bn')
        ->select('g.nombre as genero','bg.id as idBandGenre')
        ->join('band_genres as bg','bg.bandas_id','=','bn.id')
        ->join('genres as g','g.id','=','bg.generos_id')
        ->where('bn.id',$id)
        ->get();

        $inforGeneral = DB::table('bands as bn')
        ->select('bn.id','bn.nombre','bn.descripcion','co.nombre as pais')
        ->join('countries as co','bn.pais_id','=','co.id')
        ->where('bn.id',$id)
        ->get();

        $infoBand = DB::table('bands as bn')
        ->select('bn.id','bn.nombre','bn.descripcion','co.nombre as pais','g.nombre as genero','rc.nombre as selloDiscografico')
        ->join('countries as co','bn.pais_id','=','co.id')
        ->join('band_genres as bg','bg.bandas_id','=','bn.id')
        ->join('genres as g','g.id','=','bg.generos_id')
        ->join('band_record_companies as br','br.banda_id','=','bn.id')
        ->join('record_companies as rc','rc.id','=','br.sello_discografico_id')
        ->where('bn.id',$id)
        ->get();
        $nameBand = DB::table('bands as bn')
        ->select('bn.nombre')
        ->where('bn.id',$id)
        ->get();
        //dd($infoBand);
        return view('bands.adminBandIndividualView',[

            'infoBands' => $infoBand,
            'nameBands' => $nameBand,
            'inforGenerales' => $inforGeneral,
            'infoGenres' => $infoGenres,
            'infoRecords' => $infoRecords

        ]);


    }

    public function deleteBand(Request $request)
    {
        $result = $request->id;

        if ($request->ajax()) {
            $respuesta = Band::find($result);
            $respuesta->delete();
            return response(1);

        }
    }

    public function editBand(Request $request)
    {
        $resultado = $request->id;
        $resultadoName = $request->dataName;
        if ($request->ajax()) {
            $result = Band::find($resultado);
            $result->nombre = $resultadoName;
            $result->save();
            return response($resultado);
        }
    }

    public function deleteGenreBand(Request $request)
    {
        $result = $request->id;
        if ($request->ajax()) {
            $respuesta = Band_genre::find($result);
            $respuesta->delete();
            return response(1);

        }
    }


}
