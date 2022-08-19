<table class="table table-bordered aiz-table">
	<thead>
		<tr>
			<td class="text-center">
				{{translate('Variant')}}
			</td>
            <td class="text-center">
				{{translate('value')}}
			</td>
			<td class="text-center">
				{{translate('Price')}}
			</td>		
		
		
		</tr>
	</thead>
	<tbody>
	@foreach ($all_attribute_values as $key => $attribute_value)

	
			<tr class="variant">
                <td>
					<label for="" class="control-label">{{ $attribute_value->attribute->name }}</label>
				</td>
				<td>
					<label for="" class="control-label">{{ $attribute_value->value }}</label>
				</td>
				<td>
					<input disabled type="number" lang="en" name="price_attr_id_{{ $attribute_value->id }}" value="{{ $attribute_value->price }}" min="0" step="0.01" class="form-control" required>
				</td>			
			
		
			</tr>

	
	
	@endforeach
	</tbody>
</table>