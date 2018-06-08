<?php


/**
 *
 */
class Cliente_Juridico extends Cliente
{

    /**
     * @var void
     */
    public $Root ;

    /**
     * @var void
     */
    public $Camara_y_comerciio ;

        function __construct()
    {
        $this->db= new db();
    }

    /**
     *
     */
    public function Crear()
    {
        try {
            $campos= $this->get_campos();


            $sql="INSERT INTO cliente(identificacion,nombre,direccion,telefono,root,camara_comercio,correo) VALUES ('$campos[Identificacion]','$campos[Nombre]','$campos[Direccion]','$campos[Telefono]','$campos[Root]','$campos[Camara_y_comerciio]','$campos[Correo]') RETURNING id_cliente;";
            $r=pg_fetch_assoc($this->db->consulta($sql));
            $this->id_cliente=$r['id_cliente'];
            return true;
        } catch (Exception $e) {
            echo "Error creando cliente: ".$e;
            return false;
        }
    }

    /**
     *
     */
    public function Editar()
    {
        // TODO: implement here
    }

    /**
     *
     */
    public function Eliminar()
    {
        // TODO: implement here
    }

    /**
     *
     */
    public function Consultar()
    {
        // TODO: implement here
    }

    /**
     * @inheritDoc
     */
   
public function get_campos()
{
    return get_object_vars($this);
}
}
