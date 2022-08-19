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
    
        <h1>فاتورة ضريبية مبسطة</h1>
    
@php $orderDetails = $order->orderDetails; @endphp
        <h3>رقم الطلب :   {{$order->code}}  </h3>

        
        <div class="mb-3">
            @php
                                $removedXML = '<?xml version="1.0" encoding="UTF-8"?>';
                            @endphp
                            {!! str_replace($removedXML,"", QrCode::size(100)->generate($qrCode)) !!}
        </div>
        <br />

        <div style="font-size: 17px;" class="row">
            <div  class="column">
                <span class="text-main text-bold">{{translate('Tax Number')}}</span> :
                <span class="text-right">TIN 31015970900003</span>
                <br />
                <span class="text-main text-bold">{{translate('Order Date')}}</span> :
                <span class="text-right">{{$order->created_at}}</span>
                <br />
                <span class="text-main text-bold">{{translate('Payment Status')}}</span> :
            <span style={{$order->payment_status=='paid' ? 'color :green' : 'color :red'}} > {{ translate(ucfirst(str_replace('_', ' ', $order->payment_status))) }}</span>
   <br />
            <span class="text-main text-bold">{{translate('Payment method')}}</span> :
            <span  class="text-right">{{ translate(ucfirst(str_replace('_', ' ', $order->payment_type))) }}</span>
   <br />
         
           
            </div>
            <div class="column">
       
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
        <th>السعر</th>
        <th>الضريبة</th>
        <th>السعر شامل الضريبة</th>
      
      </tr>
      @foreach($orderDetails as $orderDetail)
      @php $product = \App\Models\Product::find($orderDetail->product_id); @endphp
      @if($product)
      <tr>
        <td>{{$product->name}} 
            {{$product->small_summary}} </td>
        <td>{{$orderDetail->variant_str}}</td>
        <td>{{$orderDetail->quantity}}</td>
        <td>{{$orderDetail->price}}</td>
        <td>{{$orderDetail->tax}}</td>
        <td>{{$orderDetail->price+$orderDetail->tax}}</td>
 
    
      </tr>
      @endif
      @endforeach

 
     
    </table>
    <br />
    <hr/>

    <table dir="rtl">
        <tr>
         
          <th>الإجمالي الخاضع لنسبة ضريبه (15%)</th>
        
      
    
        
        </tr>
     
        @php 
 $total_before_tax=0;
        $total_tax=0;
        foreach($orderDetails as $key => $orderDetail){
            $total_tax=$total_tax+$orderDetail->tax;
            $total_before_tax=$total_before_tax+$orderDetail->price;
        }
       
        
        @endphp
   
        <tr>
            <td>  {{$total_before_tax}}</td>
      
       
         
     
   
      
        </tr>
 
  
  
   
       
      </table>

    <br />
    <table dir="rtl">
        <tr>
         
    
            <th>إجمالي ضريبة القيمة المضافة (15%)</th>
    
        
        </tr>
     
    
     
        <tr>

           
            <td>{{$total_tax}} 
            </td>
   
      
        </tr>
  
  
  
   
       
      </table>
      <br />
    <table dir="rtl">
        <tr>
         
    
          <th>الإجمالي</th>
    
        
        </tr>
     
    
     
        <tr>

             <td>  {{$total_before_tax+$total_tax}}</td>
     
   
      
        </tr>
  
  
  
   
       
      </table>
