<?php

namespace App\Http\Controllers;

use App\Models\CityProduct;
use App\Http\Requests\StoreCityProductRequest;
use App\Http\Requests\UpdateCityProductRequest;

class CityProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
     * @param  \App\Http\Requests\StoreCityProductRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreCityProductRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CityProduct  $cityProduct
     * @return \Illuminate\Http\Response
     */
    public function show(CityProduct $cityProduct)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CityProduct  $cityProduct
     * @return \Illuminate\Http\Response
     */
    public function edit(CityProduct $cityProduct)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateCityProductRequest  $request
     * @param  \App\Models\CityProduct  $cityProduct
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCityProductRequest $request, CityProduct $cityProduct)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CityProduct  $cityProduct
     * @return \Illuminate\Http\Response
     */
    public function destroy(CityProduct $cityProduct)
    {
        //
    }
}
