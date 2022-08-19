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
        
            <h2>قائمة شراء</h2>
        
        <table dir="rtl">
          <tr>
            <th>المنتج</th>
            <th>وصف</th>
            <th>الكمية</th>
          </tr>
          @foreach($products_list as $list)
          <tr>
            <td>{{$list['name']}}</td>
            <td>{{$list['small_summary']}}</td>
            <td>{{$list['quantity']}}</td>
        
          </tr>
          @endforeach
         
        </table>