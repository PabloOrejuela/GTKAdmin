<style>
    #link{
        color: #444;
        font-weight: bold;
        text-decoration: none;
    }

    #link:hover{
        color: #003399;
        font-weight: bold;
        text-decoration: none;
    }
    
</style>
<div id="contenedor">
    <div id="wrap_1">
        <div class="col-md-8" id="form_login">
            <h2>Ingreso al sistema de administración</h2>
            <h5>Un email con el código de confirmación ha sido enviado, este código expira en 5 minutos</h5>
            <?php echo form_open('inicio/');?>
            <label for="pin">ingrese el código:</label>
            <input type="text" name="pin" value="<?php set_value('pin')?>" class="form-control" maxlength="10">
            <input type="submit" value="Enviar" class="btn btn-default" id="btn_submit">
            <?php echo form_close();?>
            <a href="#">Volver a enviar el código</a>
        </div>
    </div>
</div>
