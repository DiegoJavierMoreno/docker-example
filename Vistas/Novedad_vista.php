<!DOCTYPE html>
<html>
<head>
	<title>Novedad</title>
</head>
<body>
<form id="novedad_pedido">
    <div class="form-group  col-xs-12 col-md-4">
      <label for="id_pedido">Pedidos</label>
      <select class="form-control" id="id_pedido">
      <?php 
      require_once("../Modelos/Pedido.php");
        $pedidos= new Pedido();
        $resul_pedidos = $pedidos->Consultar(); //var_dump($resul_productos); die;
        while ($value = pg_fetch_assoc($resul_pedidos)) {
        //var_dump($value);die;
          echo '<option  value="'.$value['id_pedido'].'">Número pedido: '.$value['id_pedido'].'</option>';
        }

      ?>

      </select>
    </div>

	 <div class="form-group col-xs-12 col-md-4">
	    <label for="descripcion">Descripcion</label>
	    <textarea class="form-control" id="descripcion" rows="3"></textarea>
	  </div>    
	  </br></br>
	  <button type="button" onclick="guardar_novedad()" class="btn btn-primary">Guardar</button>
</form>
</body>
</html>

<script type="text/javascript">
	
	function guardar_novedad() {
        scripts.ajax({
          url: "Controladores/Pedido_Controller.php",
          method: "POST",
          data:{op:"crear_novedad",desc:$("#descripcion").val(),id_pedido:$("#id_pedido").val()},
        }).done(function( data ) {
            
            $("#modal_respuesta").html(data);
            
            $('#respuesta').modal('show');
            //$("#modulo").html("");
        });		
	}
</script>