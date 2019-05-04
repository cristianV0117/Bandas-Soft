<?php

use Illuminate\Database\Seeder;
use App\Instrument;

class createInstrumentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    private $instruments = [
    	'Voice',
    	'Guitar',
    	'Bass',
    	'Drums'

    ];
    public function run()
    {
        foreach ($this->instruments as $instrument) {
        	$c = new Instrument();
        	$c->nombre = $instrument;
        	$c->save();
        }
    }
}
