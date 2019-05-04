@extends('layouts.app')
@section('content')
<div class="col-md-8 col-md-offset-2 p-4 m-4">
  <div class="panel panel-default p-4 m-4">
   		 @if(session('success'))
            <div class="alert alert-success">
                 {{ session('success') }}
             </div>
         @endif
      <div class="panel-heading">Importar Excel</div>
   		<form method="POST" action="{{ route('sendExcel') }}" enctype="multipart/form-data">
   			{{ csrf_field() }}
  		<div class="custom-file">
          <div class="input-group-prepend">
            <input type="file" class="form-control"  name="inputGroupFile01">
            <br>
            <button type="submit" class="btn btn-success">enviar</button>
          </div>
      </div>
  		</form>
</div>
</div>
@endsection