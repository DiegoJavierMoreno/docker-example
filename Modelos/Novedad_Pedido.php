<?php


/**
 *
 */
class Novedad_Pedido
{
    /**
     *
     */
    public function __construct($id_pedido,$desc)

    {
        $this->id_pedido=$id_pedido;
        $this->Descripcion=$desc;
    }

    /**
     * @var void
     */
    public $Fecha ;

    /**
     * @var void
     */
    public $Descripcion ;
    public $id_pedido ;

}
