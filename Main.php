
<?php 

 function autoCarga($clase='')
{
	if (file_exists("$clase.php")) {
		require_once("autoCarga");
	}
}
spl_autoload_register();


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
	case 'eliminar_pedido':
	
		$pedido = new Pedido();
		
		$pedido->Eliminar($_POST['pedido']);		

		break;

	default:
		# code...
		break;
}



 ?>
