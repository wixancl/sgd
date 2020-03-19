@extends('layouts.base')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
			<!--BreadCrumb-->
			<ol class="breadcrumb">
			  <li><a href="{{ URL::to('users') }}">Usuarios</a></li>
			  <li class="active">Asignar Departamentos (Referentes)</li>
			</ol>
			<!--FIN BreadCrumb-->
            <div class="panel panel-default">
				<div class="panel-heading">Asignar Referentes de Usuario</div>
				<div class="panel-body">
					<form class="form-horizontal" role="form" method="POST" action="{{ URL::to('users/saveRef') }}">
						{{ csrf_field() }} 
						<!--Lista de Selección Multiple-->
						<div class="form-group">
                            <label for="refUsuarios" class="col-md-4 control-label">Referentes</label>

                            <div class="col-md-6">
								<select id="refUsuarios" name="refUsuarios[]" class="form-control" multiple size="10" required>
									@foreach($referentes as $referente)
										@if($user->isRef($referente->name))
											<option value="{{ $referente->id }}" selected>{{ $referente->name }}</option>
										@else
											<option value="{{ $referente->id }}">{{ $referente->name }}</option>
										@endif
									@endforeach
								</select>    
                            </div>
                        </div>
						<!--ID Usuario-->
						<input type="hidden" name="userID" id="userID" value="{{$id}}">
						
						<!--Boton Submit-->
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Asignar
                                </button>
                            </div>
                        </div>
					</form>
				</div>
			</div>
        </div>
    </div>
</div>
@endsection