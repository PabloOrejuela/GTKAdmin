<?php

class Comisiones_model extends CI_Model {

	public function __construct(){
        parent::__construct();
        $this->load->model('compras_model');
    }

	function _calcula_comisiones($data){
		
		//echo 'Primero: '.count($data['nivel_1']);

		

		//Si tiene 1 activo puede comisionar hasta el tercer nivel

		//echo '<pre>'.var_export($compras, true).'</pre>';
		
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
}

/* End of file Comisiones_model.php *;
/* Location: ./application/models/Comisiones_model.php */
