<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listado</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/estilos/estilo.css">
<style>
table {
	width: 100%;
	max-width: 500px;
	background: #fff;
	border-collapse: collapse;
	border-radius: 10px;
	overflow: hidden;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

th, td {
	padding: 12px;
	border-bottom: 1px solid #eee;
	text-align: left;
}

th {
	background: #f0f3f6;
	color: #2c3e50;
}

tr:last-child td {
	border-bottom: none;
}
</style>
</head>
<body>
	<h2>Listado de personas</h2>

	<%
	// Datos iniciales
	List<String> nombres = new ArrayList<>();
	List<Integer> edades = new ArrayList<>();
	nombres.add("Ana");
	edades.add(20);
	nombres.add("Luis");
	edades.add(17);
	nombres.add("María");
	edades.add(22);

	// Capturar datos del form
	String nombre = request.getParameter("nombre");
	String edadStr = request.getParameter("edad");

	System.out.println("Recibido en 'nombre': " + nombre);

	if (nombre != null && !nombre.isBlank() && edadStr != null) {
		try {
			int edad = Integer.parseInt(edadStr);
			if (edad >= 1 && edad <= 120) {
		nombres.add(nombre);
		edades.add(edad);
			}
		} catch (Exception e) {
			// no se agrega si la edad es inválida
		}
	}

	if (nombres.isEmpty()) {
	%>
	<p>No hay registros aún.</p>
	<%
	} else {
	%>
	<table>
		<thead>
			<tr>
				<th>Nombre</th>
				<th>Edad</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < nombres.size(); i++) {
			%>
			<tr>
				<td><%=nombres.get(i)%></td>
				<td><%=edades.get(i)%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<%
	}
	%>

	<a href="${pageContext.request.contextPath}/vistas/index.jsp">Volver</a>
</body>
</html>