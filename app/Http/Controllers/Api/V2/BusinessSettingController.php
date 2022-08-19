<?php

namespace App\Http\Controllers\Api\V2;

use App\Http\Resources\V2\BusinessSettingCollection;
use App\Models\BusinessSetting;
use Illuminate\Http\Request;


class BusinessSettingController extends Controller
{
    public function index()
    {
        return new BusinessSettingCollection(BusinessSetting::all());
    }

    public function get_by_type(Request $request)
    {
        return new BusinessSettingCollection(BusinessSetting::where('type',$request->type)->get());
    }
}
