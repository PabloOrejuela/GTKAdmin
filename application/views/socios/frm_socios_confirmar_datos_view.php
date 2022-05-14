<div id="table_datos">
    <div class="col-md-12">
        <form action="lista_confirma_socios" method="post" accept-charset="utf-8">
        <div class="col-md-12" id="grid_form">
            <h3>Activación de membresías anuales</h3>
            <!-- <div class="col-md-5">
                <label for="fecha_evento">Provincia:</label>
            </div>
            <div class="mb-3 col-md-4" style="margin-top: 10px;">
				<select class="form-select form-select-md mb-3" id_provincia name="idprovincia" id="id_provincia">
					<?php
						// foreach ($provincias as $key => $value) {
						// 	echo '<option value="'.$value->idprovincia.'">'.$value->provincia.'</option>';
						// }

						// $js = 'id="id_provincia"';
						// $url = base_url();
						// echo '<script languaje="JavaScript">
						// 		var varjs="'.$url.'";
						// 		</script>';
					?>
				</select>
			</div>
        </div> -->
        <div class="col-md-5" id="grid_form">
            <div class="col-md-3">
                <button type="submit" class="btn btn-primary">Enviar</button>
            </div>
        </div>
        </form>
        <table class="table table-bordered table-striped table-condensed" id="table_resumen">
            <thead>
                <tr>
                    <th>CODIGO</th>
                    <th>NOMBRE</th>
                    <th>CEDULA</th>
					<th>FECHA</th>
                    <th>CONFIRMAR</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    if (isset($filas) && $filas != NULL && $filas != 0) {
                        foreach ($filas as $value) {
                            echo '<tr>';
                            echo '<td>'.$value->codigo_socio.'</td>';
                            echo '<td>'.$value->nombres.' '.$value->apellidos.'</td>';
                            echo '<td>'.$value->cedula.'</td>';
							echo '<td>'.$value->fecha.'</td>';
                            echo '<td>'.anchor('socios/confirma_pago_membresia/'.$value->idmembresia, '<i class="fa fa-check-circle-o" aria-hidden="true"> CONFIRMAR</i>', 'attributes').'</td>';
                            //echo '<td>'.anchor('socios/elimina_membresia/'.$value->idmembresia, '<span style="color:red;"><i class="fa fa-ban" aria-hidden="true"> CANCELAR</i>', 'attributes').'</span></td>';
                            echo '</tr>';
                        }
                    }else{
						echo '<tr><td colspan="6">No hay membresías sin confirmar</td></tr>';
					}

					if (!isset($result) || $result == NULL) {
						//No muestro nada
					}elseif (isset($result) && $result == 0) {
						echo '<tr><td>RESULTADO: </td><td colspan="5"><span id="resultado">Ha habido un error en la confirmación</span></td></tr>';
					}elseif (isset($result) && $result == 1) {
						echo '<tr><td>RESULTADO: </td><td colspan="5"><span id="resultado">La confirmación del pago ha sido existosa</span></td></tr>';
					}
					?>
            </tbody>
        </table>
	</div>
</div>
