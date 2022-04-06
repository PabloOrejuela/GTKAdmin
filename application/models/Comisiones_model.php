<?php

class Comisiones_model extends CI_Model {

	function _calcula_comisiones(){
		echo "Comisiones calculadas";
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
