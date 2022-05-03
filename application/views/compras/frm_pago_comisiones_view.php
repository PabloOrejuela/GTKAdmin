<div id="table_datos">
    <div class="col-md-12">
        <form action="lista_compras_confirmar" method="post" accept-charset="utf-8">
        <div class="col-md-12" id="grid_form">
            <h3>Confirmar pago de comisiones pendientes</h3>
			<h5>Corte al: <?php echo date('Y-m-d  H:i:s') ?></h5>
            <!-- <div class="col-md-5">
                <label for="fecha_evento">Provincia:</label>
            </div>
            <div class="mb-3 col-md-3" style="margin-top: 10px;">
				<select class="form-select form-select-md mb-3" id_provincia name="idprovincia" id="id_provincia">
					<?php
						foreach ($provincias as $key => $value) {
							echo '<option value="'.$value->idprovincia.'">'.$value->provincia.'</option>';
						}

						$js = 'id="id_provincia"';
						$url = base_url();
						echo '<script languaje="JavaScript">
								var varjs="'.$url.'";
								</script>';
					?>
				</select>
			</div>
        </div>
        <div class="col-md-5" id="grid_form">
            <div class="col-md-5">
                <label for="lugar_evento">Ciudad:</label>
            </div>
            <div class="col-md-5">
                <select id="id_ciudad" name="ciudad" class="form-control" value="<?php echo set_value('ciudad'); ?>"></select>
            </div>
        </div>
        <div class="col-md-5" id="grid_form">
            <div class="col-md-5">
                <label for="descripcion_evento">Cédula:</label>
            </div>
            <div class="col-md-3">
                <input type="text" name="cedula" value="<?php echo set_value('cedula'); ?>" class="form-control" >
            </div>
        </div> -->
        <div class="col-md-5" id="grid_form">
            <div class="col-md-3">
                <button type="submit" class="btn btn-primary">Enviar</button>
            </div>
        </div>
        </form>
		<br />
        <table class="table table-bordered table-striped table-condensed" id="table_resumen">
            <thead>
                <tr>
                    <th>CODIGO</th>
                    <th>NOMBRE</th>
                    <th>CEDULA</th>
                    <th>PROVINCIA</th>
                    <th>CIUDAD</th>
					<th>PUNTOS</th>
					<th>COMISION</th>
                    <th>CONFIRMAR PAGO</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    if (isset($rows) && $rows != NULL && $rows != 0) {
                        foreach ($rows as $value) {
                            echo '<tr>';
                            echo '<td>'.$value->codigo_socio.'</td>';
                            echo '<td>'.$value->nombres.' '.$value->apellidos.'</td>';
                            echo '<td>'.$value->cedula.'</td>';
                            echo '<td>'.$value->provincia.'</td>';
                            echo '<td>'.$value->ciudad.'</td>';
							echo '<td>'.$value->puntos.'</td>';
							echo '<td>'.$value->comision.'</td>';
                            echo '<td>'.anchor('compras/confirma_pago_comision/'.$value->idcomision, '<i class="fa fa-check-circle-o" aria-hidden="true"> CONFIRMAR</i>', 'attributes').'</td>';
                            echo '</tr>';
                        }
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
