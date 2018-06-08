<?php 
/**
* 
*/
class db 
{
	protected $conexion;
	function __construct()
	{
		$this->conexion = pg_connect("host=10.20.251.14 port=5433 dbname=prod_db user=produser password=produser");
		if (!$this->conexion) {
		  echo "Ocurrió un error en la conexion.\n";
		  exit;
		}

	}

	       public function consulta($query)
        {
                try {
                        $result=pg_query($this->conexion,$query);
                        return $result;
                } catch (Exception $e) {
                        echo "ocurrio un error en la consulta $query Error: $e";
                }


        }

}

 ?>