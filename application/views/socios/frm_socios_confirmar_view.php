<div id="table_datos">
    <div class="col-md-12">
        <form action="socios/lista_confirma_socios" method="post" accept-charset="utf-8">
        <div class="col-md-12" id="grid_form">
            <h3>Activación de membresías anuales</h3>
            <!-- <div class="col-md-5">
                <label for="fecha_evento">Provincia:</label>
            </div>
            <div class="mb-3 col-md-4" style="margin-top: 10px;">
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
                    <th>CANCELAR</th>
                </tr>
            </thead>
            <tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
        </table>
	</div>
</div>
