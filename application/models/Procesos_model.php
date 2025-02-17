<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Procesos_model extends CI_Model {

	private $porcentajes = array(
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

	public function __construct(){
		parent::__construct();
		require_once("entidades/CodigoDTO.php");
	}

	/**
	 * undocumented function
	 *
	 * @return array
	 * @author Pablo Orejuela
	 **/
	function _get_provincias(){
		$this->db->select('*');
        $q = $this->db->get('provincias');
        if($q->result() > 0){
            foreach ($q->result() as $row) {
                $r[] = $row;
            }
            return $r;
        }
        else{
        	return 0;
        }
	}
	

	function _get_last_valid_id(){
		$sql = "SELECT MAX(`idcodigo_socio_binario`) FROM `codigo_socio_binario` WHERE `codigo_socio_binario` NOT LIKE '%UNDEFINED%'";
		
		$this->db->select_max('idcodigo_socio_binario');
		$this->db->not_like('codigo_socio_binario', 'UNDEFINED');
		$q = $this->db->get('codigo_socio_binario');
		if($q->result() > 0){
            foreach ($q->result() as $row) {
            	$id = $row->idcodigo_socio_binario;
            }
            return $id;
        }else{
        	return 1;
        }
	}

	/**
	 * Recibe el idciudad y devuelve el nombre de la ciudad
	 *
	 * @return void
	 * @author Pablo Orejuela
	 **/
	function _get_ciudad_nombre($idciudad){
		$ciudad = NULL;
		$this->db->select('ciudad');
		$this->db->where('idciudad', $idciudad);
        $q = $this->db->get('ciudad');
        if($q->result() > 0){
            foreach ($q->result() as $row) {
                $ciudad = $row->ciudad;
            }
            return $ciudad;
        }
        else{
        	return 'Error en el nombre';
        }
	}

	function GetAutocomplete_ciudades($options = array()) {
        $this->db->select('ciudad');
        $this->db->like('ciudad', $options['keyword'], 'after');
        $query = $this->db->get('ciudad');
        return $query->result();
    }

    function GetAutocomplete_patrocinadores($options = array()) {
        $this->db->select('cedula');
        $this->db->like('cedula', $options['keyword'], 'after');
        $query = $this->db->get('socios');
        return $query->result();
    }


	/**
	 * devuelve la cantidad de puntos que debe subir por rango
	 *
	 * @return void
	 * @author Pablo Orejuela
	 **/
	function _get_data_rango($idrango){

		$this->db->select('*');
		$this->db->where('idrango', $idrango);
		$q = $this->db->get('rangos');
		//echo $this->db->last_query();
		if ($q->num_rows() >0) {
			foreach ($q->result() as $value) {
				$litros = $value->volumen;
			}
			return $litros;
		}else{
			return 0;
		}
	}
	
	/**
	 * Devuelve los datos de la compra actual PLAN UNINIVEL
	 *
	 * @return void
	 * @author Pablo Orejuela
	 **/
	function _get_paquete_codigo($idcod_socio){
		$mes_actual = date('m');
		$this->db->where('idcod_socio', $idcod_socio);
		$this->db->where('pago', 1);
		$this->db->where('MONTH(fecha)', $mes_actual);
		$this->db->join('paquetes', 'paquetes.idpaquete = compras.idpaquete');
		$q = $this->db->get('compras');
		//echo $this->db->last_query();
		if ($q->num_rows() > 0) {
			foreach ($q->result() as $value) {
				$compras = $value->idpaquete;

			}
			return $compras;
		}else{
			return 0;
		}
	}


	function _get_rango_idcodigo($idcodigo){
		$this->db->select('idrango');
		$this->db->where('idcod_socio', $idcodigo);
		$q = $this->db->get('codigo_socio');
		//echo $this->db->last_query();
		if ($q->num_rows() >0) {
            foreach ($q->result() as $r) {
                $rango= $r->idrango;
            }
            return $rango;
        }else{
        	return 0;
        }
	}


	/**
	 * devuelve datos de los patrocinados
	 *
	 * @return array
	 * @author Pablo Orejuela
	 **/
	function _get_compras_patrocinados($id){
		$patrocinados = null;
		$mes_actual = date('m');
		$this->db->select_sum('puntos');
		$this->db->where('patrocinador', $id); 
		$this->db->where('MONTH(fecha)', $mes_actual);
		$this->db->where('pago', 1);
		$this->db->join('compras', 'compras.id = codigo_socio.id');
		$this->db->join('paquetes', 'paquetes.idpaquete = compras.idpaquete');
        $q = $this->db->get('codigo_socio');
        //echo $this->db->last_query();
        if($q->num_rows() > 0){
            foreach ($q->result() as $p) {
				$patrocinados[] = $p;
            }
            return $patrocinados;
        }
        else{
        	return 0;
        }
	}

	/**
	 * Extrae el número de patrocinados directos
	 *
	 * @return array
	 * @author Pablo Orejuela
	 **/
	function _es_patrocinador_directo($socio){
		//$idrango = $this->_get_rango_idcodigo($idcod_socio);
		$patro = 0;
		$this->db->select('*');
		$this->db->where('patrocinador', $socio->idsocio);
        $q = $this->db->get('codigo_socio');
        //echo $this->db->last_query();
        if($q->num_rows() > 0){
            $patro = $q->num_rows();
        }
		return $patro;
	}



	/**
	 * Extrae los patrocinados directos
	 *
	 * @return array
	 * @author Pablo Orejuela
	 **/
	function _get_hijos($id){
		
		$hijos = NULL;
		$this->db->select('*');
		$this->db->where('patrocinador', $id);
		$this->db->join('socios', 'socios.idsocio = codigo_socio.idsocio');
        $q = $this->db->get('codigo_socio');
        //echo $this->db->last_query();
        if($q->num_rows() > 0){
			foreach ($q->result() as $value) {
				$hijos[] = $value;
			}
			
        }
		return $hijos;
	}

	function _get_segundo_nivel($array){
		
		$segundo = NULL;
		if (isset($array) && $array != NULL) {
			//$array_nuevo = $this->_arma_segundo_nivel($array);
			//echo '<pre>'.var_export($array, true).'</pre>';
			foreach ($array as $value) {
				if (isset($value) && $value !== NULL) {
					$segundo[] = $this->_get_hijos($value->id);
				}
			}
		}else {
			$segundo[] = NULL;
		}
		
		return $segundo;
	}

	function _get_siguiente_nivel($array){
		$siguiente = null;
		//echo '<pre>'.var_export($array, true).'</pre>';
		if (isset($array[0]) && $array[0] != NULL) {
			$array_nuevo = $this->_arma__nivel($array);
			foreach ($array_nuevo as $value) {
				if (isset($value) && $value !== NULL) {
					$siguiente[] = $this->_get_hijos($value->id);
				}		
			}
		}else {
			$siguiente[] = NULL;
		}
		return $siguiente;
	}

	function _arma__nivel($array){
		$siguiente = null;
		foreach ($array as $value) {
			if (isset($value) && $value !== NULL) {
				foreach ($value as $v) {
					if (isset($v->id) && $v->id !== NULL) {
						$siguiente[] = $v;
					}
					
				}
			}
				
		}
		return $siguiente;
	}

	function _arma_segundo_nivel($array){
		//echo '<pre>'.var_export($array, true).'</pre>';
		$siguiente = null;
		foreach ($array as $value) {
			if (isset($value) && $value !== NULL) {
				$siguiente[] = $value;	
			}
				
		}
		return $siguiente;
	}


	/**
	 * Arma la red de un socio
	 *
	 *
	 * @param Type Object
	 * @return type array
	 * @throws conditon
	 **/
	function _cuenta_miembros_red($red) {
		if ($red != NULL) {
			return count($red);
		}else{
			return 0;
		}
		
	}

	/**
	 * Cuenta todos los socios activos de la red
	 *
	 *
	 * @param Type Object
	 * @return type array
	 * @throws conditon
	 **/
	function _get_red($id) {
		$total = 0;
		$red = null;
		//$red = NULL;
		//PABLO hacer esto en un blucle
		
		$nivel_1 = $this->procesos_model->_get_hijos($id);
		$nivel_2 = $this->_get_segundo_nivel($nivel_1);
		$segundo = $this->_arma__nivel($nivel_2);

		$nivel_3 = $this->_get_siguiente_nivel($nivel_2);
		$tercero = $this->_arma__nivel($nivel_3);

		$nivel_4 = $this->_get_siguiente_nivel($nivel_3);
		$cuarto = $this->_arma__nivel($nivel_4);

		$nivel_5 = $this->_get_siguiente_nivel($nivel_4);
		$quinto = $this->_arma__nivel($nivel_5);
		
		$nivel_6 = $this->_get_siguiente_nivel($nivel_5);
		$sexto = $this->_arma__nivel($nivel_6);

		$nivel_7 = $this->_get_siguiente_nivel($nivel_6);
		$septimo = $this->_arma__nivel($nivel_7);

		$nivel_8 = $this->_get_siguiente_nivel($nivel_7);
		$octavo = $this->_arma__nivel($nivel_8);

		$nivel_9 = $this->_get_siguiente_nivel($nivel_8);
		$noveno = $this->_arma__nivel($nivel_9);

		$nivel_10 = $this->_get_siguiente_nivel($nivel_9);
		$decimo = $this->_arma__nivel($nivel_10);

		if ($nivel_1) {
			$red = array_merge($nivel_1);
		}

		if ($segundo) {
			$red = array_merge($red, $segundo);
		}

		if ($tercero) {
			$red = array_merge($red, $tercero);
		}

		if ($cuarto) {
			$red = array_merge($red, $cuarto);
		}

		if ($quinto) {
			$red = array_merge($red, $quinto);
		}

		if ($sexto) {
			$red = array_merge($red, $sexto);
		}

		if ($septimo) {
			$red = array_merge($red, $septimo);
		}

		if ($octavo) {
			$red = array_merge($red, $octavo);
		}

		if ($noveno) {
			$red = array_merge($red, $noveno);
		}

		if ($decimo) {
			$red = array_merge($red, $decimo);
		}
		
		//echo '<pre>'.var_export($red, true).'</pre>';

		return $red;
	}

	function _get_red_activos($red){
		$r = 0;
		$activos = null;
		if (isset($red) && $red !== NULL) {
			foreach ($red as $key => $value) {
				$r = $this->compras_model->_get_compras_mes($value->id);
				if ($r > 0) {
					$activos[] = $value->id;
				}
			}
		}
		//echo '<pre>'.var_export($activos, true).'</pre>';
		return $activos;
	}

	/**
	 * undocumented function
	 *
	 * @return void
	 * @author
	 **/
	function _get_posicion_max(){
		$this->db->select_max('idsocio');
		$q = $this->db->get('codigo_socio');
		if ($q->num_rows() == 1) {
			foreach ($q->result() as $value) {
				$max = $value->idsocio;
			}
			return $max;
		}else{
			return 0;
		}
	}
}

/* End of file Procesos_model.php */
/* Location: ./application/models/Procesos_model.php */
