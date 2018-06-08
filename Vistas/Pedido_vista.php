

<form id="datos_pedido">

<ul class="nav nav-tabs" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" href="#info_cliente" role="tab" data-toggle="tab">Informacion Cliente</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#info_productos" role="tab" data-toggle="tab">Productos</a>
  </li>

</ul>



<div id="tab_pedido" class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="info_cliente">
    
  <br/>
  <div class="row">
          <div class="form-group col-xs-12 col-md-12">
            <label for="identifica">Identificacion</label>
            <input type="input" class="form-control" id="identifica" name="identifica" aria-describedby="Identificacion" placeholder="Ingrese Identificacion">            
          </div>
          <div class="form-group col-xs-12 col-md-4">
            <label for="nombre_completo">Nombre Completo</label>
            <input type="input" class="form-control" id="nombre_completo" name="nombre_completo" aria-describedby="nombre_completo" placeholder="Ingrese el nombre completo">
          </div>
          <div class="form-group col-xs-12 col-md-4">
            <label for="telefono">Telefono</label>
            <input type="input" class="form-control" id="telefono"  name="telefono" placeholder="Ingrese telefono">
          </div>
  

           <div class="form-group col-xs-12 col-md-4">
            <label for="direccion">Direccion</label>
            <input type="input" class="form-control" id="direccion" name="direccion" placeholder="Ingrese Direccion">
          </div>

           <div class="form-group col-xs-12 col-md-4">
            <label for="correo">Correo</label>
            <input type="input" class="form-control" id="correo" name="correo" placeholder="Ingrese Correo">
          </div>


          <fieldset class="form-group col-xs-12 col-md-4">
            <label for="tipo_cliente">Tipo Cliente</label>
            <div class="form-check">
              <label class="form-check-label">
                <input type="radio" class="form-check-input" name="tipo_cliente" id="natural" value="natural" checked>
                Natural
              </label>
            </div>
            <div class="form-check">
            <label class="form-check-label">
                <input type="radio" class="form-check-input" name="tipo_cliente" id="juridico" value="juridico">
                Juridico
              </label>
            </div>

          </fieldset>
         <div id="div_root" class="form-group col-xs-12 col-md-4">
            <label for="root">Root</label>
            <input type="input" class="form-control" id="root" aria-describedby="root" placeholder="Ingrese root">
          
          </div>

           <div id="div_c_c" class="form-group col-xs-12 col-md-4">
            <label for="camara_comercio">Camara y comercio</label>
            <input type="input" class="form-control" id="camara_comercio" aria-describedby="camara_comercio" placeholder="Ingrese Camara y comercio">
          </div>

           <div id="div_eps" class="form-group col-xs-12 col-md-4">
            <label for="eps">Eps</label>
            <input type="input" class="form-control" id="eps" aria-describedby="eps" placeholder="Ingrese Eps">
            
          </div>

    </div>
<hr>
<br><br>
    <button type="button" onclick="next()" class="btn btn-primary">Siguiente</button>
    <button type="button" onclick="rest()" class="btn btn-primary">Probar rest</button>
  </div>

  <div role="tabpanel" class="tab-pane fade" id="info_productos">
  <br/>
  
    <div class="form-group  col-xs-12 col-md-4">
      <label for="id_productos">Productos</label>
      <select class="form-control" id="id_productos">
      <?php 
      require_once("../Modelos/Producto.php");
        $productos= new Producto();
        $resul_productos = $productos->GetProductos(); //var_dump($resul_productos); die;
        while ($value = pg_fetch_assoc($resul_productos)) {
        //var_dump($value);die;
          echo '<option  valor="'.$value['valor'].'" value="'.$value['id_producto'].'">'.$value['nombre']. '</option>';
        }

      ?>

      </select>
    </div>





     <div id="div_eps" class="form-group col-xs-12 col-md-4">
      <label for="cantidad">Cantidad</label>
      <input type="input" class="form-control" id="cantidad" aria-describedby="Cantidad" placeholder="Ingrese Cantidad">
      
    </div>    



    <button type="button" onclick="agregar_producto()" class="btn btn-primary">Agregar producto</button>
    <br/><br/>

       <table  id="tb_pro" class="table">
      <thead>
        <tr>
          
          <th>Nombre Producto</th>
          <th>Cantidad</th>
          <th>Valor</th>
        </tr>
      </thead>
      <tbody>
        <tr><td ><strong>Total</strong></td><td id="td_cantidad"></td><td id="td_total"></td> </tr>
        
      </tbody>
    </table>

    <button type="button" onclick="guardar_pedido()" class="btn btn-primary">Guardar</button>
  </div>
