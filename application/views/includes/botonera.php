<style>
	.dropdown-menu{
		font-size: 0.8rem;
		color: #eee;
	}

	#navbarDarkDropdownMenuLink {
		color: #eee;
	}
</style>

<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #1e4d04;">
  <div class="container-fluid">
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" 
          aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
  </button>

    <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
      <ul class="navbar-nav">
        <?php
            if ($per['socios'] == 1) {
                echo '<li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" 
                      id="navbarDarkDropdownMenuLink" role="button" 
                      data-bs-toggle="dropdown" aria-expanded="false" >Gestión de Distribuidores </a>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">';
                        echo '<li><a class="dropdown-item" href="'.base_url().'reportes/resumen_financiero">Resumen financiero</a></li>
															<li><a class="dropdown-item" href="'.base_url().'reportes/mi_red">Mi red</a></li>
                        			<li><a class="dropdown-item" href="'.base_url().'compras/comprar_producto">Comprar producto</a></li>
															<li><a class="dropdown-item" href="'.base_url().'inicio/edit_profile">Editar información</a></li>
															<li><hr class="dropdown-divider"></li>
                        			<li><a class="dropdown-item" href="'.base_url().'inicio/formulario_inscripcion_miembro">Inscripción S/N</a></li>';
                echo '</ul></li>';
            }

            if ($per['reportes'] == 1 && $per['administracion'] == 1) {
                echo '<li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" 
                    id="navbarDarkDropdownMenuLink" role="button" 
                    data-bs-toggle="dropdown" aria-expanded="false">Reportes</a>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">';

                      if ($per['administracion'] == 1) {

                        //echo '<li><a class="dropdown-item" href="'.base_url().'reportes/socios">Reporte de Comisiones por socio</a></li>';
                        //echo '<li><a class="dropdown-item" href="'.base_url().'reportes/lista_codigos">Lista de códigos</a></li>';
                        echo '<li><a class="dropdown-item" href="'.base_url().'reportes/reporte_actividad" target="_blank">Reporte de Actividad</a></li>';
                        //echo '<li><a class="dropdown-item" href="'.base_url().'reportes/recompras_mes">Reporte de Recompras del mes</a></li>';
                        //echo '<li><a class="dropdown-item" href="'.base_url().'reportes/comisiones_ciudad">Reporte de Comisiones por ciudad</a></li>';
                        echo '</ul></li>';
                      }else{
                        //echo '<li><a class="dropdown-item" href="'.base_url().'reportes">Reporte de Comisiones Personal</a></li></ul></li>';
                      }
            }
            if ($per['administracion'] == 1) {
                echo '<li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" 
                    id="navbarDarkDropdownMenuLink" role="button" 
                    data-bs-toggle="dropdown" aria-expanded="false">Administración</a>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                      <li><a class="dropdown-item" href="'.base_url().'compras">Compras por confirmar</a></li>
                      <li><a class="dropdown-item" href="'.base_url().'socios">Activar membresías</a></li>';
                //echo '<li><a class="dropdown-item" href="'.base_url().'compras/pago_comisiones">Pago de Comisiones</a></li>';
                      //<li><a class="dropdown-item" href="'.base_url().'testimonios/nuevo_testimonio">Ingreso de Testimonios</a></li>';
                //echo '<li><a class="dropdown-item" href="'.base_url().'respalda/exportarTablas">Exportar DB</a></li>';
                      //<li><a class="dropdown-item" href="'.base_url().'inicio/completa_linea">Añade línea códigos</a></li>';
                      //echo '<li><a class="dropdown-item" href="#">Registro de Pagos</a></li>';
                //echo '<li><a class="dropdown-item" href="'.base_url().'socios/form_elimina_socio">Eliminar socio</a></li>';
                      // echo '<li><a class="dropdown-item" href="'.base_url().'testimonios/editar_testimonio">Editar Testimonio</a></li>';
                echo '</ul></li>';
            }

            echo '<li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" 
                    id="navbarDarkDropdownMenuLink" role="button" 
                    data-bs-toggle="dropdown" aria-expanded="false">Ayuda <strong>?</strong></a>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                      <li><a class="dropdown-item" href="https://youtu.be/4FS2F_7QL7k" target="_blank">Como inscribir un Nuevo Socio</a></li>
                      <li><a class="dropdown-item" href="https://youtu.be/MitFLswZ9oo" target="_blank">Como realizar una compra</a></li>
											<li><a class="dropdown-item" href="https://view.genial.ly/62672576001ff80012694b6f/presentation-presentacion-te-ruso-27042022" target="_blank">Instructivo web</a></li>
											<li><a class="dropdown-item" href="'.base_url().'images/GTK-Presentación.pdf" target="_blank">Instructivo PDF</a></li>
											<li><a class="dropdown-item" href="http://www.gtk-ecuador.com">Ir a la web</a></li>
                    </ul>
                  </li>';


            echo '<li class="nav-item">
                    <a href="'.base_url().'inicio/logout" class="nav-link submit" onclick="#" id="navbarDarkDropdownMenuLink" >Salir</a>
                  </li>';
        ?>
      </ul>
    </div>
  </div>
</nav>

