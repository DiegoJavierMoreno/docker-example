<?php


/**
 *
 */
class Pedido_detalle
{
    /**
     *
     */
    public function __construct(Producto $producto,$cantidad,$valor)
    {
        $this->Producto=$producto->id_producto;
        $this->Cantidad=$cantidad;
        $this->Valor=$valor;
    }

    /**
     * @var void
     */
    public $Producto ;

    /**
     * @var void
     */
    public $Cantidad ;

    /**
     * @var void
     */
    public $Valor ;
    public $Valor_producto =100 ;






}
