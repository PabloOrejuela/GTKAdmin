<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Socios extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('acl_model');
        $this->load->model('socios_model');
		$this->load->model('administracion_model');
        
    }

	public function index(){
        $rol =$this->session->userdata('rol');
        $data['per'] = $this->acl_model->_extraePermisos($rol);
        $is_logged = $this->session->userdata('is_logged_in');
        $data['result'] = 0;
        if (isset($is_logged) == true || isset($is_logged) == 1) {
        	$data['provincias'] = $this->administracion_model->_get_provincias();
            //PABLO no está filtrando por provincia
            $data['version'] = $this->config->item('system_version');
            $data['title']='GTK Admin';
            $data['main_content']='socios/frm_socios_confirmar_view';
            $this->load->view('includes/template', $data);
        }
        else{
            
            redirect('Inicio','refresh');
        }
    }
        

    /**
     *
     * Devuelve un formulario para elegir el socio que será eliminado del sistema
     *
     * @param Type 
     * @return void
     * @author Pablo Orejuela
     * @fecha 20-01-2021
     **/
    public function form_elimina_socio(){
        $rol =$this->session->userdata('rol');
        $data['per'] = $this->acl_model->_extraePermisos($rol);
        $is_logged = $this->session->userdata('is_logged_in');
        if (isset($is_logged) == true || isset($is_logged) == 1) {

            $data['socios'] = $this->socios_model->_obten_socios();
            

            $data['title']='GTK Admin';
            $data['main_content']='socios/form_elimina_socio_view';
            $this->load->view('includes/template', $data);
        }
        else{
            redirect('Inicio');
        }
    }

	/**
	 * undocumented function
	 *
	 * @return void
	 * @author
	 **/
	function lista_confirma_socios($result = NULL){
		$rol =$this->session->userdata('rol');
		$data['per'] = $this->acl_model->_extraePermisos($rol);
		$is_logged = $this->session->userdata('is_logged_in');
		$data['result'] = $result;
		if (isset($is_logged) == true || isset($is_logged) == 1) {
//PABLO añadir la funcionalidad para que cada año pida renovar la membresía
			// //Capturo los datos
			//$data['idprovincia'] = $this->input->post('idprovincia');

			// //Traigo las filas
			$data['filas'] = $this->socios_model->_get_membresias_confirmar($data);
			///$data['provincias'] = $this->administracion_model->_get_provincias();

			$data['version'] = $this->config->item('system_version');
			$data['title']='GTK Admin';
			$data['main_content']='socios/frm_socios_confirmar_datos_view';
			$this->load->view('includes/template', $data);
		}
		else{
			echo $this->index();
		}
	}
    
    /**
     * Elimina un socio y libera los datos de las tablas
     *
     * Usada solo en caso extremo, en producción solo se los va a dejar inactivos
     *
     * @param Type $var $idsocio
     * @return type boolean
     * @author Pablo Orejuela
     * @Fecha: 20-01-2021
     **/

    public function elimina_socio(){
        //recibo el idsocio
        $data['idsocio'] = $this->input->post('idsocio');
        
        //Obtengo código binario
        $data['idcodigo_socio_binario'] = $this->socios_model->_get_codigo_binario($data);
    
        //Obtengo el código uninivel
        $data['idcod_socio'] = $this->socios_model->_get_codigo_uninivel($data);

        //Elimino las compras asignadas a su código binario y compras uninivel
        if($data['idcod_socio'] != 0){
            $this->socios_model->_elimina_compras($data['idcod_socio']);
        }

        if($data['idcodigo_socio_binario'] != 0){
            $this->socios_model->_elimina_compras_binarias($data['idcodigo_socio_binario']);
        }


        //Elimino las compras consumidores en caso de tener relacionadas
        $this->socios_model->_elimina_compras_consumidores($data['idsocio']);

        //Elimino las cuentas de banco registradas
        $this->socios_model->_elimina_cuentas_banco($data['idsocio']);

        //Elimino los puntos binarios 
        $this->socios_model->_elimina_puntos_binarios($data['idcodigo_socio_binario']);

        //Restauro el codigo socio y lo libero
        $this->socios_model->_restauro_codigo_binario($data['idcodigo_socio_binario']);

        //Elimino el socio
        $this->socios_model->_elimina_socio($data['idsocio']);

        $this->form_elimina_socio();
    }

	/**
	 * Confirma el pago de la membresía
	 *
	 * @return void
	 * @author Pablo Orejuela
	 **/
	function confirma_pago_membresia($idmembresia){
        /*
            Aqui se confirma la membresia luego de recibir el pago
        */
		
		//traigo los datos de la membersia
		$data['membresia'] = $this->socios_model->_get_datos_membresia($idmembresia);

		//Saco el id y verifico si tiene otras membresías
		$membresias = $this->socios_model->_get_membresias_id($data['membresia'][0]->id);

		if ($membresias == 1) {
			//SI es primera
			//creo el bono para el patrocinador
			$this->socios_model->_set_bono_membresia($data['membresia'][0]);
		}
		$r = $this->socios_model->_confirma_pago_membresia($idmembresia);
		$result = $this->socios_model->_confirmar_membresia($data['membresia'][0]->id);
		

		//echo '<pre>'.var_export($data['membresia'], true).'</pre>';

		$this->lista_confirma_socios($result);

		
	}
}

/* End of file Controllername.php */
