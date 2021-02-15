<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="Stylesheet" href="estilos/estilos.css" />
</head>
<body>
	<header>
		<div class="imagencabecero">
			<h2>Inmobiliaria Moralzarzal</h2>
		</div>

		<div class="topnav">
			<a href="smostrarviviendas">Mostrar todas nuestras viviendas</a> <a
				href=#>Quines somos</a> <a href="#">Preguntas frecuentes</a>
		</div>
	</header>

	<div>
		<h1>Buscador</h1>
		<form action="sbusqueda" method="post">
			Ciudad: <select name="ciudad">
				<option value="NA">Seleccione una opción</option>
				<option value="Moralzarzal">Moralzarzal</option>
				<option value="Coslada">Coslada</option>
				<option value="Alcobendas">Alcobendas</option>
			</select> 
			<br/> 
			Habitaciones: <select name="habitaciones">
				<option value="NA">Seleccione una opción</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
			</select>
			<br/>
			<input type="radio" name="AlquilerVenta" value="al"/> Alquiler
			<input type="radio" name="AlquilerVenta" value="ve"/> Venta
			<br/>
			Precio desde: 
			<input type="text" name="pDesde"/>
			<br/>
			Precio hasta:
			<input type="text" name="pHasta"/>
			<br/>
			<input type="submit" value="Buscar"/>



		</form>

	</div>

</body>
</html>