<?php


/**
 *
 */

 function autoCarga3($clase='')
{
    if (file_exists("$clase.php")) {
        require_once("autoCarga3");
    }
}
spl_autoload_register();


class Pedido implements Notificacion
{
    /**
     *
     */
    public $db ;

    /**
     * @var void
     */
    public $Numero;
    public $id_pedido;

    /**
     * @var void
     */
    public $Valor =0 ;

    public $_info_detalle = array();
    public $id_cliente;
    public $cliente;

    function __construct($cliente="")
    {
        $this->db= new db();
        $this->cliente=$cliente;
    }






    /**
     *
     */
    public function Crear()
    {
      try {
          
          $sql_crear = " INSERT INTO pedido(valor,id_cliente) values (".$this->Valor.",".$this->cliente->id_cliente." ) RETURNING id_pedido;";
          $pedido=pg_fetch_assoc($this->db->consulta($sql_crear));
          $this->id_pedido=$pedido['id_pedido'];
          $valor_aux=0;
          foreach ($this->_info_detalle as $key => $value) {
            $valor_aux+=$value->Valor;
              $sql_crear_d = " INSERT INTO pedido_detalle(valor,id_producto,id_pedido,cantidad) values (".$value->Valor.",".$value->Producto." ,".$this->id_pedido.",".$value->Cantidad.")";
              $pedido_d=$this->db->consulta($sql_crear_d);
             //echo "</br> Agregando producto: ".$value->Producto ." Por valor de: ".$value->Valor;
          }
          $sql_u="UPDATE pedido set valor=".$valor_aux." WHERE id_pedido=".$this->id_pedido;
          $pedidoU=$this->db->consulta($sql_u);
          echo "Pedido <strong>#".$this->id_pedido." por valor de $".number_format($valor_aux)."</strong> creado exiotasamente.";

      } catch (Exception $e) {
          echo "Error creando pedido: ".$e;
      }
    }

    public function agregar_detalle($producto,$cantidad,$valor)
    {
        try {
            //hacemos relacion de composicion
            
            $this->_info_detalle[] = new  Pedido_detalle( $producto,$cantidad,$valor) ;

        } catch (Exception $e) {
            echo "Error creando detalle: ".$e;
        }
    }

    /**
     *
     */
    public function Consultar()
    {
        try {
            $select="SELECT * FROM pedido";
            $r=$this->db->consulta($select);

            return $r;            
        } catch (Exception $e) {
            echo "Error consultando: ".$e;
        }
    }

    /**
     *
     */
    public function Enviar_notificacion()
    {
        try {
            echo "</br></br>Notificacion enviada al cliente: <strong>".$this->cliente->Nombre."</strong>";
        } catch (Exception $e) {
            echo "Error creando notificacion: ".$e;
        }
    }

    /**
     *
     */
    public function CrearNovedad(Novedad_Pedido $novedad)
    {
        try {
            $id_pedido=$novedad->id_pedido;
            $descripcion=$novedad->Descripcion;


            $sql="INSERT INTO novedad_pedido(id_pedido,descripcion,fecha) VALUES($id_pedido,'$descripcion',now()::date) ";
            $novedad=$this->db->consulta($sql);
            echo "Novedad creada exitosamente.";
        } catch (Exception $e) {
            echo "Error creando novedad: ".$e;
        }
    }

    public function Eliminar($id_pedido)
    {
        try {
            $sql="DELETE FROM  pedido WHERE id_pedido=".$id_pedido;
            $eliminar=$this->db->consulta($sql);
            echo "Se elimino el pedido correctamente.";
        } catch (Exception $e) {
             echo "Error eliminando pedido: ".$e;
        }
    }



}
