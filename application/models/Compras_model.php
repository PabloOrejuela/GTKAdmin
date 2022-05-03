<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Compras_model extends CI_Model {

	private $IVA = 0.12;
	private $MEMBRESIA = 10;

	/**
	 * Devuelve las compras sin confirmar uninivel
	 *
	 * @return void
	 * @author Pablo Orejuela
	 **/
	function _get_compras_confirmar($data){

            //COMPRAS
            $this->db->select('*');
            $this->db->where('pago', 0);
            if ($data['idciudad'] != NULL) {
                $this->db->where('socios.idciudad', $data['idciudad']);
            }
            if ($data['cedula'] != NULL) {
                $this->db->like('socios.cedula', $data['cedula']);
            }
            $this->db->join('codigo_socio', 'compras.id=codigo_socio.id');
            $this->db->join('paquetes', 'paquetes.idpaquete=compras.idpaquete');
            $this->db->join('socios', 'socios.idsocio = codigo_socio.idsocio');
            $this->db->join('ciudad', 'socios.idciudad=ciudad.idciudad');
            $this->db->join('provincias', 'ciudad.id_provincia=provincias.idprovincia');
            $q = $this->db->get('compras');
            //echo $this->db->last_query();
            if ($q->num_rows() > 0) {
                foreach ($q->result_array() as $r) {
                    $filas[] = $r;
                }
                return $filas;
            }else{
                return NULL;
            }
	}

	/**
	 * Devuelve las compras sin confirmar uninivel
	 *
	 * @return void
	 * @author Pablo Orejuela
	 **/
	function _get_comisiones_confirmar($data){

		//Comisiones
		$this->db->select('*');
		$this->db->where('pagado', 0);
		if ($data['idciudad'] != NULL) {
			$this->db->where('socios.idciudad', $data['idciudad']);
		}
		if ($data['cedula'] != NULL) {
			$this->db->like('socios.cedula', $data['cedula']);
		}
		$this->db->join('codigo_socio', 'comisiones.id=codigo_socio.id');
		$this->db->join('compras', 'compras.id=codigo_socio.id');
		$this->db->join('paquetes', 'paquetes.idpaquete=compras.idpaquete');
		$this->db->join('socios', 'socios.idsocio = codigo_socio.idsocio');
		$this->db->join('ciudad', 'socios.idciudad=ciudad.idciudad');
		$this->db->join('provincias', 'ciudad.id_provincia=provincias.idprovincia');
		$q = $this->db->get('comisiones');
		//echo $this->db->last_query();
		if ($q->num_rows() > 0) {
			foreach ($q->result() as $r) {
				$filas[] = $r;
			}
			return $filas;
		}else{
			return NULL;
		}
}

	/**
	 * undocumented function
	 *
	 * @return void
	 * @author
	 **/
	function _confirmar_compra($idcompras){
		$this->db->trans_start();
		$this->db->set('pago', 1);
		$this->db->where('idcompras', $idcompras);
		$this->db->update('compras');
		$this->db->trans_complete();
        if ($this->db->trans_status() == FALSE) {
        	$this->db->trans_rollback();
            return 0;
        } else {
            return 1;
        }
	}

	/**
	 * undocumented function
	 *
	 * @return void
	 * @author
	 **/
	function _eliminar_compra($idcompras){
		$this->db->trans_start();
		$this->db->where('idcompras', $idcompras);
		$this->db->delete('compras');
		$this->db->trans_complete();
        if ($this->db->trans_status() == FALSE) {
        	$this->db->trans_rollback();
            return 0;
        } else {
            return 1;
        }
	}

	/**
	 * GETTER de la propiedad IVA
	 *
	 * @return DOUBLE
	 * @author
	 **/
	function _get_IVA(){
		return $this->IVA;
	}

	/**
	 * undocumented function
	 *
	 * @return array
	 * @author Pablo Orejuela
	 **/
	function _get_datos_user($user, $pass){
		$this->db->select('*');
		$this->db->where('cedula', $user);
		$this->db->where('clave_socio', md5($pass));
        $q = $this->db->get('socios');
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


	/**
	 * undocumented function
	 *
	 * @return array
	 * @author Pablo Orejuela
	 **/
	function _get_codigos_usuario_binario($cedula){
		$r = null;
		$this->db->select('idcodigo_socio_binario,codigo_socio_binario,fecha_inscripcion');
		$this->db->where('cedula', $cedula);
		$this->db->join('socios', 'socios.idsocio = codigo_socio_binario.idsocio');
        $q = $this->db->get('codigo_socio_binario');
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

	/**
	 * undocumented function
	 *
	 * @return void
	 * @author
	 **/
	function _get_patrocinador($id){
		$this->db->select('patrocinador');
		$this->db->where('idcod_socio', $id);
        $q = $this->db->get('codigo_socio');
        if($q->result() > 0){
            foreach ($q->result() as $row) {
                $r = $row->patrocinador;
            }
            return $r;
        }
        else{
        	return 0;
        }
	}


	/**
	 * Extrae la ultima compra de la tabla
	 *
	 * @return void
	 * @author
	 **/
	function _get_ultima_compra($id, $fecha){
		$r = 0;
		$this->db->select('idcompras');
		$this->db->where('id', $id);
		$this->db->where('fecha', $fecha);
        $q = $this->db->get('compras');
        if($q->result() > 0){
            foreach ($q->result() as $row) {
                $r = $row->idcompras;
            }
            return $r;
        }
        else{
        	return 0;
        }
	}

	/**
	 * Extrae las  compras de la tabla
	 *
	 * @return void
	 * @author
	 **/
	function _get_compras_mes($id){
		$r = 0;
		$mes_actual = date('m');
		$this->db->select('idcompras');
		$this->db->where('id', $id);
		$this->db->where('pago', 1);
		$this->db->where('MONTH(fecha)', $mes_actual);
        $q = $this->db->get('compras');
        if($q->result() > 0){
            foreach ($q->result() as $row) {
                $r = $row->idcompras;
            }
        }
        return $r;
	}

	/**
	 * Extrae la primera compra de la tabla compras sin pagar
	 *
	 * @return void
	 * @author Pablo Orejuela
	 * @date 23-04-2022
	 **/
	function _get_first_compra($id){
		$r = null;
		$this->db->select('*');
		$this->db->where('id', $id);
		$this->db->join('paquetes', 'paquetes.idpaquete=compras.idpaquete');
		$this->db->order_by('idcompras', 'asc');
        $q = $this->db->get('compras', 1);
        if($q->result() > 0){
            foreach ($q->result() as $row) {
                $r[] = $row;
            }
        }
        return $r;
	}

	/**
	 * Extrae la suma de las compras por cobrar, no deben ser primera compra
	 *
	 * @return void
	 * @author Pablo Orejuela
	 * @date 23-04-2022
	 **/
	function _get_compras_cobrar($id){
		$compras = null;
		$this->db->select('SUM(paquete) as compras');
		$this->db->where('id', $id);
		$this->db->where('pago', 0);
		$this->db->where('primera', 0);
		$this->db->join('paquetes', 'paquetes.idpaquete=compras.idpaquete');
		$this->db->order_by('idcompras', 'asc');
        $q = $this->db->get('compras');
        if($q->result() > 0){
            foreach ($q->result() as $row) {
                $compras = $row->compras;
            }
        }
        return $compras;
	}

	/**
     * Devuelve los paquetes disponibles para la compra
     *
     * @param Type void
     * @return type object
     * @author Pablo Orejuela
     * @date 19-04-2022
     **/
	function _get_paquetes(){
		
		$this->db->select('*');
		$this->db->order_by('paquete', 'ASC');
		$q = $this->db->get('paquetes');
		if ($q->num_rows() > 0) {
            foreach ($q->result() as $r) {
                $paquetes[] = $r;
            }
            return $paquetes;
        }else{
        	return 0;
        }
	}

	function _get_data_paquete($idpaquete){
        $paquetes = null;
        $this->db->select('*');
		$this->db->where('idpaquete', $idpaquete);
        $this->db->order_by('paquete', 'ASC');
        $q = $this->db->get('paquetes');
        if ($q->num_rows() > 0) {
            foreach ($q->result() as $r) {
                $paquetes = $r;
            }
        }
        return $paquetes;
    }

	function _obten_fecha_recompra($usuario){
		foreach ($usuario as $u) {
			//list($anio, $mes, $dia) =  explode('-', $u->fecha_inscripcion);
			//$fecha_inscripcion = strtotime($u->fecha_inscripcion);
			$fecha_recompra =  date('M');
			$fecha_inscripcion = new DateTime($u->fecha_inscripcion);
			$fecha_recompra = $fecha_inscripcion->add(new DateInterval('P0Y0M30D'));
			return $fecha_recompra;
		}
	}

	function _obten_fecha_recompra_by_codigo($codigo){

			//list($anio, $mes, $dia) =  explode('-', $u->fecha_inscripcion);
			//$fecha_inscripcion = strtotime($u->fecha_inscripcion);
			$fecha_recompra =  date('M');
			$fecha_inscripcion = new DateTime($codigo['fecha_inscripcion']);
			$fecha_recompra = $fecha_inscripcion->add(new DateInterval('P0Y0M30D'));
			return $fecha_recompra;

	}

	/**
	 * Graba la compra de producto por un código
	 *
	 * @return void
	 * @author Pablo Orejuela
	 **/
	function _set_compra($data){
		
		$this->db->trans_start();
		$this->db->set('id', $data['id']);
		$this->db->set('fecha', date('Y-m-d'));
		$this->db->set('idpaquete', $data['idpaquete']);
		$this->db->insert('compras');
		$data['idcompras'] = $this->db->insert_id();
		$this->db->trans_complete();
		if ($this->db->trans_status() == FALSE) {
			$this->db->trans_rollback();
			return 0;
		} else {
			$paquete = $this->_get_data_paquete($data['idpaquete']);
			//echo '<pre>'.var_export($data, true).'</pre>';
			$data['bono'] = ($paquete->paquete)/2;
			$this->_set_bono($data);
			return 1;
		}
	}

	/**
	 * Graba la compra de producto por un código
	 *
	 * @return void
	 * @author Pablo Orejuela
	 **/
	function _set_primera_compra($data){
		
		$this->db->trans_start();
		$this->db->set('id', $data['id']);
		$this->db->set('fecha', date('Y-m-d'));
		$this->db->set('primera', 1);
		$this->db->set('idpaquete', $data['idpaquete']);
		$this->db->insert('compras');
		$data['idcompras'] = $this->db->insert_id();
		$this->db->trans_complete();
		if ($this->db->trans_status() == FALSE) {
			$this->db->trans_rollback();
			return 0;
		} else {
			$paquete = $this->_get_data_paquete($data['idpaquete']);
			//echo '<pre>'.var_export($data, true).'</pre>';
			$data['bono'] = (($paquete->paquete)/2) + ($this->MEMBRESIA/2);
			$this->_set_bono($data);
			$this->_set_membresia($data);
			return 1;
		}
	}

	/**
	 * Graba el registro en al tabla membresías
	 *
	 * @return void
	 * @author Pablo Orejuela
	 * @date 23-04-2022
	 **/
	function _set_membresia($data){
		
		$this->db->trans_start();
		$this->db->set('id', $data['id']);
		$this->db->set('fecha', date('Y-m-d'));
		$this->db->set('membresia', $this->MEMBRESIA);
		$this->db->insert('membresia');
		$this->db->trans_complete();
		if ($this->db->trans_status() == FALSE) {
			$this->db->trans_rollback();
			return 0;
		} else {
			return 1;
		}
	}


	/**
	 * Graba el bono inicio de la primera compra de un socio nuevo
	 *
	 * @return void
	 * @author Pablo Orejuela
	 * @date 23-04-2022
	 **/
	function _set_bono($data){
		
		$this->db->trans_start();
		$this->db->set('idcompras', $data['idcompras']);
		$this->db->set('bono', $data['bono']);
		$this->db->set('patrocinador', $data['idpatrocinador']);
		$this->db->insert('bono_inicio');
		$this->db->trans_complete();
		if ($this->db->trans_status() == FALSE) {
			$this->db->trans_rollback();
			return 0;
		} else {
			return 1;
		}
	}

	/**
	 * Devuelve la suma de los importes de los BIR
	 *
	 * @param Type $array
	 * @return type decimal
	 * @fecha 25-04-2022
	 **/
	function _get_bono_inicio($id){
		//echo '<pre>'.var_export($socio, true).'</pre>';
		$bono = null;
        $this->db->select('SUM(bono) as bono');
		$this->db->where('patrocinador', $id);
		$this->db->where('pagado', 0);
        $q = $this->db->get('bono_inicio');
        if ($q->num_rows() > 0) {
            foreach ($q->result() as $r) {
                $bono = $r->bono;
            }
        }
        return $bono;
	}


    /**
     * Elimina las compras de la tabla compras
     *
     * @param Type $idcod_socio
     * @return type void
     * @autor Pablo Orejuela
     **/
    public function _delete_compras($idcod_socio){
        
        $this->db->trans_start();
        $this->db->where('idcod_socio', $idcod_socio);
        $this->db->delete('compras');
        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE){
            echo 'Hubo un error y no se pudo borrar el usuario';
        }

    }
	
}

/* End of file Evento_model.php */
/* Location: ./application/models/Evento_model.php */
