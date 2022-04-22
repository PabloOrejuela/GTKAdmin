<div class="row-fluid" id="container">
    <div class="col-md-8">
		<table class="table table-light">
			<tbody>
				<tr>
					<td id="td_resumen" colspan="3">
						<h3 style="text-align: left;font-weight: bold;vertical-align: middle;">Resumen financiero</h3>
					</td>
					<td><img src="<?php echo base_url().'images/niveles/'.$socio->imagen; ?>.png" alt="zafiro" width="150"></td>
				</tr>
				<tr>
					<td id="td_resumen"><strong>Cedula:</strong></td>
					<td id="td_resumen"><?php echo $socio->cedula; ?></td>
					<td id="td_resumen"><strong>Rango:</strong></td>
					<td id="td_resumen" style="text-align: center;font-weight:bold;"><?php echo $socio->rango; ?></td>
				</tr>
				<tr>
					<td id="td_resumen"><strong>Nombre:</strong></td>
					<td id="td_resumen"><?php echo $socio->apellidos.' '.$socio->nombres ;?></td>
					<td id="td_resumen"><strong>Codigo Socio:</strong></td>
					<td id="td_resumen"><?php echo $socio->codigo_socio; ?></td>
				<tr>
					<td id="td_resumen"><strong>Patrocinados directos:</strong></td>
					<td><?php echo count($nivel_1);  ?> </td>
					<td id="td_resumen"></td>
					<td id="td_resumen"></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

