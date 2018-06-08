<?php

 function autoCarga2($clase='')
{
    if (file_exists("$clase.php")) {
        require_once("autoCarga2");
    }
}
spl_autoload_register();
/**
 *
 */
class Producto
{
    /**
     *
     */


    /**
     * @var void
     */
    public $Nombre ;

    /**
     * @var void
     */
    public $Valor ;
    public $db ;

    /**
     * @var void
     */
    public $Cantidad ;
    public $id_producto ;

    function __construct()
    {
        $this->db= new db();
    }

    /**
     *
     */

    public function getDetalle($id_pro)
    {
        try {
            $select="SELECT * FROM producto where id_producto=".$id_pro;
            $result=pg_fetch_assoc($this->db->consulta($select));
            $this->Nombre=$result['nombre'];
            $this->Cantidad=$result['cantidad'];
            $this->Valor=$result['valor'];
            $this->id_producto=$result['id_producto'];

            return $this;            
        } catch (Exception $e) {
            echo "Ocurrio un error: ".$e;
        }
    }
    public function Crear()
    {
        // TODO: implement here
    }
    public function GetProductos()
    {
        try {
            $select="SELECT * FROM producto";
            $r=$this->db->consulta($select);

            return $r;
        } catch (Exception $e) {
            echo "Ocurrio un error: ".$e;
        }
    }
    /**
     *
     */
    public function Editar()
    {
        // TODO: implement here
    }


}
