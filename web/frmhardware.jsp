<%-- 
    Document   : FrmHardWare
    Created on : 6/02/2016, 10:11:27 PM
    Author     : Pernett98
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/animate.css">
        <link href='https://fonts.googleapis.com/css?family=Bangers' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700' rel='stylesheet' type='text/css'>
        <title>PC_Support</title>
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
            <h1>Agregar caso</h1>
            <form method="post" action="" style="margin-top:1.5em;" enctype="multipart/form-data">
                <div class="form-group">
                    <label>Id del caso</label>
                    <input type="number" name="id" placeholder="id del caso" class="form-control">
                </div>
                <div class="form-group">
                    <label>Caso</label>
                    <textarea name="caso" placeholder="Descripsion del caso" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <label>Solucion</label>
                    <textarea name="solucion" placeholder="Solucion del caso" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <label>Imagenes</label>
                    <input type="file" name="imagen_hardware" placeholder="imagenes" class="form-control">
                </div>
                <div class="form-group text-right">
                    <input type="submit" class="btn btn-info" value="Guardar">
                </div>
            </form>
        </div>        
    </body>
</html>
