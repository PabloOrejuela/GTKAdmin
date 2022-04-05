<div id="table_datos">
    <div class="col-md-12" >
		<h3>Activación de membresías para socios nuevos</h3>
		<table class="table table-bordered table-striped table-condensed" id="table_datos">
			<thead>
				<tr>
					<th id="td_resumen">Nombre</th>
					<th id="td_resumen">CI.</th>
					<th id="td_resumen">Código</th>
					<th id="td_resumen"></th>
				</tr>
			</thead>
			<tbody>
			<?php

				if($socios != NULL){
					foreach ($socios as $key => $value) {
						if($value->id != 8){
							echo '<tr>
							<td id="td_resumen">'.$value->apellidos.' '. $value->nombres.'</td>
							<td id="td_resumen">'.$value->cedula.'</td>
							<td id="td_resumen">'.$value->codigo_socio.'</td>';
							echo '<td style="text-align: center; width: 50px;">';
								echo form_open('socios/activa_codigo');
								echo '<input type="hidden" name="id" id="id" value="'.$value->id.'">';
								echo '<button type="submit" class="btn btn-primary">Confirmar y activar código</button>';
								echo form_close();
							echo '</td></tr>';
						}
					}
				}else{
					echo '<tr><td>No hay distribuidores regsitrados</td><td></td><td></td><td></td></tr>';
				}

				if (isset($result) && $result == 0) {
					echo '<tr><td>RESULTADO: </td><td colspan="5"><span id="resultado">Ha habido un error en la confirmación</span></td></tr>';
				}elseif (isset($result) && $result == 1) {
					echo '<tr><td>RESULTADO: </td><td colspan="5"><span id="resultado">La confirmación ha sido existosa</span></td></tr>';
				}
				?>
			</tbody>
		</table>
	</div>
</div>

