@extends('layouts.app')
@section('content')
<div class="col-md-7 col-md-offset-2 p-4 m-4">
	<div class="panel panel-default">
			@if(session('success'))
             	<div class="alert alert-success">
                	{{ session('success') }}
            	</div>
        	@endif
			<div class="panel-heading">
				<h3>Lista de Generos</h3>
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
		    		@foreach($generos as $genero)
		    			<tr id="tr_{{ $genero->id }}">
		    				<td>{{ $genero->id }}</td>
		    				<td>
		    					<input type="hidden" id="edit_{{ $genero->id }}" value="{{ $genero->nombre }}">
		    					<p id="parrafo_{{ $genero->id }}">{{ $genero->nombre }}</p>
		    				</td>
		    				<td><button id="borrar_{{ $genero->id }}" class="btn btn-primary" onclick="deleteGenre(this.id)">Eliminar</button></td>
		    				<td><button id="{{ $genero->id }}" class="btn btn-primary" onclick="edit(this.id,2)">Editar</button></td>
		    			</tr>
		    		@endforeach
		    	</tbody>
			</table>   
		</div>
		<button type="button" class="btn btn-success" onclick="getForm()">Crear Nuevo Genero</button>
		<div id="display" class="panel panel-default p-4 m-4" style="display:none;">
		<div class="panel-heading">
			<h3>crear Generos</h3>
		</div>
	<div class="panel-body">
		<form method="POST" action="{{ route('insertGenre') }}">
			{{ csrf_field() }}
			<label for="name" class="col-md-4 control-label">Nombre del Genero</label>
			<input type="text" name="generos" class="form-control">
			<br>
			<button class="btn btn-primary">Aceptar</button>
		</form>
		<button class="btn btn-danger pull-right" onclick="cancelFormIns()">Cancelar</button>
	</div>
	</div>
	</div>
@endsection