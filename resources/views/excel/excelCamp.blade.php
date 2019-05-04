@extends('layouts.app')
@section('content')
<div class="col-md-8 col-md-offset-2 p-4 m-4">
  <div class="panel panel-default p-4 m-4">
<table class="table table-borderless">
  			<thead>
  				<tr>
  					<th>email</th>
  					<th>Telefono</th>
  				</tr>
  			</thead>
  			<tbody>
  				@foreach($arreglos as $arreglo)
  				<tr>
  					<td>{{ $arreglo['email'] }}</td>
  					<td>{{ $arreglo['telefono']}}</td>
  				</tr>
  				@endforeach
  			</tbody>
  		</table>
  		</div>
	</div>
  		<br>
  		<div class="col-md-8 col-md-offset-2 p-4 m-4">
  		<div class="panel panel-default p-4 m-4">
      <div class="panel-heading">Crear Campaña</div>
    <div class="panel-body">
   <div class="form-group">
    <form method="POST" action="{{ route('sendCampa') }}">
      {{ csrf_field() }}
      <label for="name" class="col-md-4 control-label">Nombre de la campaña</label>
        <div class="col-md-4">
            <input id="nameCampaña" type="text" class="form-control" name="nameCampaña">
            <br>
            <button class="btn btn-success" name="enviarCampañaName">Enviar</button>
        </div>
    </form>
    </div>
  </div>
</div>
</div>
@endsection