<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Country;

class adminCountries extends Controller
{
    public function getListCountrys()
    {
    	$countries = Country::paginate(35);

    	return view('countries.countriesView',[

    		'countries' => $countries

    	]);
    }
}
