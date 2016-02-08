<%-- 
    Document   : frmusuarios
    Created on : 7/02/2016, 09:13:20 AM
    Author     : Pernett98
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>PC_Support</title>

        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/animate.css">
        <link href='https://fonts.googleapis.com/css?family=Bangers' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700' rel='stylesheet' type='text/css'>
        
        <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
        
        <script>
            $(document).ready(function(){
                $('#submit').click(function(event){
                   var userVar = $('#userName').val();
                   var nombreVar = $('#nombre').val();
                   var claveVar = $('#clave').val();
                   var estadoVar = $('#estado').val();
                   var perfilVar = $('#perfil').val();
                   var actionVar = $('#submit').val();
                   
                   $.post('./ServletUser',{                      
                        "userName" : userVar,
                        "nombre" : nombreVar,
                        "clave" : claveVar,
                        "estado" : estadoVar,
                        "perfil" : perfilVar,
                        "action" : actionVar
                      });
                });
            });
            
        </script>       
        
    </head>
    <body>
        <nav class="se-gris padding-largo text-center">
		<ul class="no-lista row">
			<li class="col-md-4 bangers azul mediano"><a href="index.jsp">PC_Support</a></li>
			<li class="col-md-4 bangers mediano"><a href="contacto.html">Contacto</a></li>
			<li class="col-md-4 bangers mediano"><a href="index.html">Acerca de</a></li>
		</ul>
	</nav>
        
        
        
        <div class="col-md-4 center-block quitar-float espacio-arriba text-left">
            <h1>Registro de usuario</h1>
            <div>${message}</div>
            <form method="post" style="margin-top:1.5em;" enctype="multipart/form-data">
                <div class="form-group">
                    <label>Usuario</label>
                    <input type="text" name="userName" id="userName" placeholder="usuario" class="form-control">
                </div>
                <div class="form-group">
                    <label>Nombre</label>
                    <input type="text" name="nombre" id="nombre" placeholder="nombres" class="form-control">
                </div>
                <div class="form-group">
                    <label>Clave</label>
                    <input type="password" name="clave" id="clave" placeholder="clave" class="form-control">
                </div>
                <div class="form-group">
                    <label>Estado</label>
                    <select name="estado" id="estado" class="form-control" >
                        <option value="activo">Activo</option>
                        <option value="inactivo">Inactivo</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Perfil</label>
                    <select name="perfil" id="perfil" class="form-control" >
                        <option value="administrador">Administrador</option>
                        <option value="soporte">Soporte</option>
                        <option value="usuario">Usuario</option>
                    </select>
                </div>
                <div class="form-group text-right">
                    <input type="submit" id="submit" class="btn btn-info" name="action" value="guardar">
                </div>
            </form>
        </div>
    </body>
</html>
