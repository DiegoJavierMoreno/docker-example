<?php


/**
 *
 */
abstract class Cliente
{
    /**
     *
     */
    public function __construct()
    {
    }

    /**
     * @var void
     */
    public $Identificacion ;

    /**
     * @var void
     */
    public $Nombre ;

    /**
     * @var void
     */
    public $Direccion ;

    /**
     * @var void
     */
    public $Telefono ;

    /**
     * @var void
     */
    public $Correo ;

      public $id_cliente;




    /**
     *
     */
    public abstract function Crear();

    /**
     *
     */
    public abstract function Editar();

    /**
     *
     */
    public abstract function Eliminar();

    /**
     *
     */
    public abstract function Consultar(


        );





}
