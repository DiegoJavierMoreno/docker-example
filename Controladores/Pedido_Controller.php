
<?php 

require_once(__DIR__."/../Modelos/Cliente_Natural.php");
require_once(__DIR__."/../Modelos/Cliente_Juridico.php");
require_once(__DIR__."/../Modelos/Pedido.php");
require_once(__DIR__."/../Modelos/Producto.php");
require_once(__DIR__."/../Modelos/Novedad_Pedido.php");

/**
* controlador para pedidos
*/
class Pedido_Controller 
{
	
	public function main()
	{

		switch ($_POST['op']) {
			case 'crear_pedido':
				

				if ($_POST['tipo_cliente']=='natural'){
					$objCliente= new Cliente_Natural();
					$objCliente->Eps=$_POST['eps'];
				}else{
					$objCliente= new Cliente_Juridico();
					$objCliente->Root=$_POST['root'];
					$objCliente->Camara_y_comerciio=$_POST['camara_comercio'];
				}
				$objCliente->Identificacion=$_POST['identifica'];
				$objCliente->Nombre=$_POST['nombre_completo'];
				$objCliente->Direccion=$_POST['dir'];
				$objCliente->Telefono=$_POST['telefono'];
				$objCliente->Correo=$_POST['correo'];
				$objCliente->Nombre=$_POST['nombre_completo'];
				$objCliente->Crear();

				$pedido = new Pedido($objCliente);
				$pro= new Producto();
				foreach ($_POST["productos"] as $id_pro => $value) {
					$info_pro= $pro->getDetalle($id_pro); 
					$pedido->agregar_detalle($info_pro,$value['cantidad_f'],$value['valor_f']);
				}
				
				$pedido->crear();
				$pedido->Enviar_notificacion();
				break;
			case 'crear_novedad':
				$pedido = new Pedido();
				$novedad_pedido= new Novedad_Pedido($_POST['id_pedido'],$_POST['desc']);
				$pedido->CrearNovedad($novedad_pedido);
				break;
			case 'pru_rest':
				$datos['id_pedido']=55;
				$datos['desc']='prueba desde php';
				$res=$this->CallAPI('POST','http://localhost:8080/servicio_tienda/api/pedidosNovedades',json_encode( $datos));
				echo "<pre>";
				var_dump(json_decode($res,true));
				echo "</pre>";
				break;				
	
		}
	}




function CallAPI($method, $url, $data = false)
{
    $curl = curl_init();

    switch ($method)
    {
        case "POST":
            curl_setopt($curl, CURLOPT_POST, 1);

            if ($data)
                curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
            break;
        case "PUT":
            curl_setopt($curl, CURLOPT_PUT, 1);
            break;
        default:
            if ($data)
                $url = sprintf("%s?%s", $url, http_build_query($data));
    }

    // Optional Authentication:
    curl_setopt($curl, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
    curl_setopt($curl, CURLOPT_USERPWD, "username:password");

    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

    $result = curl_exec($curl);

    curl_close($curl);

    return $result;
}	

}


$pedido_class= new Pedido_Controller();
$pedido_class->main();


 ?>
