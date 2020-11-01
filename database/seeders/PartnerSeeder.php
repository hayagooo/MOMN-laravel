<?php

namespace Database\Seeders;

use App\Models\Partner;
use Illuminate\Database\Seeder;

class PartnerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=1; $i<=5; $i++) {
            $partner = new Partner();
            $partner->name = 'Partner '.$i;
            $partner->logo = 'partnerLogo'.$i.'.png';
            $partner->id_category = $i;
            $partner->save();
        }
    }
}
