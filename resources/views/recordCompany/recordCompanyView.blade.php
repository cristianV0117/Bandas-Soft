@extends('layouts.app')

@section('content')
   
   			<div class="col-md-8 col-md-offset-2 p-4 m-4">
   				<div class="panel panel-default p-4 m-4">
   					<div class="panel-heading">Crear Sello Discografico</div>
   					<div class="panel-body">
                    @if(session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif
                    <form class="form-horizontal" method="POST" action="{{ route('insertRecordCompany')}}">
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label for="name" class="col-md-4 control-label">Nombre del Sello Discografico</label>

                            <div class="col-md-6">
                                <input id="nameRecord" type="text" class="form-control" name="nameRecord" required autofocus>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-md-4 control-label">Descripcion del sello</label>

                            <div class="col-md-6">
                                <textarea id="descRecord" name="descRecord" class="form-control"></textarea>
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
                    <button class="btn btn-success" onclick="showTable()" >Lista de sellos discograficos</button>
                    </div>
                </div>
                <div id="tablesC" style="visibility:hidden ;" class="panel panel-default p-4 m-4">
                <table  class="table table-borderless">
                        <thead>
                            <tr>
                                <th></th>
                                <th>Nombre</th>
                                <th>Descripcion</th>
                                <th>Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($recordComapanies as $company)
                            <tr>
                                <td>{{ $company->id }}</td>
                                <td>{{ $company->nombre }}</td>
                                <td>{{ $company->descripcion }}</td>
                                <td><button id="id_{{ $company->id }}" class="btn btn-success" onclick="deleteRecordCompany(this.id)">Eliminar</button></td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
               </div>
           
@endsection