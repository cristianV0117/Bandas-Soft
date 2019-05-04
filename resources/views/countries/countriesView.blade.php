@extends('layouts.app')
@section('content')

<div class="col-md-8 col-md-offset-2 p-4 m-4">
	<div class="panel panel-default p-4 m-4">
		<div class="panel-heading">Lista de paises</div>
		<div class="panel-body">
			{{ $countries->links() }}
			<table class="table table-borderless">
				<thead>
					<tr>
						<th></th>
						<th>Nombre del pais</th>
					</tr>
				</thead>
				<tbody>
					@foreach($countries as $country)
					<tr>
						<td>{{ $country->id }}</td>
						<td>{{ $country->nombre }}</td>
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
</div>

@endsection