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
	 * undocumented function
	 *
	 * @return void
	 * @author
	 **/
	function _litros_por_cobrar($id_codigo){
		$r = 0;
		$this->db->select('litros_ganados');
		$this->db->where('litros_ganados.idcod_socio', $id_codigo);
		$this->db->join('socios', 'socios.idsocio = litros_ganados.idcod_socio');
        $q = $this->db->get('litros_ganados');
        if($q->num_rows() > 0){
            foreach ($q->result() as $row) {
                $r = $row->litros_ganados;
            }
            return $r;
        }
        else{
        	return 0;
        }
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
	function _get_compras_patrocinados($idsocio){
		$patrocinados = null;
		$mes_actual = date('m');
		$this->db->select_sum('puntos');
		$this->db->where('patrocinador', $idsocio); 
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
	function _get_hijos_activos($idsocio){
		//$idrango = $this->_get_rango_idcodigo($idcod_socio);
		$hijos = NULL;
		$this->db->select('idsocio');
		$this->db->where('patrocinador', $idsocio);
        $q = $this->db->get('codigo_socio');
        //echo $this->db->last_query();
        if($q->num_rows() > 0){
			foreach ($q->result() as $value) {
				$hijos[] = $value->idsocio;
			}	
        }
		return $hijos;
	}

	/**
	 * Extrae los patrocinados directos
	 *
	 * @return array
	 * @author Pablo Orejuela
	 **/
	function _get_hijos($idsocio){
		
		$hijos = NULL;
		$this->db->select('idsocio');
		$this->db->where('patrocinador', $idsocio);
        $q = $this->db->get('codigo_socio');
        //echo $this->db->last_query();
        if($q->num_rows() > 0){
			foreach ($q->result() as $value) {
				$hijos[] = $value->idsocio;
			}
			
        }
		return $hijos;
	}

	function _get_segundo_nivel($primero){
		foreach ($primero as $value) {
			if (isset($value) && $value !== NULL) {
				$segundo[] = $this->_get_hijos($value);
			}else{
				$segundo[] = NULL;
			}
		}
		return $segundo;
	}

	function _get_siguiente_nivel($array){
		foreach ($array as $value) {
			if (isset($value)) {
				foreach ($value as $v) {
					if (isset($v) && $v !== NULL) {
						$siguiente[] = $this->_get_hijos($v);
					}
				}
			}else{
				$siguiente[] = NULL;
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
	function _get_red($socio) {
		
		//priner nivel
		$primero = $this->_get_hijos($socio->idsocio);

		//segundo nivel
		foreach ($primero as $value) {
			if (isset($value) && $value !== NULL) {
				$segundo[] = $this->_get_hijos($value);
			}else{
				$segundo[] = NULL;
			}
		}

		//Tercer nivel
		foreach ($segundo as $value) {
			if (isset($value)) {
				foreach ($value as $v) {
					if (isset($v) && $v !== NULL) {
						$tercero[] = $this->_get_hijos($v);
					}
				}
			}else{
				$tercero[] = NULL;
			}
		}
		
		//Cuarto nivel
		foreach ($tercero as $value) {
			if (isset($value)) {
				foreach ($value as $v) {
					if (isset($v) && $v !== NULL) {
						$cuarto[] = $this->_get_hijos($v);
					}
				}
			}else{
				$cuarto[] = NULL;
			}
		}
		
		//Quinto nivel
		foreach ($cuarto as $value) {
			if (isset($value) && $value !== NULL) {
				foreach ($value as $v) {
					if (isset($v) && $v !== NULL) {
						$quinto[] = $this->_get_hijos($v);
					}
				}
			}else{
				$quinto[] = NULL;
			}
		}

		//Sexto nivel
		foreach ($quinto as $value) {
			if (isset($value) && $value !== NULL) {
				foreach ($value as $v) {
					if (isset($v) && $v !== NULL) {
						$sexto[] = $this->_get_hijos($v);
					}
				}
			}else{
				$sexto[] = NULL;
			}
		}

		//Septimo nivel
		foreach ($sexto as $value) {
			if (isset($value) && $value !== NULL) {
				foreach ($value as $v) {
					if (isset($v) && $v !== NULL) {
						$septimo[] = $this->_get_hijos($v);
					}
				}
			}else{
				$septimo[] = NULL;
			}
		}

		//Octavo nivel
		foreach ($septimo as $value) {
			if (isset($value) && $value !== NULL) {
				foreach ($value as $v) {
					if (isset($v) && $v !== NULL) {
						$octavo[] = $this->_get_hijos($v);
					}
				}
			}else{
				$octavo[] = NULL;
			}
		}

		//$red = array_merge($red, $segundo, $tercero, $cuarto);
		
		echo '2<pre>'.var_export($segundo, true).'</pre>';
		echo '3<pre>'.var_export($tercero, true).'</pre>';
		echo '4<pre>'.var_export($cuarto, true).'</pre>';
		echo '5<pre>'.var_export($quinto, true).'</pre>';
		echo '6<pre>'.var_export($sexto, true).'</pre>';
		echo '7<pre>'.var_export($septimo, true).'</pre>';

		//return array_filter($red);
	}

	/**
	 * undocumented function
	 *
	 * @return void
	 * @author
	 **/
	function _get_posicion_max(){
		$this->db->select_max('idsocio');
		$this->db->where('idmatrices', $matriz);
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

	/**
	 * Calcula las comisiones
	 *
	 * @return cantidad a pagar
	 * @author Pablo Orejuela
	 **/
	function _calcula_comisiones($socio){

		$puntos = 0;
		$niveles = 20;

		//para cada fila
		for ($i=0; $i <= $niveles; $i++) { 
			//Obtengo los patrocinados
			$puntos_patrocinados = $this->_get_compras_patrocinados($socio->idsocio);
		}
		//PABLO trabajando el resumen financiero
		//obtengo los puntos de los patrocinados y los sumo 
		$puntos_patrocinados = $this->_get_compras_patrocinados($socio->idsocio);
		foreach($puntos_patrocinados as $p){
			echo $p->puntos;
		}
		return $puntos_patrocinados;
	}
}

/* End of file Procesos_model.php */
/* Location: ./application/models/Procesos_model.php */
