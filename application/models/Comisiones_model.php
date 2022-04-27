<?php

class Comisiones_model extends CI_Model {

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
        $this->load->model('compras_model');
    }

	function _calcula_comisiones($data){
	
		//Si tiene 1 activo puede comisionar hasta el tercer nivel

		//Calcular las comisiones de los miemnbros pero por nivel

		//echo '<pre>Comisiones: '.var_export($data['red_activos'], true).'</pre>';


		//Calcular las comisiones de los miemnbros hasta el tercer nivel
		$primer = $this->procesos_model->_get_hijos($data['id']);
		$primer_nivel = $data['nivel_2'] = $this->procesos_model->_get_segundo_nivel($data['nivel_1']);
		
	}
	

	function _confirmar_pago($idcomision){
		$this->db->trans_start();
		$this->db->set('pagado', 1)->where('idcomision', $idcomision)->update('comisiones');
		$this->db->trans_complete();
        if ($this->db->trans_status() == FALSE) {
        	$this->db->trans_rollback();
            return 0;
        } else {
            return 1;
        }
	}

	/**
	 * undocumented function summary
	 *
	 * Undocumented function long description
	 *
	 * @param Type $var Description
	 * @return type
	 * @throws conditon
	 **/
	function _puntos_nivel($nivel){
		//echo '<pre>'.var_export($nivel, true).'</pre>';
		$puntos = 0;
		
		if (isset($nivel) && $nivel !== NULL) {
			foreach ($nivel as $value) {
				$puntos += $this->_get_puntos_mes($value->id);
			}	
		}

		return $puntos;
	}


	/**
	 * Devuelve las compras sin confirmar uninivel
	 *
	 * @return void
	 * @author Pablo Orejuela
	 **/
	function _get_puntos_mes($id){
		$puntos = 0;
		$mes_actual = date('m');
		
		$this->db->select('SUM(puntos) as puntos');
		$this->db->where('pago', 1);
		$this->db->where('primera', 0);
		$this->db->where('compras.id', $id);
		$this->db->where('MONTH(fecha)', $mes_actual);
		$this->db->join('paquetes', 'paquetes.idpaquete=compras.idpaquete');
		$q = $this->db->get('compras');
		//echo $this->db->last_query();
		if ($q->num_rows() > 0) {
			foreach ($q->result() as $r) {
				//echo $r->puntos;
				$puntos += $r->puntos;
			}
			return $puntos;
		}else{
			return 0;
		}

		
	}

}

/* End of file Comisiones_model.php *;
/* Location: ./application/models/Comisiones_model.php */
