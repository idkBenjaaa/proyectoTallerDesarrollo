<?php
namespace Database\Seeders;
use Illuminate\Database\Seeder;
use App\Models\Poliza; 

class PolizasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
           
            [186, '16/02/2021', 180504],
            [121, '18/12/2028', 102299],
            [14, '31/07/2021', 102299],
            [39, '13/02/2026', 146882],
            [190, '14/07/2021', 161561],
            [203, '27/11/2024', 134667],
            [91, '07/02/2026', 163806],
            [215, '18/10/2021', 150851],
            [169, '03/05/2023', 101701],
            [104, '17/05/2022', 98396],
            [163, '24/07/2020', 114821],
            [18, '13/08/2028', 173831],
            [146, '22/04/2021', 162488],
            [236, '04/09/2026', 117995],
            [177, '27/10/2022', 129208],
            [220, '22/09/2019', 89630],
            [72, '30/08/2022', 96522],
            [251, '19/07/2025', 146880],
            [22, '12/07/2021', 122659],
            [28, '12/02/2029', 163368],
            [259, '06/08/2019', 118462],
            [213, '07/10/2025', 167446],
            [165, '16/10/2022', 125933],
            [230, '16/11/2022', 157968],
            [97, '14/04/2026', 108267],
            [107, '23/06/2025', 178127],
            [200, '20/01/2022', 131447],
            [166, '06/10/2022', 117002],
            [47, '20/01/2024', 89628],
            [11, '08/07/2027', 131335],
            [10, '11/05/2024', 76206],
            [229, '03/04/2024', 147514],
            [43, '16/08/2022', 102293],
            [53, '21/04/2023', 116391],
            [158, '25/11/2020', 157967],
            [109, '08/09/2024', 99557],
            [174, '09/05/2019', 90114],
            [223, '24/09/2024', 160177],
            [16, '26/08/2024', 164459],
            [278, '12/08/2024', 141735],
            [234, '08/11/2022', 92810],
            [92, '30/03/2026', 142767],
            [210, '17/09/2019', 170423],
            [29, '06/02/2023', 173830],
            [198, '19/03/2023', 82718],
            [141, '23/03/2025', 178233]
            //[2, '17/01/2025', 95907],
        ];

        foreach ($data as $item) {
            Poliza::create([
                'ID' => $item[0],
                'FECHA_VENCIMIENTO_LICENCIA' => $item[1],
                'NRO_POLIZA' => $item[2],
            ]);
        }
    }
}