<style type="text/css">
	input[type="text"]{
		width: 90% !important;
	}
	input[type="email"]{
		width: 90% !important;
	}
	select{
		width: 90% !important;
	}
	table td{
		width: 50%;
		padding-right: 10px;
	}
	.info_personal_row input,select{
		width: 80% !important;
	}
</style>

<div class="container-fluid">
	<div class="row" id="container" style="margin-left: 7px;margin-bottom: 100px;">
		<h2>Editar información del Socio</h2>
		<h5><?php echo $mensaje; ?></h5>
		<div style="width: 100%;">
			<?php echo form_open('inicio/actualiza_datos_frm_registro');  ?>
			<table class="table-condensed">
				<tr></tr>
				<tr>
					<td>
					<div class="mb-3">
						<label for="cedula" class="form-label">CI:</label>
						<input type="text" class="form-control" id="form-control" placeholder="Cédula" name="cedula" value="<?php echo $socio[0]->cedula;?>" required/>
						<?php echo form_error('cedula'); ?>
					</div>
					</td>
					<td>
					<!-- <div class="mb-3">
						<label for="cedula_patrocinador" class="form-label">Patrocinador <span style="color: red;">(opcional)</span>:</label>
						<input type="text" class="form-control" id="form-control" placeholder="Cédula patrocinador" name="cedula_patrocinador"/>
						<?php //echo form_error('cedula'); ?>
					</div> -->
					</td>
				</tr>
				<tr>
					<td>
					<div class="mb-3">
						<label for="nombres" class="form-label">Nombres:</label>
						<input type="text" class="form-control" name="nombres" id="form-control" placeholder="Nombres" value="<?php echo $socio[0]->nombres;?>" required/>
						<?php echo form_error('nombres'); ?>
					</div>
					</td>
					<td>
					<div class="mb-3">
						<label for="apellidos" class="form-label">Apellidos:</label>
						<input type="text" class="form-control" name="apellidos" id="form-control" placeholder="Apellidos" value="<?php echo $socio[0]->apellidos;?>" required />
						<?php echo form_error('apellidos'); ?>
					</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<div class="mb-3">
						<label for="direccion" class="form-label">Dirección:</label>
						<input type="text" class="form-control" name="direccion" id="form-control" placeholder="Dirección" value="<?php echo $socio[0]->direccion;?>" />
						<?php echo form_error('direccion'); ?>
					</div>
					</td>
				</tr>
				
				<tr>
					<td>
					<div class="mb-3">
						<label for="celular" class="form-label">Celular:</label>
						<input type="text" class="form-control" name="celular" id="form-control" placeholder="Celular" value="<?php echo $socio[0]->celular;?>" />
						<?php echo form_error('celular') ?>
					</div>
					</td>
					<td>
					<div class="mb-3">
						<label for="email" class="form-label">Email:</label>
						<input type="email" class="form-control" name="email" id="form-control" placeholder="Email" value="<?php echo $socio[0]->email;?>" />
						<?php echo form_error('email') ?>
					</div>
					</td>
				</tr>
				<tr>
					<td><h5>Información de la Cuenta</h5></td>
				</tr>
				<tr>
					<td>
						<div class="mb-3">
							<label for="banco">Banco:</label>
							<select class="form-select" aria-label="Default select example" name="banco" id="id_banco">
								<?php 
								
									foreach ($bancos as $key => $banco) {
										if ($banco->idbanco == $socio[0]->idbanco && $socio[0]->idbanco != NULL && $socio[0]->idbanco != 0) {
											echo '<option value="'.$banco->idbanco.'" selected>'.$banco->banco.'</option>';
										}else {
											echo '<option value="'.$banco->idbanco.'">'.$banco->banco.'</option>';
										}
									}
								?>
							</select>
						</div>
					</td>
					<td>
					<div class="mb-3">
						<label for="tipo_cuenta">Tipo de cta:</label>
						<select name="tipo_cuenta" class="form-select form-control" id="tipo_cuenta">
							<?php 
								if ($socio[0]->idtipo_cuenta == 1) {
									echo '<option value="1">AHORROS</option>';
								}else{
									echo '<option value="2">CORRIENTE</option>';
								}
							?>
						</select>
					</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="mb-3" colspan="2">
							<label for="num_cta">Cuenta bancaria:</label>
							<input type="text" class="form-control info_patrocinador" name="num_cta" placeholder="cuenta" id="cuenta_socio" value="<?php echo $socio[0]->num_cta;?>">
						</div>
						</td>
					<td></td>
				</tr>
				<tr>
					<td><button type="submit" class="btn btn-primary">Guardar</button></td>
				</tr>
			</table>
			<?php echo form_close();?>
	    </div>
	</div>
</div>

<script type="text/javascript" charset="utf-8">
	
//Valida campo solo numeros
function valida(e){
	tecla = (document.all) ? e.keyCode : e.which;

	//Tecla de retroceso para borrar, siempre la permite
	if (tecla==8){
	    return true;
	}

	// Patron de entrada, en este caso solo acepta numeros
	patron =/[0-9]/;
	tecla_final = String.fromCharCode(tecla);
	return patron.test(tecla_final);
}
</script>
