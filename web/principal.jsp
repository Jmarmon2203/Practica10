<%@page import="Modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% HttpSession ses = request.getSession();%>
<% response.setHeader("Cache-Control", "no cache, no-store, must-revalidate");%>
<% Boolean init = (Boolean) ses.getAttribute("validUser");%>

<% String url = request.getContextPath() + "/principalCSS.css";%>

<% Double sumaPrecios = (Double) ses.getAttribute("sumaPrecios"); %>

<% if(init != null && init) { %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Página principal</title>
    <link rel="stylesheet" type="text/css" href="<%=url%>">
</head>
<body>
    <h1>The Wild Forest</h1>
    <img src="imagen/thewildforestLogo.png">
    <p id="suma">La suma de los precios es de: <%= sumaPrecios %> €</p>
    <p id="tabla">Pulsa <a href="${urlTabla}">aquí</a> para ver la tabla de los artículos </p>
    <p id="lista">Pulsa <a href="${urlLista}">aquí</a> para ver la lista de los articulos</p>
    <p id="volver">Pulsa <a href="index.jsp">aquí</a> para volver</p>
    <p id="autor">Autor: Jesús Martinez Montalvo</p>
</body>
</html>

<% } else { %>
    <% 
    response.sendRedirect("error.jsp"); 
    %>
<% } %>