<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Compras extends CI_Controller {


    public function index(){
        $rol =$this->session->userdata('rol');
        $data['per'] = $this->acl_model->_extraePermisos($rol);
        $is_logged = $this->session->userdata('is_logged_in');
        $data['result'] = 0;
        if (isset($is_logged) == true || isset($is_logged) == 1) {
        	$data['provincias'] = $this->administracion_model->_get_provincias();
            
            $data['version'] = $this->config->item('system_version');
            $data['title']='GTK Admin';
            $data['main_content']='compras/frm_compras_confirmar_view';
            $this->load->view('includes/template', $data);
        }
        else{
            
            redirect('Inicio','refresh');
        }
    }

    public function __construct(){
        parent::__construct();
        $this->load->model('acl_model');
        $this->load->model('administracion_model');
        $this->load->model('compras_model');
		$this->load->model('socios_model');
    }

	/**
	 * undocumented function
	 *
	 * @return void
	 * @author
	 **/
	function pago_comisiones($result = NULL){
		$rol =$this->session->userdata('rol');
			$data['per'] = $this->acl_model->_extraePermisos($rol);
			$is_logged = $this->session->userdata('is_logged_in');
			$data['result'] = $result;
			if (isset($is_logged) == true || isset($is_logged) == 1) {
	
				//Capturo los datos
				$data['idprovincia'] = $this->input->post('id_provincia');
				$data['idciudad'] = $this->input->post('ciudad');
				$data['cedula'] = $this->input->post('cedula');
	
				//Traigo las filas
				$data['rows'] = $this->compras_model->_get_comisiones_confirmar($data);
				$data['provincias'] = $this->administracion_model->_get_provincias();
	
				$data['version'] = $this->config->item('system_version');
				$data['title']='GTK Admin';
				$data['main_content']='compras/frm_pago_comisiones_view';
				$this->load->view('includes/template', $data);
			}
			else{
				echo $this->index();
			}
		}


	/**
	 * undocumented function
	 *
	 * @return void
	 * @author
	 **/
	function lista_compras_confirmar($result = NULL){
	$rol =$this->session->userdata('rol');
        $data['per'] = $this->acl_model->_extraePermisos($rol);
        $is_logged = $this->session->userdata('is_logged_in');
        $data['result'] = $result;
        if (isset($is_logged) == true || isset($is_logged) == 1) {

            //Capturo los datos
            $data['idprovincia'] = $this->input->post('id_provincia');
            $data['idciudad'] = $this->input->post('ciudad');
            $data['cedula'] = $this->input->post('cedula');

            //Traigo las filas
            $data['rows'] = $this->compras_model->_get_compras_confirmar($data);
            $data['provincias'] = $this->administracion_model->_get_provincias();

            $data['version'] = $this->config->item('system_version');
            $data['title']='GTK Admin';
            $data['main_content']='compras/frm_compras_confirmar_datos_view';
            $this->load->view('includes/template', $data);
        }
        else{
            echo $this->index();
        }
    }

	/**
	 * undocumented function
	 *
	 * @return void
	 * @author
	 **/
	function confirma_compra($idcompras){
        /*
            Aqui se confirma la compra luego de recibir el pago
        */
		$r = $this->compras_model->_confirmar_compra($idcompras);

		$this->lista_compras_confirmar($r);
	}

    /**
     * undocumented function
     *
     * @return void
     * @author Pablo Orejuela
     **/
    function elimina_compra($idcompras){
        /*
            Aqui se cancela y se elimina la compra en caso de no recibir el pago o estar algo mal
        */

        $r = $this->compras_model->_eliminar_compra($idcompras);

        $this->lista_compras_confirmar($r);

    }
    

    function get_datos_socio(){
        $rol =$this->session->userdata('rol');
        $data['per'] = $this->acl_model->_extraePermisos($rol);
        $is_logged = $this->session->userdata('is_logged_in');
        if (isset($is_logged) == true || isset($is_logged) == 1) {
            $data['cedula']=$this->input->post('cedula');
            $data['datos'] = $this->compras_model->_get_datos_usuario_binario($data['cedula']);
            $data['codigos'] = $this->compras_model->_get_codigos_usuario_binario($data['cedula']);
            $data['paquetes'] = $this->compras_model->_get_paquetes();

            $data['version'] = $this->config->item('system_version');
            $data['title']='GTK Admin';
            $data['main_content']='compras/frm_recompra_binaria_admin';
            $this->load->view('includes/template', $data);

        }
        else{
            $this->index();
        }
    }

    function get_datos_compra_by_codigo_ajax(){
        $rol =$this->session->userdata('rol');
        $data['per'] = $this->acl_model->_extraePermisos($rol);
        $is_logged = $this->session->userdata('is_logged_in');
        if (isset($is_logged) == true || isset($is_logged) == 1) {
            $data['id_codigo']=$this->input->post('id_codigo');
            $data['codigo']=$this->administracion_model->_get_codigo_socio_by_id($data['id_codigo']);
            $data['fecha_recompra'] = $this->compras_model->_obten_fecha_recompra_by_codigo($data['codigo']);
            $data['paquetes'] = $this->compras_model->_obten_paquetes($data['codigo']['id_matriz']);
            $json = json_encode($data['codigo']).'<sep>'.($data['fecha_recompra']->format('Y-m-d H:i:s')).'<sep>'.json_encode($data['paquetes']);
            echo  $json;
        }
        else{
            $this->index();
        }
    }

	/**
	 *
	 * Formulario de compra de producto
	 *
	 * @param Type $var Description
	 * @return type form
	 * @throws conditon
	 **/
	public function comprar_producto($mensaje = ''){
		$rol =$this->session->userdata('rol');
        $data['per'] = $this->acl_model->_extraePermisos($rol);
        $is_logged = $this->session->userdata('is_logged_in');
        if (isset($is_logged) == true || isset($is_logged) == 1) {

			$data['paquetes'] = $this->compras_model->_get_paquetes();
			$data['socio'] = $this->socios_model->_get_socio_by_id($this->session->userdata('id'));
			$data['mensaje'] = $mensaje;
            $data['title']='GTK Admin';
            $data['main_content']='compras/frm_compra';
            $this->load->view('includes/template', $data);
        }
        else{
            $this->index();
        }
	}

    function graba_compra(){
        $rol =$this->session->userdata('rol');
        $data['per'] = $this->acl_model->_extraePermisos($rol);
        $is_logged = $this->session->userdata('is_logged_in');
        if (isset($is_logged) == true || isset($is_logged) == 1) {

            $data['idsocio'] = $this->input->post('idsocio');
            $data['idpaquete'] = $this->input->post('idpaquete');
			$data['id'] = $this->input->post('id');

            if ($data['idpaquete'] != 0) {
                $r = $this->compras_model->_set_compra($data);
                if ($r != 0) {
                    $data['version'] = $this->config->item('system_version');
                    $data['title']='GTK Admin';
                    $data['main_content']='exito/exito';
                    $this->load->view('includes/template', $data);
                }else{
					$mensaje = "No se pudo realizar la compra, por favor contacte al administrador del sistema";
                	$this->comprar_producto($mensaje);
				}
            }else{
				$mensaje = "";
                $this->comprar_producto($mensaje);
            }
        }
        else{
            $this->index();
        }
    }


    function registra_recompra_admin(){
        $rol =$this->session->userdata('rol');
        $data['per'] = $this->acl_model->_extraePermisos($rol);
        $is_logged = $this->session->userdata('is_logged_in');
        if (isset($is_logged) == true || isset($is_logged) == 1) {

            $data['idcodigo_socio_binario'] = $this->input->post('idcodigo_socio_binario');
            $data['idpaquete'] = $this->input->post('idpaquete');
            $data['fecha'] = $this->input->post('fecha');

            $r = $this->compras_model->_graba_compra_binaria_admin($data);
            if ($r != 0) {
                $data['exito'] = 1;
                $data['version'] = $this->config->item('system_version');
                $data['title']='GTK Admin';
                $data['main_content']='compras/frm_recompra_binaria_admin';
                $this->load->view('includes/template', $data);
            }else{
                $data['exito'] = 0;
                $data['version'] = $this->config->item('system_version');
                $data['title']='GTK Admin';
                $data['main_content']='compras/frm_recompra_binaria_admin';
                $this->load->view('includes/template', $data);
            }
        }
        else{
            $this->frm_recompra_binaria_admin();
        }
    }
}

/* End of file Compras.php *;
/* Location: ./application/controllers/Compras.php */
