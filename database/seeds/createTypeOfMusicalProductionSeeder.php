<?php

use Illuminate\Database\Seeder;
use App\TypeOfMusicalProduction;

class createTypeOfMusicalProductionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    private $typesOfMusicalProductions = [

    	'Album',
    	'EP',
    	'Single',
    	'OficialVideo'

    ];
    public function run()
    {
        foreach ($this->typesOfMusicalProductions as $typesOfMusicalProduction) {
       		$c = new typeOfMusicalProduction();
       		$c->nombre = $typesOfMusicalProduction;
       		$c->save();
       		
       	}
    }
}
