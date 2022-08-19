<label class="col-md-3 col-from-label">{{translate('Category')}} <span class="text-danger">*</span></label>
                            <div class="col-md-8">
                                <select class="form-control aiz-selectpicker" name="category_id" id="category_id" data-live-search="true" required>
                                 
                                   
                                    @foreach ($categories as $category)
                                    <option  value="{{ $category->id }}">{{ $category->getTranslation('name') }}</option>                     
                                    @foreach ($category->childrenCategories as $thechildCategory)
                                @include('categories.child_category', ['child_category' => $thechildCategory])
                                    @endforeach
                                    @endforeach
                                </select>
                    </div>