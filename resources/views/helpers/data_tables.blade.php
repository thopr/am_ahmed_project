
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script>
  <script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
  <script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
  <script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.html5.min.js"></script>
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.print.min.js"></script>
<script>
  jQuery(document).ready(function($) {
    $('#example').DataTable(

      {
        paging: false,
        info: false,
      dom: 'Bfrtip',
      buttons: [
                  'copy',
                  'excel',
                  //'csv',
                 // 'pdf',
                  'print'
              ],
      }
    );
   
  } );
  </script>
     <script>
        $( document ).ready(function() {
                $('.dt-button').addClass('btn');
            $('.dt-button').addClass('btn-primary');
            });
         
        </script>
<style>
 
    /*footable*/
    .aiz-table22 {
        opacity: 10;
        height: 0;
    }
    div.footable-loader {
        height: 220px;
    }
    .aiz-table22.footable,
    .aiz-table22.footable-details {
        opacity: 1;
        height: auto;
    }
    div.footable-loader > span.fooicon {
        border: 4px solid #1e1e2d;
        border-right-color: transparent;
        border-radius: 50%;
    }
    div.footable-loader > span.fooicon:before,
    div.footable-loader > span.fooicon:after {
        content: none;
    }
    .aiz-table22 thead th {
        border-top: 0;
        border-bottom: 1px solid #eceff7;
    }
    .aiz-table22 th {
        font-weight: 600;
    }
    .aiz-table22 td,
    .aiz-table22 th {
        border-top: 1px solid #eceff7;
    }
    .aiz-table22 td,
    .aiz-table22 th {
        padding: 1rem 0.75rem;
    }
    .aiz-table22.table-bordered td,
    .aiz-table22.table-bordered th {
        border: 1px solid #eceff7;
    }
    .aiz-table22 .footable-detail-row > td {
        padding: 0;
    }
    .aiz-table22 .footable-toggle {
        height: 16px;
        width: 16px;
        line-height: 16px;
        font-size: 16px;
        border-radius: 4px;
        text-align: center;
        opacity: 1;
        color: var(--primary);
        background-color: var(--soft-primary);
        margin-right: 10px;
    }
    .aiz-table22 .footable-toggle.fooicon-minus {
        color: var(--white);
        background-color: var(--primary);
    }
    .aiz-table22.footable > tbody > tr.footable-empty > td {
        font-size: 20px;
        position: relative;
        padding-top: 100px;
    }
     
    .aiz-table22.footable > tbody > tr.footable-empty > td:before {
        content: "\f119";
        font-family: "Line Awesome Free";
        font-weight: 900;
        position: absolute;
        left: 50%;
        top: 20px;
        font-size: 60px;
        opacity: 0.5;
        transform: translate(-50%, 0px);
    }
    .aiz-table22 .footable-pagination-wrapper {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-pack: space-between;
        justify-content: space-between;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        margin-top: 1rem;
    }
     
    .aiz-table22 .footable-page-link,
    .aiz-table22 .footable-page.disabled .footable-page-link {
        min-width: 36px;
        min-height: 36px;
        line-height: 36px;
        text-align: center;
        padding: 0;
        border: 0;
        font-size: 0.875rem;
        border-radius: 50% !important;
        color: var(--dark);
        display: inline-block;
    }
     
    .aiz-table22 .footable-page {
        margin: 0 2px;
    }
     
    .aiz-table22 .active .footable-page-link ,
    .aiz-table22 .footable-page-link:hover {
        background-color: var(--primary);
        color: #fff;
    }
    </style>
     
    <style>
        a.paginate_button.current {
        background: #008b91 !important;
    }
    body .dataTables_wrapper .dataTables_paginate .paginate_button.current{    color: white !important;
    }
    </style>


 