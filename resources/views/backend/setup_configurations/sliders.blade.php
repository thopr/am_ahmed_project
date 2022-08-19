@extends('backend.layouts.app')

@section('content')

<h4 class="text-center text-muted">{{translate('Sliders')}}</h4>
		
		<div class="card">
			
			<div class="card-header">
				<h6 class="mb-0">{{ translate('Home Slider') }}</h6>
			</div>
			<div class="card-body">
	
				<form action="{{ route('business_settings.update') }}" method="POST" enctype="multipart/form-data">
					@csrf
					<div class="form-group">
						<label>{{ translate('Photos & Links') }}</label>
						<div class="home-slider-target">
							<input type="hidden" name="types[]" value="home_slider_images">
							<input type="hidden" name="types[]" value="home_slider_links">
							<input type="hidden" name="types[]" value="main_category_ids">
							@if (get_setting('home_slider_images') != null)
								@foreach (json_decode(get_setting('home_slider_images'), true) as $key => $value)
									<div class="row gutters-5">
										<div class="col-md-5">
											<div class="form-group">
												<div class="input-group" data-toggle="aizuploader" data-type="image">
					                                <div class="input-group-prepend">
					                                    <div class="input-group-text bg-soft-secondary font-weight-medium">{{ translate('Browse')}}</div>
					                                </div>
					                                <div class="form-control file-amount">{{ translate('Choose File') }}</div>
													<input type="hidden" name="types[]" value="home_slider_images">
					                                <input type="hidden" name="home_slider_images[]" class="selected-files" value="{{ json_decode(get_setting('home_slider_images'), true)[$key] }}">
					                            </div>
					                            <div class="file-preview box sm">
					                            </div>
				                            </div>
										</div>
										<div class="col-md d-none">
											<div class="form-group">
												<input type="hidden" name="types[]" value="home_slider_links">
												<input type="text" class="form-control" placeholder="http://" name="home_slider_links[]" value="{{ json_decode(get_setting('home_slider_links'), true)[$key] }}">
											</div>
										</div>
                                        <div class="col-md">
											<div class="form-group">
												<input type="hidden" name="types[]" value="main_category_ids">
                                                <div class="form-group row" id="main_category">
                                                    <div class="col-md-8">
                                                        @php
                                                         $categories = \App\Models\Category::where('parent_id', 0)->get();
                                                        @endphp
                                                        <select class="form-control aiz-selectpicker" name="main_category_ids[]" data-live-search="true" required>
                                                            @foreach ($categories as $category)
                                                            <option  value="{{ $category->id }}"  @if(get_setting('main_category_ids')) @if ($category->id==json_decode(get_setting('main_category_ids'), true)[$key]) selected @endif @endif >{{ $category->getTranslation('name') }}</option>                     
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>											</div>
										</div>
										<div class="col-md-auto">
											<div class="form-group">
												<button type="button" class="mt-1 btn btn-icon btn-circle btn-sm btn-soft-danger" data-toggle="remove-parent" data-parent=".row">
													<i class="las la-times"></i>
												</button>
											</div>
										</div>
									</div>
								@endforeach
							@endif
						</div>
						<button
							type="button"
							class="btn btn-soft-secondary btn-sm"
							data-toggle="add-more"
							data-content='
							<div class="row gutters-5">
								<div class="col-md-5">
									<div class="form-group">
										<div class="input-group" data-toggle="aizuploader" data-type="image">
											<div class="input-group-prepend">
												<div class="input-group-text bg-soft-secondary font-weight-medium">{{ translate('Browse')}}</div>
											</div>
											<div class="form-control file-amount">{{ translate('Choose File') }}</div>
											<input type="hidden" name="types[]" value="home_slider_images">
											<input type="hidden" name="home_slider_images[]" class="selected-files">
										</div>
										<div class="file-preview box sm">
										</div>
									</div>
								</div>
								<div class="col-md">
									<div class="form-group d-none">
										<input type="hidden" name="types[]" value="home_slider_links">
										<input type="text" class="form-control" placeholder="http://" name="home_slider_links[]">
									</div>
								</div>
                                <div class="col-md">
                                    <div class="form-group">
                                        <input type="hidden" name="types[]" value="main_category_ids">
                                        <div class="form-group row" id="main_category">
                                            <div class="col-md-8">
                                                @php
                                                 $categories = \App\Models\Category::where('parent_id', 0)->get();
                                                @endphp
                                                <select class="form-control aiz-selectpicker" name="main_category_ids[]" data-live-search="true" required>
                                                    @foreach ($categories as $category)
                                                    <option  value="{{ $category->id }}"  >{{ $category->getTranslation('name') }}</option>                     
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>											</div>
                                </div>
								<div class="col-md-auto">
									<div class="form-group">
										<button type="button" class="mt-1 btn btn-icon btn-circle btn-sm btn-soft-danger" data-toggle="remove-parent" data-parent=".row">
											<i class="las la-times"></i>
										</button>
									</div>
								</div>
							</div>'
							data-target=".home-slider-target">
							{{ translate('Add New') }}
						</button>
					</div>
					<div class="text-right">
						<button type="submit" class="btn btn-primary">{{ translate('Update') }}</button>
					</div>
				</form>
			</div>
		</div>



    @endsection