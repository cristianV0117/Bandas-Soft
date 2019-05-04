@extends('layouts.app')
@section('content')
<div class="col-md-8 col-md-offset-2 p-4 m-4">
	<div class="panel panel-default p-4 m-4">
		<div class="panel-heading">
				<h3>Lista de Musicos</h3>
			</div>
		<table class="table table-borderless">
			<thead>
				<tr>
					<th></th>
					<th>Nombre</th>
					<th>Cargo</th>
					<th>Acciones</th>
				</tr>
			</thead>
			<tbody>
				@foreach($musicians as $musician)
				<tr>
					<td>{{ $musician->id }}</td>
					<td>{{ $musician->nombre }}</td>
					<td>{{ $musician->cargo }}</td>
					<td><button id="id_{{ $musician->id }}" class="btn btn-success" onclick="deleteMusician(this.id)">Eliminar</button></td>
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
</div>

@endsection