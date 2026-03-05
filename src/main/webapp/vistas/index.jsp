<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Registro</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/estilos/estilo.css">
</head>
<body>
  <h1>Registro simple</h1>

  <form action="${pageContext.request.contextPath}/vistas/listado.jsp" method="post" novalidate>
    <label>Nombre:</label>
    <input type="text" name="nombre" value="${param.nombre}">
    <label>Edad:</label>
    <input type="number" name="edad" value="${param.edad}" >
    <button type="submit">Enviar</button>
  </form>

  <a href="${pageContext.request.contextPath}/vistas/listado.jsp">Ver listado</a>
</body>
</html>