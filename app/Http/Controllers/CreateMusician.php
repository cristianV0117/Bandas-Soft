<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Instrument;
use App\Musician;
use App\Musician_Instrument;


class CreateMusician extends Controller
{
    public function makeMusicianView()
    {
        $instrumentos = Instrument::all();
        
        return view('musician.createMusician',[
            'instrumentos' => $instrumentos
        ]);
    }

    public function makeMusician(Request $request)
    {
        $resultName = $request->name;
        $resultInstru = $request->instrument;
        $musician = new Musician();
        $musician->nombre = $resultName;
        $musician->save();
        $musicianID = $musician->id;
        $musicianInstru = new Musician_Instrument();
        $musicianInstru->musicos_id = $musicianID;
        $musicianInstru->instrumentos_id = $resultInstru;
        $musicianInstru->save();
        return back()->with('musician.createMusician');

        
    }

    public function getMusicians()
    {
        $musicians = Musician_Instrument::select('musician__instruments.id','mu.nombre','ins.nombre as cargo')
        ->join('musicians as mu','mu.id','=','musician__instruments.musicos_id')
        ->join('instruments as ins','ins.id','=','musician__instruments.instrumentos_id')
        ->get();
        return view('musician.adminMusicianView',[
            'musicians' => $musicians
        ]);
    }

    public function deleteMusician(Request $request)
    {
        $respuesta = $request->id;
        if ($request->ajax()) {
            
            $result = Musician_Instrument::find($respuesta);
            $result->delete();
            return response(1);


        }
    }
}
