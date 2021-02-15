<%@page import="com.nowe.modelo.Vivienda"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="Stylesheet" href="estilos/estilos.css"/>
</head>
<body>
<header>
<div class="imagencabecero">
<h2>Inmobiliaria Siglo XXI</h2>
</div>

<div class="topnav">
  <a href="smostrarviviendas">Mostrar todos los productos</a>
  <a href=#>Quines somos</a>
  <a href="#">Preguntas frecuentes</a>
</div>
</header>

<%Vivienda v = (Vivienda) request.getAttribute("vivienda"); %>
<div class="imagenVivienda">
<img src="imagenes/<%=v.getUrl_imagen_g()%>"/>
</div>
<div class="detalles">
<%=v.getIdvivienda() %></br>
<%=v.getDireccion() %></br>
<%=v.getCiudad() %>,
<%=v.getCp() %></br>
<%switch(v.getAlquiler_venta()){
	case "al" :%>Para alquiler
	<%			break;
	case "ve" :%>Para venta
	<%          break; 
	case "av" : %> Para venta o alquiler
	<% break; } %>


Precio : <%=v.getPrecio()%></br>
<h3>Detalles</h3>
Superficie en metros cuadrados : <%=v.getSuperficie()%> <br/>
Número de habitaciones : <%=v.getNum_Habitaciones() %><br/>
Número de baños : <%=v.getNum_Banios() %><br/>
<%=v.getDescripcion() %>
<br/>
<br/>
<a href="fDatosPersonales.jsp?id=<%=v.getIdvivienda() %>">Pedir Información</a>
</div>

</body>
</html>