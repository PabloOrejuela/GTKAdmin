<div class="row-fluid" id="container">
    <div class="col-md-8">
		<table class="table table-bordered">
			<tbody>
				<tr>
					<td id="td_resumen" colspan="4">
						<h3 style="text-align: left;font-weight: bold;vertical-align: middle;">Resumen financiero</h3>
					</td>
				</tr>
				<tr>
					<td id="td_resumen"><strong>Cedula:</strong></td>
					<td id="td_resumen"><?php echo $socio->cedula ?></td>
					<td id="td_resumen"></td>
					<td id="td_resumen"></td>
				</tr>
				<tr>
					<td id="td_resumen"><strong>Nombre:</strong></td>
					<td id="td_resumen"><?php echo $socio->apellidos.' '.$socio->nombres ;?></td>
					<td id="td_resumen"><strong>Codigo Socio:</strong></td>
					<td id="td_resumen"><?php echo $socio->codigo_socio; ?></td>
				</tr>
				<tr>
					<td id="td_resumen"><strong>Patrocinados directos:</strong></td>
					<td><?php echo count($primero);  ?> </td>
					<td id="td_resumen"></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

