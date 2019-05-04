@extends('layouts.app')
@section('content')
<div class="col-md-8 col-md-offset-2 p-4 m-4">
	<div class="panel panel-default p-4 m-4">
		<div class="panel-heading"><h4><strong>Administrar informacion de las Bandas</strong></h4></div>
		<div class="panel-body">
			
			<table class="table table-borderless">
				<thead>
					<tr>
						<th></th>
						<th>Nombre</th>
						<th>Descripcion</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody>
					
					@foreach($bands as $band)
					<tr>
						<td>{{ $band->id }}</td>
						<td>{{ $band->nombre }}</td>
						<td>{{ $band->descripcion }}</td>
						<td><a href="/band/getIndiBand/{{ $band->id }}" class="btn btn-primary" role="button">Ver detalle</a></td>
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
	<a href="{{ route('home') }}" class="btn btn-primary" role="button">Atras</a>
</div>					
@endsection