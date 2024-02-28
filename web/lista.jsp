<%-- 
    Document   : lista
    Created on : 27-feb-2024, 21:28:46
    Author     : usuario
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Articulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% String url = request.getContextPath() + "/listaCSS.css";%>

<% HttpSession ses = request.getSession();%>
<% response.setHeader("Cache-Control", "no cache, no-store, must-revalidate");%>
<% Boolean init = (Boolean) ses.getAttribute("validUser");%>

<% List <Articulo> art = (ArrayList) session.getAttribute("lista_articulos");%>

<% if(init != null && init) { %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de artículos</title>
        <link rel="stylesheet" type="text/css" href="<%=url%>">
    </head>
    <body>
        <% for (Articulo articulo : art) {%>
        <section>
            <h3><%=articulo.getNombre()%></h3>
            <article>
                <p><%=articulo.getPrecio() + "€"%></p>
                <img src="imagen/<%= articulo.getImagen() %>">
                <a href="ServletDetalles?id=<%= articulo.getId() %>">Detalles</a>
            </article>
        </section>
        <% }%>
        <p id="link">Pulsa <a href="index.jsp">aquí</a> para volver</p>
    </body>
</html>

<% } else { %>
    <% response.sendRedirect("index.jsp"); %>
<% } %>