@extends('layouts.app')
@section('content')
<div class="col-md-9 col-md-offset-2 p-4 m-4">
	<div class="panel panel-default">
		@if(session('success'))
             <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif
		<div class="panel-heading">
			<h3>Lista de Instrumentos</h3>
		</div>
		<table id="tableInstru" class="table table-borderless">
	  		<thead>
			    <tr>
			      <th scope="col">ID</th>
			      <th scope="col">Nombre</th>
			      <th scope="col">Acciones</th>
			      <th scope="col">Acciones</th>

			    </tr>
		  	</thead>
		    <tbody>
		  	@foreach($instrumentos as $instrumento)
			    <tr id="tr_{{ $instrumento->id }}">
				    <td>{{ $instrumento->id }}</td>
				    <td>
				    	<input type="hidden" id="edit_{{ $instrumento->id }}" value=
				    	"{{ $instrumento->nombre }}" name="editInstrument">
				    	<p id="parrafo_{{ $instrumento->id }}">{{ $instrumento->nombre }}</p>
				    </td>
				    <td><button id="{{ $instrumento->id }}" class="btn btn-primary" onclick="edit(this.id,1)">Editar</button></td>
				    <td><button id="{{ $instrumento->id }}" class="btn btn-primary" onclick="deleteInstrument(this.id)">Eliminar</button></td>
				    
			    </tr>
			@endforeach
		    </tbody>
		</table>   
	</div>
	<button type="button" class="btn btn-success" onclick="getForm()">Crear Nuevo Instrumento</button>
	<div id="display" class="panel panel-default p-4 m-4" style="display:none;">
		<div class="panel-heading">
			<h3>crear Instrumentos</h3>
		</div>
	<div class="panel-body">
		<form method="POST" action="{{ route('insertInstrument') }}">
			{{ csrf_field() }}
			<label for="name" class="col-md-4 control-label">Nombre del Instrumento</label>
			<input type="text" name="instrumento" class="form-control">
			<br>
			<button class="btn btn-primary">Aceptar</button>
		</form>
		<button class="btn btn-danger pull-right" onclick="cancelFormIns()">Cancelar</button>
	</div>
	</div>
</div>
@endsection