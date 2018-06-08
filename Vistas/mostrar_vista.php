<?php 
require_once("../Modelos/Pedido.php");
spl_autoload_register();

			$pedido = new Pedido();
			$resul_pedidos=$pedido->Consultar();
			$tabla='       <table  id="tb_report" class="table">
						      <thead>
						        <tr>
						          
						          <th>Número</th>
						          <th>Valor</th>
						          <th>Accion</th>
						          
						        </tr>
						      </thead>
						      <tbody>

';
			 while ($value = pg_fetch_assoc($resul_pedidos)) {
        			$tabla.= ' <tr id="fila_'.$value['id_pedido'].'"><td>'.$value['id_pedido'].'</td> <td>$'.number_format( $value['valor']).'</td> <td><a style="cursor: pointer !important; " onclick="eliminar_pedido('.$value['id_pedido'].')"> <i  class="fa fa-trash fa-2x text-danger" ></i> </a></td></tr>';
          		
        	}
        	$tabla.='	</tbody>
						    </table>';
			 echo $tabla;
 ?>

 <script type="text/javascript">
 	
 	function eliminar_pedido(id_pedido) {
 		 scripts.ajax({
          url: "Controladores/Reportes_Controller.php",
          method: "POST",
          data:{op:"eliminar_pedido",pedido: id_pedido},
        }).done(function( data ) {
            
            $("#modal_respuesta").html(data);
            
            $('#respuesta').modal('show');
            //$("#modulo").html("");
             $("#fila_" + id_pedido).remove();
        });
 	}
 </script>