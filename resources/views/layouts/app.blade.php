<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>BBW</title>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">

                    <!-- Collapsed Hamburger -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse" aria-expanded="false">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Branding Image -->
                    <a class="navbar-brand" href="{{ url('/') }}">
                        B B W
                    </a>
                </div>

                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                    <!-- Left Side Of Navbar -->
                    <ul class="nav navbar-nav">
                    @guest
                    @else
                    @if(Auth::user()->hasRole('admin'))
                       <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"aria-expanded="false" aria-haspopup="true">
                                AdminBands <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="{{ route('createBand') }}">
                                            Crear Banda 
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('getInfoBand') }}">
                                            Aministrar informacion general de la banda 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                            Crear Line UP 
                                    </a>
                                </li>    
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"aria-expanded="false" aria-haspopup="true">
                                AdminMusician <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="{{ route('MusicianView') }}">
                                            Crear Musico
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('getMusicians') }}">
                                            Administrar Musico
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"aria-expanded="false" aria-haspopup="true">
                                AdminInstruments <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="{{ route('getInstrumentsListView') }}">
                                            Creacion y Lista de Instrumentos
                                    </a>
                                </li>  
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"aria-expanded="false" aria-haspopup="true">
                                AdminGenres <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="{{ route('getGenresView') }}">
                                            Creacion y Lista de Generos
                                    </a>
                                </li>  
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"aria-expanded="false" aria-haspopup="true">
                                AdminExtra <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="{{ route('makeRecordCompany') }}">
                                            Crear y administrar sellos discograficos
                                    </a>
                                </li> 
                                <li>
                                    <a href="{{ route('getViewTypeOfMusical') }}">
                                            Creacion y Lista de tipos de producciones musicales
                                    </a>
                                </li> 
                                <li>
                                    <a href="{{ route('getListCountrys') }}">
                                            Lista de Paises Disponibles
                                    </a>
                                </li>     
                            </ul>
                        </li>
                         @else
                    @endif
                    @endguest
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Authentication Links -->
                        @guest
                            <li><a href="{{ route('login') }}">Login</a></li>
                            <li><a href="{{ route('register') }}">Register</a></li>
                        @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        @yield('content')
    </div>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/logicJS.js') }}"></script>
</body>
</html>
