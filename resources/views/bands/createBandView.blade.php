@extends('layouts.app')
@section('content')
<div class="col-md-8 col-md-offset-2 p-4 m-4">
	<div class="panel panel-default p-4 m-4">
		<div class="panel-heading"><h4><strong>Crear Banda</strong></h4></div>
			<div class="panel-body">
				<form method="POST" action="{{ route('registerBand') }}">
				{{ csrf_field() }}
					<label for="name" class="col-md-4 control-label">Nombre de la banda</label>
					<input type="text" name="nameBand" class="form-control">
					<br>
					<hr>
					<label for="name" class="col-md-4 control-label">Descripcion de la Banda</label>
					<textarea name="descBand" class="form-control" placeholder="Descripcion..."></textarea>
					<br>
					<hr>
					<label for="name" class="col-md-4 control-label">Fecha de creacion de la banda</label>
					<input type="date" name="dateBand">
					<hr>
					<br>
					<br>
					<hr>
					<label for="name" class="col-md-4 control-label">Pais de procedencia de la banda</label>
					<select name="countryName" class="form-control">
						<option></option>
						@foreach($countries as $country)
						<option value="{{ $country->id }}">{{ $country->nombre }}</option>
						@endforeach
					</select>
					<br>
					<hr>
					<label for="name" class="col-md-4 control-label">Genero</label>
					<table class="table table-borderless">
						<thead>
							<tr>
								<th></th>
								<th>Nombre</th>
								<th>Accion</th>
							</tr>
						</thead>
						<tbody>
							@foreach($genres as $genre)
							<tr>
								<td>{{ $genre->id }}</td>
								<td>{{ $genre->nombre }}</td>
								<td><input value="{{ $genre->id }}" type="checkbox" name="checkNameG_[]" class="form-check-input"></td>
							</tr>
							@endforeach
						</tbody>
					</table>
					<br>
					<hr>
					<label for="name" class="col-md-4 control-label">Sello  Discografico</label>
					<br>
					<br>
					<table class="table table-borderless">
						<thead>
							<tr>
								<th></th>
								<th>Nombre</th>
								<th>Accion</th>
							</tr>
						</thead>
						<tbody>
							@foreach($records as $record)
							<tr>
								<td>{{ $record->id }}</td>
								<td>{{ $record->nombre }}</td>
								<td><input value="{{ $record->id }}" type="checkbox" name="checkName_[]" class="form-check-input"></td>
							</tr>
							@endforeach
						</tbody>
					</table>
					<button class="btn btn-primary pull-right">Registrar</button>
			</form>
		</div>
	</div>
	<a href="{{ route('home') }}" class="btn btn-primary" role="button">Atras</a>
</div>
@endsection