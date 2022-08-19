<?php

namespace App\Http\Controllers;

use App\Models\Zone;
use SimpleXMLElement;

use Illuminate\Http\Request;
use App\Http\Requests\StoreZoneRequest;
use App\Http\Requests\UpdateZoneRequest;
use App\Http\Resources\V2\ZoneCollection;

class ZoneController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


    function inside($point, $fenceArea) {
        $x = $point['lat']; $y = $point['lng'];

    
        
        $inside = false;
        for ($i = 0, $j = count($fenceArea) - 1; $i <  count($fenceArea); $j = $i++) {

        
            $myi=explode(",", $fenceArea[$i]); 
            $myj=explode(",", $fenceArea[$j]); 
         
            $xi = $myi[0]; $yi = $myi[1];
            $xj = $myj[0]; $yj = $myj[1];
        
            $intersect = (($yi > $y) != ($yj > $y))
                && ($x < ($xj - $xi) * ($y - $yi) / ($yj - $yi) + $xi);
            if ($intersect) $inside = !$inside;
        }
        
        return $inside;
        }

    public function index(Request $request)
    {
        $sort_search =null;
        $zones = Zone::orderBy('name', 'asc');
        if ($request->has('search')){
            $sort_search = $request->search;
            $zones = $zones->where('name', 'like', '%'.$sort_search.'%');
        }
        $zones = $zones->paginate(15);
        return view('backend.product.zones.index', compact('zones', 'sort_search'));
    }

    public function zones(Request $request)
    {
       
        $zones = Zone::orderBy('name', 'asc');     
        $zones = $zones->get();
        return new ZoneCollection($zones);
     
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */


     public function check_zone(Request $request){

        $latitude=$request->latitude;
        $longitude=$request->longitude;      

      
        $point=array("lat"=>  $latitude, "lng"=> $longitude);
        $zones=Zone::all();
         $inside=false;
        foreach($zones as $zone){

            $fenceArea=json_decode($zone->polygon_cords);
            if($this->inside($point,$fenceArea)){
                $inside=$zone->name;
                break;

            }
            
        }

        return response()->json([
            'result' => $inside           
        ], 200);


      
       
     


     }
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreZoneRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {


    

      //  $path = $request->file('kml')->store('uploads/all', 'local');
      $good=true;


      if($request->file('kml')){
        $contents = file_get_contents($request->kml);
        $xml = new SimpleXMLElement($contents);
        if( $xml->Document->Placemark){
            $zones  = $xml->Document->Placemark;
            $myarray = array();


            foreach ($zones as $zone){
                if($zone->Polygon->outerBoundaryIs->LinearRing->coordinates){


                    $cords=(string)$zone->Polygon->outerBoundaryIs->LinearRing->coordinates;
                    $cords=explode("\n", $cords);
                    $temp_cords=array();
                    foreach ($cords as $cord){
                        $cord= str_replace(' ',"",$cord);
                        if (!empty($cord)) {
                        array_push($temp_cords, $cord);
                        }
                        
                    }
                   
                    $temp=array();
                    $temp['name'] =(string)$zone->name;
                    $temp['cords'] =$temp_cords;    
                    
                    
                    array_push($myarray,$temp);


                }else{
                    $good=false; 
                    break;
                }
               
           
                
              
            }

        }else{
            $good=false;
        }
     

      }else{
        $good=false;
      }
   
       
       
     





       if($good){
        Zone::truncate();
        foreach($myarray as $cord){

            $zone = new Zone;
            $zone->name =  $cord['name'];
            $zone->polygon_cords = json_encode($cord['cords']); 
            $zone->save();

        }

        flash(translate('Zone has been inserted successfully'))->success();

       }else{
        flash(translate('Faild please check kml file'))->error();
 
       }
      

      

    

       
        return redirect()->route('zones.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Zone  $zone
     * @return \Illuminate\Http\Response
     */
    public function show(Zone $zone)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Zone  $zone
     * @return \Illuminate\Http\Response
     */
    public function edit(Zone $zone)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateZoneRequest  $request
     * @param  \App\Models\Zone  $zone
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateZoneRequest $request, Zone $zone)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Zone  $zone
     * @return \Illuminate\Http\Response
     */
    public function destroy( Request $request,$id)
    {


      
       
        Zone::destroy($id);

        flash(translate('Zone has been deleted successfully'))->success();
        return redirect()->route('zones.index');

    }
}
