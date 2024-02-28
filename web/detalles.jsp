<%@page import="Modelo.Articulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% String url = request.getContextPath() + "/detallesCSS.css";%>

<% HttpSession ses = request.getSession();%>
<% response.setHeader("Cache-Control", "no cache, no-store, must-revalidate");%>
<% Boolean init = (Boolean) ses.getAttribute("validUser");%>

<% if(init != null && init) { %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Detalles del Artículo</title>
    <link rel="stylesheet" type="text/css" href="<%=url%>">
</head>
<body>
    <% 
        Articulo articulo = (Articulo) session.getAttribute("articulo_seleccionado");
        if (articulo != null) {
    %>
    <h1><%= articulo.getNombre() %></h1>
        <p>Precio: <%= articulo.getPrecio() %>€</p>
        <p>Fecha: <%= articulo.getFecha() %></p>
        <p>Descripción: <%= articulo.getDescripcion()%></p>
        <p>Pulsa <a href="index.jsp">aquí</a> para volver</p>
    <% } else { %>
        <p>No se pudo encontrar el artículo seleccionado.</p>
    <% } %>
</body>
</html>

<% } else { %>
    <% response.sendRedirect("index.jsp"); %>
<% } %>