<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <link rel="stylesheet" href="errorCSS.css">
</head>
<body>
    <%
        String url = "index.jsp";
    %>
    <h1>Error en el inicio de sesión</h1>
    <h2>Credenciales no válidas</h2>
    <p>Pulsa <a href="<%=url%>">aquí</a> para volver</p>
</body>
</html>
