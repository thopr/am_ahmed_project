<?php

namespace App\Http\Controllers;

use App\Models\Unit;
use Illuminate\Http\Request;
use Illuminate\Support\Str;


use App\Http\Requests\StoreUnitRequest;
use App\Http\Requests\UpdateUnitRequest;

class UnitController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
        $sort_search =null;
        $units = Unit::orderBy('name', 'asc');
        if ($request->has('search')){
            $sort_search = $request->search;
            $units = $units->where('name', 'like', '%'.$sort_search.'%');
        }
        $units = $units->paginate(15);
        return view('backend.product.units.index', compact('units', 'sort_search'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreUnitRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $unit = new Unit;
        $unit->name = $request->name;
        $unit->save();   

        flash(translate('Unit has been inserted successfully'))->success();
        return redirect()->route('units.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Unit  $unit
     * @return \Illuminate\Http\Response
     */
    public function show(Unit $unit)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Unit  $unit
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request,$id)
    {
        //
       
        $unit  = Unit::findOrFail($id);
        return view('backend.product.units.edit', compact('unit'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateUnitRequest  $request
     * @param  \App\Models\Unit  $unit
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $unit = Unit::findOrFail($id);     
        $unit->name = $request->name;
        $unit->save();

        flash(translate('Unit has been updated successfully'))->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Unit  $unit
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $unit = Unit::findOrFail($id);     
     
        $unit->destroy($id);
        flash(translate('Unit has been updated successfully'))->success();
        return back();
      
    }
}
