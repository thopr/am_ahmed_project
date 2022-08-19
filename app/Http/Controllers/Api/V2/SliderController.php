<?php

namespace App\Http\Controllers\Api\V2;

use App\Http\Resources\V2\SliderCollection;
use Cache;
use Illuminate\Http\Request;


class SliderController extends Controller
{
    public function index(Request $request)
    {
        
        
       // return Cache::remember('app.home_slider_images', 86400, function() use ($request){
            $sliders=json_decode(get_setting('home_slider_images'));
            $categories=json_decode(get_setting('main_category_ids'));
            $final_list=array();
            foreach($sliders as $key => $value){
                if($categories[$key]==$request->filter_category_id){
                    array_push($final_list, $value);
                }

                
            }
            return new SliderCollection($final_list);
       // });
    }
}
