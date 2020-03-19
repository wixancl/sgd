    <!-- Left Panel -->
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">

                    <li class="active">
                        <a href="#"><i class="menu-icon fa fa-laptop"></i>Escritorio</a>
                    </li>

                    <li class="menu-title">UI elements</li><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-cogs"></i>Monitoreo Servidores</a>

                        <ul class="sub-menu children dropdown-menu">                            
                            <li>
                            	<i class="fa fa-id-badge"></i>
                    			       @if( Auth::user()->isRole('Tarqueq'))
              						        <a class="collapse-item" href="{{ URL::to('backuplogtarqueq') }}">Servidor Tarqueq</a> 
              					         @endif
                            </li>
                        </ul>

                        <ul class="sub-menu children dropdown-menu">                            
                            <li>
                                <i class="fa fa-id-badge"></i>
                                       @if( Auth::user()->isRole('Tarqueq'))
                                            <a class="collapse-item" href="{{ URL::to('tarqueq') }}">Servidor Tarqueq</a> 
                                         @endif
                            </li>
                        </ul>

                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>
    <!-- /#left-panel -->
