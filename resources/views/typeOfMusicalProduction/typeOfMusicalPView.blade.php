@extends('layouts.app')
@section('content')
<div class="col-md-8 col-md-offset-2 p-4 m-4">
	<div class="panel panel-default p-4 m-4">
		<table  class="table table-borderless">
			<thead>
				<tr>
					<th></th>
					<th>nombre</th>
					<th>Acciones</th>
				</tr>
			</thead>
		<tbody>
			@foreach($typeOfs as $typeOf)
			<tr>
				<td>{{ $typeOf->id }}</td>
				<td>{{ $typeOf->nombre }}</td>
				<td><button id="id_{{ $typeOf->id }}" class="btn btn-success" onclick="deleteTypeOf(this.id)">Eliminar</button></td>
			</tr>
			@endforeach
		</tbody>
		</table>
	</div>
</div>
@endsection
	