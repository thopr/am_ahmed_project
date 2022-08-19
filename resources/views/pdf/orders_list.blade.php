<style>
    table {
    
      border-collapse: collapse;
      width: 100%;
    }

    

    
    td, th {
      border: 1px solid #dddddd;
      text-align: right;
      padding: 8px;
    }
    
    tr:nth-child(even) {
      background-color: #dddddd;
    }
    </style>
    </head>
    <body dir="rtl">
    
        <h1>الطلبات لتاريخ {{$delivery_date}}</h1>
    
        @foreach($orders as $order)
@php $orderDetails = $order->orderDetails; @endphp
        <h3>رقم الطلب (الوسم) :   {{$order->code}}  </h3>

        <div class="row">
            <div  class="column">
                <span class="text-main text-bold">{{translate('Payment Status')}}</span> :
            <span style={{$order->payment_status=='paid' ? 'color :green' : 'color :red'}} > {{ translate(ucfirst(str_replace('_', ' ', $order->payment_status))) }}</span>
   <br />
            <span class="text-main text-bold">{{translate('Payment method')}}</span> :
            <span  class="text-right">{{ translate(ucfirst(str_replace('_', ' ', $order->payment_type))) }}</span>
   <br />
            <span class="text-main text-bold">{{translate('Dilivery Date')}}</span> :
            <span class="text-right">{{$order->dilivery_date}}</span>
            <br />
            <span class="text-main text-bold">{{translate('Dilivery Time')}}</span> :
            <span class="text-right">{{$order->dilivery_time == 'pm' ? translate('evening') : translate('morning') }}</span>
            </div>
            <div class="column">
            <span class="text-main text-bold">{{translate('Call Before Dilivery')}}</span> :
            <span class="text-right">{{$order->call ==1 ? translate('Yes') : translate('No') }}</span>
            <br />
            <span class="text-main text-bold">{{translate('Phone')}}</span> :
            @php
            
            $shipping_address = json_decode($order->shipping_address);
            
            @endphp
            <span class="text-right">{{$shipping_address->phone}}</span>
            <br />
            <span class="text-main text-bold">{{translate('Dilivery Address')}}</span> :
            <span class="text-right"><a target="_blank" href={{$order->address_link}} class="text-right"> <span class="badge badge-inline badge-success">{{translate('Link')}}</span></a></span>
            <br />
            <span class="text-main text-bold">{{translate('Address')}}</span> :
            <span class="text-right">{{$order->address_description}}</span>
        </div>
        </div>
        <br />
    <table dir="rtl">
      <tr>
        <th>المنتج</th>
        <th>وصف</th>
        <th>الكمية</th>
        <th>الوسم</th>
      </tr>
      @foreach($orderDetails as $orderDetail)
      @php $product = \App\Models\Product::find($orderDetail->product_id); @endphp
      @if($product)
      <tr>
        <td>{{$product->name}} 
            {{$product->small_summary}} </td>
        <td>{{$orderDetail->variant_str}}</td>
        <td>{{$orderDetail->quantity}}</td>
        <td>{{$order->code}}</td>
    
      </tr>
      @endif
      @endforeach

 
     
    </table>
    <br />
    <hr/>
    <br />
    @endforeach