</div>

</form>




 


<script type="text/javascript">
$(document).ready(function() {
    $("#datos_pedido").validate({
  ignore:[],
    rules: {
      correo: {
        required: true,
        email: true
      },
      identifica: {
        required: true,
        minlength: 5,
        digits: true
      },
      nombre_completo: {
        required: true,
        minlength: 10
      },
       tipo_cliente: {
        required: true
       
      },
      telefono: {
        required: true,
        minlength: 5,
        digits: true        
        
      },      
    }
});


  });

function rest() {
        scripts.ajax({
          url: "Controladores/Pedido_Controller.php",
          method: "POST",
          data:{op:"pru_rest",identifica: $("#identifica").val()},
        }).done(function( data ) {
            
            $("#modal_respuesta").html(data);
            
            $('#respuesta').modal('show');
            //$("#modulo").html("");
        });
}

function next() {
  $('a[href="#info_productos"]').trigger('click');
}
  $('#div_root').hide();
  $('#div_c_c').hide();
$( 'input:radio[name="tipo_cliente"] ' ).on( "click", function() {
  //$( "#log" ).html( $( "input:checked" ).val() + " is checked!" );

  if ($( "input:checked" ).val()=="juridico") {
  
    $('#div_root').show();
    $('#div_c_c').show();
    $('#div_eps').hide();
  }else{
    
    $('#div_root').hide();
    $('#div_c_c').hide();
    $('#div_eps').show();    
  }

});

productos_f={};
total_tr=0;
cantidad_tr=0;
function agregar_producto() {
 
 id_pro=$('#id_productos').val();
if (productos_f[id_pro]==undefined) {
  cant_pro=$('#cantidad').val();

  
  nombre_pro=$( "#id_productos option:selected" ).text();
  valor_pro=$( "#id_productos option:selected" ).attr("valor")*cant_pro;
  $('#tb_pro tr:last').before(' <tr><td>'+nombre_pro+'</td> <td>'+cant_pro+'</td>   <td>$ '+valor_pro+'</td> </tr>');
    cantidad_tr+=parseInt(cant_pro);
  total_tr+=parseInt(valor_pro);
  $( "#td_cantidad" ).text(cantidad_tr);
  $( "#td_total" ).text('$ '+total_tr);
   
      productos_f[id_pro]={valor_f:valor_pro,cantidad_f:cant_pro};
  } 
}

function guardar_pedido() {


        if (!$("#datos_pedido").valid()) {
                  $("#modal_respuesta").html('Por favor, valide los datos ingresados.');
                  
                  $('#respuesta').modal('show');
                  return false;
        }
        scripts.ajax({
          url: "Controladores/Pedido_Controller.php",
          method: "POST",
          data:{op:"crear_pedido",identifica: $("#identifica").val(),nombre_completo: $("#nombre_completo").val(),telefono: $("#telefono").val(),tipo_cliente: $( "input:checked" ).val(),root: $("#root").val(),camara_comercio: $("#camara_comercio").val(),eps: $("#eps").val(),dir: $("#direccion").val(),correo: $("#correo").val(),productos:productos_f},
        }).done(function( data ) {
            
            $("#modal_respuesta").html(data);
            
            $('#respuesta').modal('show');
            //$("#modulo").html("");
        });
}
</script>