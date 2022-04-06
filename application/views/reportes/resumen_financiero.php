<table id="table_datos">
    <tbody>
        <tr>
            <td id="td_resumen" colspan="4">
                <h3 style="text-align: left;font-weight: bold;vertical-align: middle;">Resumen financiero</h3>
            </td>
        </tr>
        <tr>
            <td id="td_resumen_cabecera_left">Cedula:</td>
            <td id="td_resumen"><?php echo $socio->cedula ?></td>
            <td id="td_resumen_cabecera_left"></td>
            <td id="td_resumen"></td>
        </tr>
        <tr>
            <td id="td_resumen_cabecera_left">Nombre:</td>
            <td id="td_resumen_cabecera_right"><?php echo $socio->apellidos.' '.$socio->nombres ;?></td>
            <td id="td_resumen_cabecera_left">Codigo Socio:</td>
            <td id="td_resumen_cabecera_right"><?php echo $socio->codigo_socio; ?></td>
        </tr>
        <tr>
            <td id="td_resumen_cabecera_left">Total Patrocinados:</td>
			<td><?php echo $patrocinados;  ?> miembro en la red</td>
			<td id="td_resumen_cabecera_left">Total Socios en la red:</td>
        </tr>
    </tbody>
</table>

<br>
<table class="table table-responsive table-bordered" id="table_datos">

</tbody>
</table>

