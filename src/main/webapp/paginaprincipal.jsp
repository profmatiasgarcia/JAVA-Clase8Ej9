<%--
 * @author Prof Matias Garcia.
 * <p> Copyright (C) 2022 para <a href = "https://www.profmatiasgarcia.com.ar/"> www.profmatiasgarcia.com.ar </a>
 * - con licencia GNU GPL3.
 * <p> Este programa es software libre. Puede redistribuirlo y/o modificarlo bajo los términos de la
 * Licencia Pública General de GNU según es publicada por la Free Software Foundation, 
 * bien con la versión 3 de dicha Licencia o bien (según su elección) con cualquier versión posterior. 
 * Este programa se distribuye con la esperanza de que sea útil, pero SIN NINGUNA GARANTÍA, 
 * incluso sin la garantía MERCANTIL implícita o sin garantizar la CONVENIENCIA PARA UN PROPÓSITO
 * PARTICULAR. Véase la Licencia Pública General de GNU para más detalles.
 * Debería haber recibido una copia de la Licencia Pública General junto con este programa. 
 * Si no ha sido así ingrese a <a href = "http://www.gnu.org/licenses/"> GNU org </a>
--%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page contentType="text/html"%>
<!DOCTYPE html>
<%--se declara la variable sesionActual de tipo HttpSession--%>
<%--se carga en sessionActual la variable de sesión nomUsuario--%>
<%
    HttpSession sesionActual = request.getSession(true);
    String usuario = (String) sesionActual.getAttribute("nomUsuario");
    if(usuario == null) {
        response.sendRedirect("index.jsp");
    }
%>
<html>
<head>
    <%--Se muestra en el titulo de la pagina el nombre del usuario--%>
    <title>Bienvenido <%=usuario%> </title>
</head>
<body>
    <h4>Bienvenido: <%=usuario%></h4>
    <%--Se Se crea un menú mendiante una lista de elementos--%>
    <div id="menu">
        <ul>
            <li><a href="#">Mantenimiento</a></li> 
            <li><a href="#">Consultas</a></li>
            <li><a href="#">Informes</a></li>
            <li><a href="#">Acerca de...</a></li>
        </ul>
    </div>
</body>
</html>
