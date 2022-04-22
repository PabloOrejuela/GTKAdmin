<div class="row-fluid" id="container">
    <div class="col-md-5">
		<table class="table table-light">
			<tbody>
				<tr>
					<td id="td_resumen" colspan="2">
						<h3 style="text-align: left;font-weight: bold;vertical-align: middle;">Mi red</h3>
					</td>
					<td><img src="<?php echo base_url().'images/niveles/'.$socio->imagen; ?>.png" alt="zafiro" width="150"></td>
				</tr>
				<?php
					if (isset($nivel_1) && $nivel_1 != NULL) {
						echo '<tr><td id="td_resumen"><strong>Primer Nivel</strong></td></tr>';
						foreach ($nivel_1 as $value) {
							echo '<tr><td>'.$value->id.'</td><td>'.$value->codigo_socio.'</td><td>'.$value->nombres.' '.$value->apellidos.'</td></tr>';
						} 
					}

					if (isset($nivel_2[0]) && $nivel_2[0] != NULL) {
						echo '<tr><td id="td_resumen"><strong>Segundo Nivel</strong></td></tr>';
						foreach ($nivel_2 as $value) {
							if (isset($value)) {
								foreach ($value as $v) {
									if (isset($v) && $v !== NULL) {
										echo '<tr><td>'.$v->id.'</td><td>'.$v->codigo_socio.'</td><td>'.$v->nombres.' '.$v->apellidos.'</td></tr>';
									}
								}
							}
						}
					}

					if (isset($nivel_3[0]) && $nivel_3[0] != NULL) {
						echo '<tr><td id="td_resumen"><strong>Tercer Nivel</strong></td></tr>';
						foreach ($nivel_3 as $value) {
							if (isset($value)) {
								foreach ($value as $v) {
									if (isset($v) && $v !== NULL) {
										echo '<tr><td>'.$v->id.'</td><td>'.$v->codigo_socio.'</td><td>'.$v->nombres.' '.$v->apellidos.'</td></tr>';
									}
								}
							}
						}
					}

					if (isset($nivel_4[0]) && $nivel_4[0] != NULL) {
						echo '<tr><td id="td_resumen"><strong>Cuarto Nivel</strong></td></tr>';
						foreach ($nivel_4 as $value) {
							if (isset($value)) {
								foreach ($value as $v) {
									if (isset($v) && $v !== NULL) {
										echo '<tr><td>'.$v->id.'</td><td>'.$v->codigo_socio.'</td><td>'.$v->nombres.' '.$v->apellidos.'</td></tr>';
									}
								}
							}else{
								echo '<tr><td colspan="3">No hay socios en este nivel</td></tr>';
							}
						}
					}

				
					if (isset($nivel_5[0]) && $nivel_5[0] != NULL) {
						echo '<tr><td id="td_resumen"><strong>Quinto Nivel</strong></td></tr>';
						foreach ($nivel_5 as $value) {
							if (isset($value)) {
								foreach ($value as $v) {
									if (isset($v) && $v !== NULL) {
										echo '<tr><td>'.$v->id.'</td><td>'.$v->codigo_socio.'</td><td>'.$v->nombres.' '.$v->apellidos.'</td></tr>';
									}
								}
							}else{
								echo '<tr><td colspan="3">No hay socios en este nivel</td></tr>';
							}
						}
					}

					if (isset($nivel_6[0]) && $nivel_6[0] != NULL) {
						echo '<tr><td id="td_resumen"><strong>Quinto Nivel</strong></td></tr>';
						foreach ($nivel_6 as $value) {
							if (isset($value)) {
								foreach ($value as $v) {
									if (isset($v) && $v !== NULL) {
										echo '<tr><td>'.$v->id.'</td><td>'.$v->codigo_socio.'</td><td>'.$v->nombres.' '.$v->apellidos.'</td></tr>';
									}
								}
							}else{
								echo '<tr><td colspan="3">No hay socios en este nivel</td></tr>';
							}
						}
					}

					if (isset($nivel_7[0]) && $nivel_7[0] != NULL) {
						echo '<tr><td id="td_resumen"><strong>Quinto Nivel</strong></td></tr>';
						foreach ($nivel_7 as $value) {
							if (isset($value)) {
								foreach ($value as $v) {
									if (isset($v) && $v !== NULL) {
										echo '<tr><td>'.$v->id.'</td><td>'.$v->codigo_socio.'</td><td>'.$v->nombres.' '.$v->apellidos.'</td></tr>';
									}
								}
							}else{
								echo '<tr><td colspan="3">No hay socios en este nivel</td></tr>';
							}
						}
					}

					if (isset($nivel_8[0]) && $nivel_8[0] != NULL) {
						echo '<tr><td id="td_resumen"><strong>Quinto Nivel</strong></td></tr>';
						foreach ($nivel_8 as $value) {
							if (isset($value)) {
								foreach ($value as $v) {
									if (isset($v) && $v !== NULL) {
										echo '<tr><td>'.$v->id.'</td><td>'.$v->codigo_socio.'</td><td>'.$v->nombres.' '.$v->apellidos.'</td></tr>';
									}
								}
							}else{
								echo '<tr><td colspan="3">No hay socios en este nivel</td></tr>';
							}
						}
					}
				?>
			</tbody>
		</table>
	</div>
</div>

