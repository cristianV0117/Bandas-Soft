<?php

use Illuminate\Database\Seeder;
use App\Genre;

class createGenreSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */

    private $genres = [
    	'Death Metal',
    	'Slamming Death Metal',
    	'Brutal Death Metal'

    ];
    public function run()
    {
        foreach ($this->genres as $genre) {
        	$c = new Genre();
        	$c->nombre = $genre;
        	$c->save();
        }
    }
}
