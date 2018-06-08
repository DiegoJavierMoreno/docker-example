
<?php 

require_once(__DIR__."/../Modelos/Cliente_Natural.php");
require_once(__DIR__."/../Modelos/Cliente_Juridico.php");
require_once(__DIR__."/../Modelos/Pedido.php");
require_once(__DIR__."/../Modelos/Producto.php");
require_once(__DIR__."/../Modelos/Novedad_Pedido.php");

/**
* 
*/
class Reportes_Controller 
{
	
	public function main()
	{

		switch ($_POST['op']) {

			case 'eliminar_pedido':
			
				$pedido = new Pedido();
				
				$pedido->Eliminar($_POST['pedido']);		

				break;

			default:
				# code...
				break;
		}		
	}
}


$reportes= new Reportes_Controller();
$reportes->main();


 ?>
