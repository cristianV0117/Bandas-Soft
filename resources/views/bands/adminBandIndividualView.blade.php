@extends('layouts.app')
@section('content')
<div class="col-md-8 col-md-offset-2 p-4 m-4">
	<div class="panel panel-default p-4 m-4">
		@foreach($nameBands as $nameBand)
		<div class="panel-heading"><h4><strong>Administrar informacion individual de {{ $nameBand->nombre }} </strong></h4></div>
		@endforeach
		<div class="panel-body">
			<table class="table table-borderless">
				<thead>
					<tr>
						<th></th>
						<th>Nombre</th>
						<th>Descripcion</th>
						<th>Pais</th>
						<th colspan="2">Acciones</th>
					</tr>
				</thead>
				<tbody>
					@foreach($inforGenerales as $inforGeneral)
					<tr id="tr_{{ $inforGeneral->id }}">
						<td>{{ $inforGeneral->id }}</td>
						<td>
							<input type="hidden" id="edit_{{ $inforGeneral->id }}" value="{{ $inforGeneral->nombre }}">
		    				<p id="parrafo_{{ $inforGeneral->id }}">{{ $inforGeneral->nombre }}</p>
						</td>
					<td>{{  $inforGeneral->descripcion}}</td>
						<td>{{ $inforGeneral->pais }}</td>
						<td><button id="eli_{{ $inforGeneral->id }}" onclick="deleteBand(this.id)" class="btn btn-success">Eliminar Banda</button></td>
						<td><button id="{{ $inforGeneral->id }}" class="btn btn-success" onclick="edit(this.id,3)">Editar Banda</button></td>
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
	<br>
	<div class="panel panel-default p-4 m-4">
		@foreach($nameBands as $nameBand)
		<div class="panel-heading"><h4><strong>Administrar Generos de {{ $nameBand->nombre }} </strong></h4></div>
		@endforeach
		<div class="panel-body">
			<table class="table table-borderless">
				<thead>
					<tr>
						<th></th>
						<th>Genero</th>
						<th colspan="2">Acciones</th>
					</tr>
				</thead>
				<tbody>
					@foreach($infoGenres as $infoGenre)
					<tr>
						
						<td>{{ $infoGenre->idBandGenre }}</td>
						<td>{{ $infoGenre->genero }}</td>
						<td><button id="eli_{{ $infoGenre->idBandGenre }}" onclick="deleteGenreBand(this.id)" class="btn btn-success">Eliminar Genero</button></td>
						<td><button class="btn btn-success">Editar Genero</button></td>						
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
	<br>
	<div class="panel panel-default p-4 m-4">
		@foreach($nameBands as $nameBand)
		<div class="panel-heading"><h4><strong>Administrar sellos discograficos de {{ $nameBand->nombre }} </strong></h4></div>
		@endforeach
		<div class="panel-body">
			<table class="table table-borderless">
				<thead>
					<tr>
						<th>Sellos Discograficos</th>
						<th colspan="2">Acciones</th>
					</tr>
				</thead>
				<tbody>
					@foreach($infoRecords as $infoRecord)
					<tr>
						<td>{{ $infoRecord->selloDiscografico }}</td>
						<td><button class="btn btn-success">Editar Sello</button></td>
						<td><button class="btn btn-success">Eliminar Sello</button></td>
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
	<a href="{{ route('getInfoBand') }}" class="btn btn-primary" role="button">Atras</a>
</div>
@endsection