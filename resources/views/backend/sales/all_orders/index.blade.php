@extends('backend.layouts.app')

@section('content')

<div class="card">
    <form class="" action="" id="sort_orders" method="GET">
        <div class="card-header row gutters-5">
   
           


            <div class="col">
                <h5 class="mb-md-0 h6">{{ translate('All Orders') }}</h5>
            </div>

            <div class="dropdown mb-2 mb-md-0">
                <button class="btn border dropdown-toggle" type="button" data-toggle="dropdown">
                    {{translate('Bulk Action')}}
                </button>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" onclick="bulk_delete()"> {{translate('Delete selection')}}</a>
<!--                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#exampleModal">
                        <i class="las la-sync-alt"></i>
                        {{translate('Change Order Status')}}
                    </a>-->
                </div>
            </div>

            <!-- Change Status Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">
                                {{translate('Choose an order status')}}
                            </h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <select class="form-control aiz-selectpicker" onchange="change_status()" data-minimum-results-for-search="Infinity" id="update_delivery_status">
                                <option value="pending">{{translate('Pending')}}</option>
                                <option value="confirmed">{{translate('Confirmed')}}</option>
                                <option value="picked_up">{{translate('Picked Up')}}</option>
                                <option value="on_the_way">{{translate('On The Way')}}</option>
                                <option value="delivered">{{translate('Delivered')}}</option>
                                <option value="cancelled">{{translate('Cancel')}}</option>
                            </select>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-2 ml-auto">
                <select class="form-control aiz-selectpicker" name="delivery_status" id="delivery_status">
                    <option value="">{{translate('Filter by Delivery Status')}}</option>
                    <option value="pending" @if ($delivery_status == 'pending') selected @endif>{{translate('Pending')}}</option>
                    <option value="confirmed" @if ($delivery_status == 'confirmed') selected @endif>{{translate('Confirmed')}}</option>
                    <option value="picked_up" @if ($delivery_status == 'picked_up') selected @endif>{{translate('Picked Up')}}</option>
                    <option value="on_the_way" @if ($delivery_status == 'on_the_way') selected @endif>{{translate('On The Way')}}</option>
                    <option value="delivered" @if ($delivery_status == 'delivered') selected @endif>{{translate('Delivered')}}</option>
                    <option value="cancelled" @if ($delivery_status == 'cancelled') selected @endif>{{translate('Cancel')}}</option>
                </select>
            </div>

      
            <div class="col-lg-2">
                <div class="form-group mb-0">
                    <input type="text" class="aiz-date-range form-control" value="{{ $date }}" name="date" placeholder="{{ translate('Filter by date') }}" data-format="DD-MM-Y" data-separator=" to " data-advanced-range="true" autocomplete="off">
                </div>
            </div>
            <div class="col-lg-2">
                <div class="form-group mb-0">
                    <input type="text" class="form-control" id="search" name="search"@isset($sort_search) value="{{ $sort_search }}" @endisset placeholder="{{ translate('Type Order code & hit Enter') }}">
                </div>
            </div>
            <div class="col-auto">
                <div class="form-group mb-0">
                    <button type="submit" class="btn btn-primary">{{ translate('Filter') }}</button>
                </div>
            </div>
        </div>

     <div class="card-header row gutters-5">

        <div class="col-lg-2 ">
        <a href={{route('purchase_list')}} style="    width: 100%;" type="button"  class="btn btn-primary">{{translate('Purchase List')}}</a>
        </div>

        <div class="col-lg-2 ">
            
            <a href={{route('orders_list')}} style="    width: 100%;"  type="button"  class="btn btn-primary">{{translate('Orders List')}}</a>
            </div>
        <div class="col-lg-2 ">
            <select class="form-control aiz-selectpicker" name="delivery_city" id="delivery_city">
                <option value="">{{translate('Filter by City')}}</option>
                @php
                
                $cities = \App\Models\City::whereIn('state_id',\App\Models\State::where('country_id',191)->pluck('id'))->get('name');
            
                @endphp
                @foreach($cities as $city)
                <option value={{$city->name}} @if ($delivery_city == $city->name) selected @endif>{{$city->name}}</option>
                @endforeach
               
            </select>
        </div>

        <div class="col-lg-2 ">
            <select class="form-control aiz-selectpicker" name="delivery_zone" id="delivery_zone">
                <option value="">{{translate('Filter by Zone')}}</option>
                @php
                
                $zones = \App\Models\Zone::all();
                //up
              
                @endphp
                @foreach($zones as $zone)
                <option value={{$zone->name}} @if ($delivery_zone == $zone->name) selected @endif>{{$zone->name}}</option>
                @endforeach               
            </select>
        </div>

        <div class="col-lg-4 ">
            <select class="form-control aiz-selectpicker" name="delivery_date" id="delivery_date">
                <option value="">{{translate('Filter by delivery Date')}}</option>
                @php
                
                $date=date('Y-m-d');         
                $date_1=date('Y-m-d', strtotime($date. ' + 1 days'));        
                $date_2=date('Y-m-d', strtotime($date. ' + 2 days'));        
                $date_3=date('Y-m-d', strtotime($date. ' + 3 days'));        
                $date_4=date('Y-m-d', strtotime($date. ' + 4 days'));        
                $date_5=date('Y-m-d', strtotime($date. ' + 5 days'));        
                $date_6=date('Y-m-d', strtotime($date. ' + 6 days'));        
                $date_7=date('Y-m-d', strtotime($date. ' + 7 days'));        
                $date_8=date('Y-m-d', strtotime($date. ' + 8 days'));        
                $date_9=date('Y-m-d', strtotime($date. ' + 9 days'));        
                $date_10=date('Y-m-d', strtotime($date. ' + 10 days'));        
                @endphp
                <option value={{$date}} @if ($delivery_date == $date) selected @endif>{{translate('Today')}}</option>
                <option value={{$date_1}} @if ($delivery_date == $date_1) selected @endif>{{translate('Tomorrow')}}</option>
                <option value={{$date_2}} @if ($delivery_date == $date_2) selected @endif>{{$date_2}}</option>       
                <option value={{$date_3}} @if ($delivery_date == $date_3) selected @endif>{{$date_3}}</option>       
                <option value={{$date_4}} @if ($delivery_date == $date_4) selected @endif>{{$date_4}}</option>       
                <option value={{$date_5}} @if ($delivery_date == $date_5) selected @endif>{{$date_5}}</option>       
                <option value={{$date_6}} @if ($delivery_date == $date_6) selected @endif>{{$date_6}}</option>       
                <option value={{$date_7}} @if ($delivery_date == $date_7) selected @endif>{{$date_7}}</option>       
                <option value={{$date_8}} @if ($delivery_date == $date_8) selected @endif>{{$date_8}}</option>       
                <option value={{$date_9}} @if ($delivery_date == $date_9) selected @endif>{{$date_9}}</option>       
                <option value={{$date_10}} @if ($delivery_date == $date_10) selected @endif>{{$date_10}}</option>       
               
               
            </select>
        </div>

   </div>
        <div class="card-body">
            <table class="table aiz-table mb-0">
                <thead>
                    <tr>
                        <!--<th>#</th>-->
                        <th>
                            <div class="form-group">
                                <div class="aiz-checkbox-inline">
                                    <label class="aiz-checkbox">
                                        <input type="checkbox" class="check-all">
                                        <span class="aiz-square-check"></span>
                                    </label>
                                </div>
                            </div>
                        </th>
                        <th>{{ translate('Order Code') }}</th>
                        <th data-breakpoints="md">{{ translate('Customer') }}</th>
                        <th data-breakpoints="md">{{ translate('Amount') }}</th>
                        <th data-breakpoints="md">{{ translate('Delivery Status') }}</th>
                        <th data-breakpoints="md">{{ translate('Payment Status') }}</th>
                        <th data-breakpoints="md">{{ translate('Zone') }}</th>
                        <th data-breakpoints="md">{{ translate('Delivery Date') }}</th>
                        @if (addon_is_activated('refund_request'))
                        <th>{{ translate('Refund') }}</th>
                        @endif
                        <th class="text-right" width="15%">{{translate('options')}}</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($orders as $key => $order)
                    <tr>
    <!--                    <td>
                            {{ ($key+1) + ($orders->currentPage() - 1)*$orders->perPage() }}
                        </td>-->
                        <td>
                            <div class="form-group">
                                <div class="aiz-checkbox-inline">
                                    <label class="aiz-checkbox">
                                        <input type="checkbox" class="check-one" name="id[]" value="{{$order->id}}">
                                        <span class="aiz-square-check"></span>
                                    </label>
                                </div>
                            </div>
                        </td>
                        <td>
                            {{ $order->code }}
                        </td>
                     
                        <td>
                            @if ($order->user != null)
                            {{ $order->user->name }}
                            @else
                            {{translate('Guest')}} ({{ $order->guest_id }})
                            @endif
                        </td>
                        <td>
                            {{ single_price($order->grand_total) }}
                        </td>
                        <td>
                            @php
                                $status = $order->delivery_status;
                                if($order->delivery_status == 'cancelled') {
                                    $status = '<span class="badge badge-inline badge-danger">'.translate('Cancel').'</span>';
                                }

                            @endphp
                            {!! translate($status) !!}
                        </td>
                        <td>
                            @if ($order->payment_status == 'paid')
                            <span class="badge badge-inline badge-success">{{translate('Paid')}}</span>
                            @else
                            <span class="badge badge-inline badge-danger">{{translate('Unpaid')}}</span>
                            @endif
                        </td>

                        <td>
                           {{$order->zone}}
                        </td>
                        <td>
                            {{$order->dilivery_date}}
                         </td>
                        @if (addon_is_activated('refund_request'))
                        <td>
                            @if (count($order->refund_requests) > 0)
                            {{ count($order->refund_requests) }} {{ translate('Refund') }}
                            @else
                            {{ translate('No Refund') }}
                            @endif
                        </td>
                        @endif
                        <td class="text-right">
                            <a class="btn btn-soft-primary btn-icon btn-circle btn-sm" href="{{route('all_orders.show', encrypt($order->id))}}" title="{{ translate('View') }}">
                                <i class="las la-eye"></i>
                            </a>
                            <a class="btn btn-soft-info btn-icon btn-circle btn-sm" href="{{ route('invoice.download', $order->id) }}" title="{{ translate('Download Invoice') }}">
                                <i class="las la-download"></i>
                            </a>
                            <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete" data-href="{{route('orders.destroy', $order->id)}}" title="{{ translate('Delete') }}">
                                <i class="las la-trash"></i>
                            </a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>

            <div class="aiz-pagination">
                {{ $orders->appends(request()->input())->links() }}
            </div>

        </div>
    </form>
</div>

@endsection

@section('modal')
    @include('modals.delete_modal')
@endsection

@section('script')
    <script type="text/javascript">
        $(document).on("change", ".check-all", function() {
            if(this.checked) {
                // Iterate each checkbox
                $('.check-one:checkbox').each(function() {
                    this.checked = true;
                });
            } else {
                $('.check-one:checkbox').each(function() {
                    this.checked = false;
                });
            }

        });

//        function change_status() {
//            var data = new FormData($('#order_form')[0]);
//            $.ajax({
//                headers: {
//                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
//                },
//                url: "{{route('bulk-order-status')}}",
//                type: 'POST',
//                data: data,
//                cache: false,
//                contentType: false,
//                processData: false,
//                success: function (response) {
//                    if(response == 1) {
//                        location.reload();
//                    }
//                }
//            });
//        }

        function bulk_delete() {
            var data = new FormData($('#sort_orders')[0]);
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: "{{route('bulk-order-delete')}}",
                type: 'POST',
                data: data,
                cache: false,
                contentType: false,
                processData: false,
                success: function (response) {
                    if(response == 1) {
                        location.reload();
                    }
                }
            });
        }
    </script>
@endsection
