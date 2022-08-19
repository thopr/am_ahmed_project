@extends('backend.layouts.app')

@section('content')

<div class="aiz-titlebar text-left mt-2 mb-3">
	<div class="align-items-center">
			<h1 class="h3">{{translate('All Zones')}}</h1>
	</div>
</div>

<div class="row">
	<div class="col-md-7">
		<div class="card">
		    <div class="card-header row gutters-5">
				<div class="col text-center text-md-left">
					<h5 class="mb-md-0 h6">{{ translate('Zones') }}</h5>
				</div>
				<div class="col-md-4">
					<form class="" id="sort_brands" action="" method="GET">
						<div class="input-group input-group-sm">
					  		<input type="text" class="form-control" id="search" name="search"@isset($sort_search) value="{{ $sort_search }}" @endisset placeholder="{{ translate('Type name & Enter') }}">
						</div>
					</form>
				</div>
		    </div>
		    <div class="card-body">
		        <table class="table aiz-table mb-0">
		            <thead>
		                <tr>
		                    <th>#</th>
		                    <th>{{translate('Name')}}</th>		                   
		                    <th>{{translate('Cords')}}</th>		                   
		                    <th class="text-right">{{translate('Options')}}</th>
		                </tr>
		            </thead>
		            <tbody>
		                @foreach($zones as $key => $zone)
		                    <tr>
		                        <td>{{ ($key+1) + ($zones->currentPage() - 1)*$zones->perPage() }}</td>
		                        <td>{{ $zone->name }}</td>		
                                @php
                                
                                $cords=json_decode($zone->polygon_cords);
                                @endphp										
		                        <td>
                                @foreach($cords as $cord)   
                                {{$cord }}<br/>
                                @endforeach
                                </td>												
		                        <td class="text-right">
		                       
		                            <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete" data-href="{{route('zones.destroy', $zone->id)}}" title="{{ translate('Delete') }}">
		                                <i class="las la-trash"></i>
		                            </a>
		                        </td>
		                    </tr>
		                @endforeach
		            </tbody>
		        </table>
		        <div class="aiz-pagination">
                	{{ $zones->appends(request()->input())->links() }}
            	</div>
		    </div>
		</div>
	</div>
	<div class="col-md-5">
		<div class="card">
			<div class="card-header">
				<h5 class="mb-0 h6">{{ translate('Import Zones') }}</h5>
			</div>
			<div class="card-body">
                <p style="
                font-size: 15px;
            
            
            ">{{ translate('To get kml file please follow the steps in this video :')}}</p>
                <a href="https://www.youtube.com/watch?v=N9iWSd5PPnA&ab_channel=Craver" ?> {{ translate('video link')}} </a>
                <p style="
                font-size: 15px;
                color: rgb(206, 67, 12);
            
            ">{{ translate('Note this will remove all existing zones.') }}</p>

                

				<form action="{{ route('zones.store') }}"  method="POST" enctype="multipart/form-data">
					@csrf
	
					<div class="form-group mb-3">
						<label for="name">{{translate('Kml file')}} </label>
                        <div class="input-group mb-3">
                            <label class="input-group-text" for="inputGroupFile01">{{translate('Upload')}}</label>
                            <input type="file" name='kml' class="form-control" id="inputGroupFile01">
                          </div>
					</div>
				
					<div class="form-group mb-3 text-right">
						<button type="submit" class="btn btn-primary">{{translate('Save')}}</button>
					</div>
				</form>


            
            </div>
		</div>
	</div>
</div>

@endsection

@section('modal')
    @include('modals.delete_modal')
@endsection

@section('script')
<script type="text/javascript">
    function sort_brands(el){
        $('#sort_brands').submit();
    }
</script>
@endsection
