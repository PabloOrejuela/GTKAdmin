<style>
	label {
		font-size: 1rem;
		margin-bottom: 0px;
	}
	input {
		margin-top: 0px;
	}
	span {
		color: red;
	}
</style>

<div id="table_datos">
	<div class="col-md-12">
    	<h3>Compra de Producto</h3>
		<h5><span><?php echo $mensaje; ?></span></h5>
        <div class="col-md-4">
    	<?php
    	   echo form_open('compras/graba_compra');
    		if (isset($socio) && $socio != NULL) { ?>
				
				<div class="mb-3">
					<label for="floatingInput">Nombre Socio:</label>
					<input 
						type="text" 
						class="form-control" 
						id="floatingInput" 
						value="<?php echo $socio->nombres.' '.$socio->apellidos ?>" 
						name="cedula" 
						disabled
					/>
					
				</div>
				<div class="mb-3">
					<label for="floatingInput">Código:</label>
					<input 
						type="text" 
						class="form-control" 
						id="floatingInput" 
						value="<?php echo $socio->codigo_socio; ?>"
						name="codigo" 
						disabled
					/>
					
				</div>
				<div class="mb-3">
					<label class="form-label">Cédula:</label>
					<input 
						type="text" 
						class="form-control" 
						id="floatingInput" 
						value="<?php echo $socio->cedula; ?>"
						name="cedula" 
						disabled
					/>
					
				</div>
				<div class="mb-3" style="margin-top: 10px;;">
					<label class="form-label">Seleccione un paquete:</label>
					<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="idpaquete">
						<?php
							foreach ($paquetes as $key => $value) {
								echo '<option value="'.$value->idpaquete.'">$ '.number_format($value->paquete, 2).'</option>';
							}
						?>
					</select>
					
				</div>
                <tr>
                    <td >
                        <button type="submit" class="btn btn-primary">Comprar</button>
                        <?php 
							}
							echo form_hidden('idsocio', $socio->idsocio);
							echo form_hidden('id', $socio->id);
							echo form_close(); 
						?>
                    </td>
                </tr>
        </div>
    </div>
</div>
