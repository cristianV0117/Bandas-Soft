<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Excel;
use Redirect;
use Session;
use DateTime;
use DB;
use Carbon\Carbon;
use App\SMSSegment;

class excelTest extends Controller
{



    /*public function sendCampa(Request $request)
    {
        $date = Carbon::now()->toDateTimeString();
        $nameCampaña = $request->nameCampaña;
        $ldate = new DateTime('now');
        $a = $nameCampaña . "-" . $ldate->format('YmdHis');
        $smsSegment = DB::connection('nativo')
        ->table('s_m_s_segments')
        ->insert(['name' => $a,
            'created_at' => $date,
            'updated_at' => $date

    ]);
        $select = DB::connection('nativo')
        ->table('s_m_s_segments')
        ->select('id')
        ->orderBy('id','desc')
        ->limit(1)
        ->get();

        
         
    }*/


    /*public function getExcel()
    {
    	if (Session::has('excelData')) {
    		$data = Session::get('excelData');
    		Session::forget('excelData');
    		return view('excel.excel',[

    			'arreglos' => $data

    		]);
    	}
    	
    	return view('excel.excelData');
    }*/

    /*public function sendExcel(Request $request)
    {
    	
    	$file = $request->inputGroupFile01;
    	$result = Excel::load($file, function($reader) {
    		
    		foreach ($reader->toArray() as $key => $row) {	
    		$this->array[] = [
   					'nombre' => $row['nombre'],
   					'email' => $row['email'],
   					'telefono' => $row['telefono']
   			];}
   				
		})->get();
    	$local = $this->array;
    	Session::put('excelData',$local);
		return view('/excel/getviewCamp');
	}*/

    public function getExcel()
    {
        return view('excel.excel');
    }

    public function sendExcel(Request $request)
    {

        $file = $request->inputGroupFile01;
        $result = Excel::load($file, function($reader) {
            
            foreach ($reader->toArray() as $key => $row) {  
            $this->array[] = [
                    'email' => $row['email'],
                    'telefono' => '57' . $row['telefono']
            ];}
                
        })->get();
        $local = $this->array;
        Session::put('excelData',$local);
        return view('excel.excelCamp',[

            'arreglos' => $local

        ]);
    }

    public function sendCampa(Request $request)
    {
        $arregloTotal = [];
        $data = Session::get('excelData');
        Session::forget('excelData');
        $date = Carbon::now()->toDateTimeString();
        $nameCampaña = $request->nameCampaña;
        $ldate = new DateTime('now');
        $a = $nameCampaña . "-" . $ldate->format('YmdHis');
        $smsSegment = DB::connection('nativo')
        ->table('s_m_s_segments')
        ->insert(['name' => $a,
            'created_at' => $date,
            'updated_at' => $date

    ]);
        $select = DB::connection('nativo')
        ->table('s_m_s_segments')
        ->select('id')
        ->orderBy('id','desc')
        ->limit(1)
        ->get();
        $ar = $select[0];
        $ob = $ar->id;
        
        $arregloTotal = [
            'fechaActual' => $date,
            'idSegmentLead' => $ob,
            'contactos' => $data
        ];
        $contactos = $arregloTotal['contactos'];
         foreach ($contactos as  $contacto) {
            $insertCom = DB::connection('nativo')
             ->table('s_m_s_segment_leads')
             ->insert([

                'fecha_creacion_segment_lead' => $arregloTotal['fechaActual'],
                'sms_segment_id'=>$arregloTotal['idSegmentLead'],
                'email_lead'=>$contacto['email'],
                'tel_lead'=>$contacto['telefono']

             ]);

        }
    }

 }

