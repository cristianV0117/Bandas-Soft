@extends('layouts.app')

@section('content')
   
   			<div class="col-md-8 col-md-offset-2 p-4 m-4">
   				<div class="panel panel-default p-4 m-4">
   					<div class="panel-heading">Crear Musico</div>
   					<div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('Musician') }}">
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label for="name" class="col-md-4 control-label">Nombre del musico</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-md-4 control-label">Cargo</label>

                            <div class="col-md-6">
                          
                                <select name="instrument" class="form-control">select
                                	<option></option>
                                @foreach($instrumentos as $instrumento)
                                	<option value="{{ $instrumento->id }}">{{ $instrumento->nombre }}</option>
                                @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Register
                                </button>
                            </div>
                        </div>
                    </form>
                    </div>
                </div>
               </div>
           
@endsection