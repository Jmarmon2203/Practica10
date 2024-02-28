<%-- 
    Document   : jspArticulos
    Created on : 27-feb-2024, 18:02:52
    Author     : usuario
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Articulo"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Date"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String url = request.getContextPath() + "/tablaCSS.css";%>
<% List <Articulo> art = (ArrayList) session.getAttribute("lista_articulos");%>

<% HttpSession ses = request.getSession();%>
<% response.setHeader("Cache-Control", "no cache, no-store, must-revalidate");%>
<% Boolean init = (Boolean) ses.getAttribute("validUser");%>

<% if(init != null && init) { %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tabla de artículos</title>
    <link rel="stylesheet" type="text/css" href="<%=url%>">
</head>
<body>
    <h1>Artículos disponibles</h1>
    <%for(Articulo articulo : art) {
        System.out.println(art);
    }%>
    <div id="tabla-container">
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Precio</th>
                <th>Fecha</th>
            </tr>
            <% for (Articulo articulo : art) {%>
            <tr>
                <td><%= articulo.getNombre()%></td>
                <td><%= articulo.getPrecio() + "€"%></td>
                <td><%= articulo.getFecha()%></td>
            </tr>
            <% }%>

        </table>
    </div>
        <p>Pulsa <a href="index.jsp">aquí</a> para volver</p>
</body>
</html>

<% } else { %>
    <% response.sendRedirect("index.jsp"); %>
<% } %>