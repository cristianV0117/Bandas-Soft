<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	Model::unguard();
        $this->call(createCountrySeeder::class);
        $this->call(createGenreSeeder::class);
        $this->call(createInstrumentSeeder::class);
        $this->call(RoleTableSeeder::class);
        $this->call(UserTableSeeder::class);
        $this->call(createTypeOfMusicalProductionSeeder::class);
        Model::reguard();
    }
}
