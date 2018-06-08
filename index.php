<!DOCTYPE html>
<html lang="es">
<head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>Taller1</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap4/css/bootstrap.min.css">
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">

    <!-- Bootstrap Vertical Nav -->
    <link rel="stylesheet" href="estilo.css">

    <style type="text/css">

    </style>
</head>
<body>
<!-- Modal -->
<div class="modal fade" id="respuesta" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Información</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div id="modal_respuesta" class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>
        
      </div>
    </div>
  </div>
</div>

<div class="container-fluid">
    <div class="row">
 

        <nav class="col-sm-3 col-md-2 col-xs-11 hidden-xs-down bg-faded sidebar">
         <h6 class="text"><i class="fa fa-window-restore"></i> General</h6>
          <ul class="nav nav-pills flex-column">

            <li class="nav-item">
                <a class="nav-link active" url="Vistas/Pedido_vista.php" href="#pedidos"><i class="fa fa-cart-arrow-down"></i> Pedidos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " url="Vistas/Novedad_vista.php" href="#novedad_pedidos"><i class="fa fa-id-card-o"></i> Novedad Pedidos</a>
            </li>            
           <!-- <li class="nav-item">
              <a class="nav-link" href="#clientes"><i class="fa fa-users"></i> Clientes</a>
            </li>
    -->
          </ul>
          <hr>
          <h6 class="text"><i class="fa fa-bar-chart"></i> Reportes</h6>
          <ul class="nav nav-pills flex-column">

            <li class="nav-item">
                <a class="nav-link " url="Vistas/mostrar_vista.php" href="#mostrar_pedidos"><i class="fa fa-id-card-o"></i>Pedidos</a>
            </li>            


          </ul>
        </nav>

        <div class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
           <div class="col-xs-12" style="position: fixed; width:100%;top:0px;padding-top:23px; background:#fff;    z-index: 1020;">
               <h3 id="title" class="text-primary"></h3><hr style="margin-bottom:1px">             
           </div>
           <div class="clearfix" style="margin-top:70px;"></div>
           <div id="modulo" class="col-xs-12">

           </div>
        </div>

    </div>
</div>

<!-- jQuery first, then Bootstrap JS. -->
<script src="jquery-3.2.1.js"></script>
<script src="tether.min.js"></script>
<script src="bootstrap4/js/bootstrap.min.js"></script>
<script src="jquery_validate/jquery.validate.min.js"></script>
<script src="jquery_validate/localization/messages_es.min.js"></script>
<script src="script.js"></script>

<script type="text/javascript">

    $(document).ready(function(){
        $('.sidebar a').off('click').on('click',function(e){
            var t = $(this);
            $('#title').html(t.html());
            $('.sidebar a').removeClass('active');
            t.addClass('active');
            getModulo(t);
        });
        $('.sidebar a.active').trigger('click');
    });

    function getModulo(t) {
        //console.log($( obj ).attr( "url" ));
        $("#modulo").html('');
        if(t.attr('url')){
            scripts.ajax({
                url: t.attr("url"),
                method: "POST"
            }).done(function( data ) {
                $("#modulo").html(data);
            });
        }
    }
</script>
</body>
</html>