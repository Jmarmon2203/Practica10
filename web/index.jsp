<% HttpSession ses = request.getSession(false);%>
<% response.setHeader("Cache-Control", "no-store");%>
<% Boolean isSessionInit = (Boolean) ses.getAttribute("validUser"); %>

<% String url = request.getContextPath() + "/indexCSS.css";%>

<!DOCTYPE html>
<html>
    <head>
        <title>The Wild Forest</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="<%=url%>">
    </head>
    <body>
        <h1>Bienvenido a The Wild Forest</h1><br>
        <form action="ServletPrincipal" method="post">
            <input name="user" type="text" placeholder="User"><br><br>
            <input name="password" type="password" placeholder="Password"><br><br>
            <button type="submit">Iniciar sesión</button><br><br>
        </form>
        <% if (ses.getAttribute("validUser") != null) { %>
            <% if (isSessionInit){%>
                <a href="CerrarSesionServlet">Cerrar sesión</a>
            <%}%>
        <%}%>
    </body>
</html>