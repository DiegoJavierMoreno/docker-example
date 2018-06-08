<?php

 function autoCargaC($clase='')
{
    if (file_exists("$clase.php")) {
        require_once("autoCargaC");
    }
}
spl_autoload_register();

/**
 *
 */
class Cliente_Natural extends Cliente
{

    /**
     * @var void
     */
    public $Eps ;

    /**
     * @var void
     */
   // public $Numero_de_hijos ;

    /**
     *
     */
    public $db;


  

 
    function __construct()
    {
        $this->db= new db();
    }

    /**
     * @inheritDoc
     */
    public function Crear()
    {
        try {
            $campos= $this->get_campos();


            $sql="INSERT INTO cliente(identificacion,nombre,direccion,telefono,eps,correo) VALUES ('$campos[Identificacion]','$campos[Nombre]','$campos[Direccion]','$campos[Telefono]','$campos[Eps]','$campos[Correo]') RETURNING id_cliente;";
            $r=pg_fetch_assoc($this->db->consulta($sql)); 
            $this->id_cliente=$r['id_cliente'];
            return true;
        } catch (Exception $e) {
            echo "Error creando cliente: ".$e;
            return false;
        }
    }

public function get_campos()
{
    return get_object_vars($this);
}
    /**
     * @inheritDoc
     */
    public function Editar()
    {
        // TODO: implement here
    }

    /**
     * @inheritDoc
     */
    public function Eliminar()
    {
        // TODO: implement here
    }

    /**
     * @inheritDoc
     */
    public function Consultar()
    {
        // TODO: implement here
    }

}
