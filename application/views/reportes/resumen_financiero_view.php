<div class="row-fluid" id="container">
    <div class="col-md-9">
		<table class="table table-light">
			<tbody>
				<tr>
					<td id="td_resumen" colspan="3">
						<h3 style="text-align: left;font-weight: bold;vertical-align: middle;">Resumen financiero</h3>
					</td>
					<td><img src="<?php echo base_url().'images/niveles/'.$socio->imagen; ?>.png" alt="zafiro" width="100"></td>
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
					<td><?php echo count($nivel_1);  ?></td>
					<td id="td_resumen"><strong>Total Miembros:</strong></td>
					<td id="td_resumen"><?php echo $total_miembros.' miembros'; ?></td>
				</tr>
				<tr>
					<td id="td_resumen"><strong>Total miembros activos:</strong></td>
					<td><?php echo $red_activos !== NULL ? count($red_activos) : 0 ; ?></td>
					<td id="td_resumen"></td>
					<td id="td_resumen"></td>
				</tr>
			</tbody>
		</table>
		<br />
		<table class="table table-light table-striped" style="margin-bottom:50px;">
			<tbody>
				<thead>
					<tr>
						<th></th>
						<th style="text-align: right;">Puntos</th>
						<th style="text-align: right;">Total</th>
					</tr>
				</thead>
				<tr>
					<td><strong>Bonos Inicio Rápido:</strong></td>
					<td style="text-align: right;"></td>
					<td style="text-align: right;"><?php echo'$ '. $bono_inicio; ?></td>
				</tr>
				<tr>
					<td><strong>Punto por Compras del periodo:</strong></td>
					<td style="text-align: right;"><?php echo $puntos; ?></td>
					<td style="text-align: right;"><?php echo'$ '. number_format($puntos); ?></td>
				</tr>
				<?php

					$porcentajes = array(
						1 => 30, 
						2 => 15, 
						3 => 10, 
						4 => 5, 
						5 => 5, 
						6 => 3, 
						7 => 3, 
						8 => 2, 
						9 => 2, 
						10 => 1, 
						11 => 1,
						13 => 1,
						14 => 1,
						15 => 1,
						16 => 1,
						17 => 1,
						18 => 1,
						19 => 1,
						20 => 1
					);

					if (isset($red_activos) && $red_activos != NULL) {

						$nivel_1 = $this->procesos_model->_get_hijos($id);
						$nivel_2 = $this->procesos_model->_get_segundo_nivel($nivel_1);
						$segundo = $this->procesos_model->_arma__nivel($nivel_2);

						$nivel_3 = $this->procesos_model->_get_siguiente_nivel($nivel_2);
						$tercero = $this->procesos_model->_arma__nivel($nivel_3);

						$nivel_4 = $this->procesos_model->_get_siguiente_nivel($nivel_3);
						$cuarto = $this->procesos_model->_arma__nivel($nivel_4);

						$nivel_5 = $this->procesos_model->_get_siguiente_nivel($nivel_4);
						$quinto = $this->procesos_model->_arma__nivel($nivel_5);

						$nivel_6 = $this->procesos_model->_get_siguiente_nivel($nivel_5);
						$sexto = $this->procesos_model->_arma__nivel($nivel_6);

						$nivel_7 = $this->procesos_model->_get_siguiente_nivel($nivel_6);
						$septimo = $this->procesos_model->_arma__nivel($nivel_7);

						$nivel_8 = $this->procesos_model->_get_siguiente_nivel($nivel_7);
						$octavo = $this->procesos_model->_arma__nivel($nivel_8);

						$nivel_9 = $this->procesos_model->_get_siguiente_nivel($nivel_8);
						$noveno = $this->procesos_model->_arma__nivel($nivel_9);

						$nivel_10 = $this->procesos_model->_get_siguiente_nivel($nivel_9);
						$decimo = $this->procesos_model->_arma__nivel($nivel_10);


						/*PUNTOS*/ 

						$puntos_primero = $this->comisiones_model->_puntos_nivel($nivel_1);
						$subtotal_primero = ($puntos_primero*$porcentajes[1])/100;

						$puntos_segundo = $this->comisiones_model->_puntos_nivel($segundo);
						$subtotal_segundo = ($puntos_segundo*$porcentajes[2])/100;

						$puntos_tercero = $this->comisiones_model->_puntos_nivel($tercero);
						$subtotal_tercero = ($puntos_tercero*$porcentajes[3])/100;

						$puntos_cuarto = $this->comisiones_model->_puntos_nivel($cuarto);
						$subtotal_cuarto = ($puntos_cuarto*$porcentajes[4])/100;

						$puntos_quinto = $this->comisiones_model->_puntos_nivel($quinto);
						$subtotal_quinto = ($puntos_quinto*$porcentajes[5])/100;

						$puntos_sexto = $this->comisiones_model->_puntos_nivel($sexto);
						$subtotal_sexto = ($puntos_sexto*$porcentajes[6])/100;

						$puntos_septimo = $this->comisiones_model->_puntos_nivel($septimo);
						$subtotal_septimo = ($puntos_septimo*$porcentajes[7])/100;

						$puntos_octavo = $this->comisiones_model->_puntos_nivel($octavo);
						$subtotal_octavo = ($puntos_octavo*$porcentajes[8])/100;

						$puntos_noveno = $this->comisiones_model->_puntos_nivel($noveno);
						$subtotal_noveno = ($puntos_noveno*$porcentajes[9])/100;

						$puntos_decimo = $this->comisiones_model->_puntos_nivel($decimo);
						$subtotal_decimo = ($puntos_decimo*$porcentajes[10])/100;


						if (count($red_activos) > 0 && count($red_activos) < 2) {

							$total = $puntos + $bono_inicio + $subtotal_primero + $subtotal_segundo 
								+ $subtotal_tercero;

							$total_puntos = $puntos + $puntos_primero + $puntos_segundo + $puntos_tercero;
	
							echo '<tr>
								<td><strong>Primer nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_primero.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_primero, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>Segundo nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_segundo.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_segundo, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>Tercer nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_tercero.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_tercero, 2) .'</td>
							</tr>';

							//TOTAL
							echo '<tr>
								<td><strong>TOTAL:</strong></td>
								<td style="text-align: right;">TOTAL PUNTOS</td>
								<td style="text-align: right;"><strong>$ '.number_format($total, 2) .'</strong></td>
							</tr>';
	
						}

						if (count($red_activos) >= 2 && count($red_activos) < 3) {

							$total = $puntos + $bono_inicio + $subtotal_primero + $subtotal_segundo 
								+ $subtotal_tercero + $subtotal_cuarto + $subtotal_quinto;

							$total_puntos = $puntos + $puntos_primero + $puntos_segundo + $puntos_tercero
								+ $puntos_cuarto + $puntos_quinto;
	
							echo '<tr>
								<td><strong>1ro. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_primero.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_primero, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>2do. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_segundo.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_segundo, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>3er. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_tercero.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_tercero, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>4to. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_cuarto.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_cuarto, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>5to. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_quinto.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_quinto, 2) .'</td>
							</tr>';

							//TOTAL
							echo '<tr>
								<td><strong>TOTAL:</strong></td>
								<td style="text-align: right;">TOTAL PUNTOS</td>
								<td style="text-align: right;"><strong>$ '.number_format($total, 2) .'</strong></td>
							</tr>';
						}
	
						if (count($red_activos) >= 3 && count($red_activos) < 4) {

							//Niveles 6 y 7
							$total = $puntos + $bono_inicio + $subtotal_primero + $subtotal_segundo 
								+ $subtotal_tercero + $subtotal_cuarto + $subtotal_quinto + $subtotal_sexto + $subtotal_septimo;

							$total_puntos = $puntos + $puntos_primero + $puntos_segundo + $puntos_tercero
								+ $puntos_cuarto + $puntos_quinto + $puntos_sexto + $puntos_septimo;

							echo '<tr>
								<td><strong>1ro. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_primero.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_primero, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>2do. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_segundo.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_segundo, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>3er. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_tercero.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_tercero, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>4to. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_cuarto.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_cuarto, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>5to. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_quinto.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_quinto, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>6to. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_sexto.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_sexto, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>7mo. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_septimo.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_septimo, 2) .'</td>
							</tr>';

							//TOTAL
							echo '<tr>
								<td><strong>TOTAL:</strong></td>
								<td style="text-align: right;">TOTAL PUNTOS</td>
								<td style="text-align: right;"><strong>$ '.number_format($total, 2) .'</strong></td>
							</tr>';
						}
	
						if (count($red_activos) >= 4 && count($red_activos) < 5) {
							//Niveles 8 y 9
							$total = $puntos + $bono_inicio + $subtotal_primero + $subtotal_segundo 
								+ $subtotal_tercero + $subtotal_cuarto + $subtotal_quinto + $subtotal_sexto 
								+ $subtotal_septimo + $subtotal_octavo + $subtotal_noveno;

							$total_puntos = $puntos + $puntos_primero + $puntos_segundo + $puntos_tercero
								+ $puntos_cuarto + $puntos_quinto + $puntos_sexto + $puntos_septimo + $puntos_octavo + $puntos_noveno;
							
							echo '<tr>
								<td><strong>1ro. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_primero.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_primero, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>2do. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_segundo.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_segundo, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>3er. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_tercero.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_tercero, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>4to. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_cuarto.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_cuarto, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>5to. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_quinto.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_quinto, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>6to. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_sexto.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_sexto, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>7mo. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_septimo.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_septimo, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>6to. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_octavo.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_octavo, 2) .'</td>
							</tr>';
							echo '<tr>
								<td><strong>7mo. nivel:</strong></td>
								<td style="text-align: right;">'.$puntos_noveno.'</td>
								<td style="text-align: right;">$ '.number_format($subtotal_noveno, 2) .'</td>
							</tr>';

							//TOTAL
							echo '<tr>
								<td><strong>TOTAL:</strong></td>
								<td style="text-align: right;"><strong>'.$total_puntos.'</strong></td>
								<td style="text-align: right;"><strong>$ '.number_format($total, 2) .'</strong></td>
							</tr>';
						}
	
						if (count($red_activos) >= 5 && count($red_activos) < 6) {

							//Niveles 8 y 9
							$total = $puntos + $bono_inicio + $subtotal_primero + $subtotal_segundo 
								+ $subtotal_tercero + $subtotal_cuarto + $subtotal_quinto + $subtotal_sexto 
								+ $subtotal_septimo + $subtotal_octavo + $subtotal_noveno + $subtotal_decimo + $subtotal_decimo_primero;

							$total_puntos = $puntos + $puntos_primero + $puntos_segundo + $puntos_tercero
								+ $puntos_cuarto + $puntos_quinto + $puntos_sexto + $puntos_septimo + $puntos_octavo + $puntos_noveno
								+ $puntos_decimo + $puntos_decimo_primero;
							
							echo '1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11';
						}
	
						if (count($red_activos) >= 6 && count($red_activos) < 7) {
							
							echo ', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13';
						}
	
						if (count($red_activos) >= 7 && count($red_activos) < 8) {
							
							echo ', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15';
						}
	
						if (count($red_activos) >= 8 && count($red_activos) < 9) {
							
							echo ', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17';
						}
	
						if (count($red_activos) >= 9 && count($red_activos) < 10) {
							
							echo ', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19';
						}
	
						if (count($red_activos) >= 10) {
							
							echo ', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20';
						}
					}else{
						echo '<tr>
							<td><strong>Comisiones:</strong></td>
							<td style="text-align: right;">No tiene puntos</td>
							<td style="text-align: right;">$ 0.00</td>
						</tr>';
					}
					

					
				?>
			</tbody>
		</table>
	</div>
</div>

