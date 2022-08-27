<%--
 * @author Prof Matias Garcia.
 * <p> Copyright (C) 2022 para <a href = "https://www.profmatiasgarcia.com.ar/"> www.profmatiasgarcia.com.ar </a>
 * - con licencia GNU GPL3.
 * <p> Este programa es software libre. Puede redistribuirlo y/o modificarlo bajo los t�rminos de la
 * Licencia P�blica General de GNU seg�n es publicada por la Free Software Foundation, 
 * bien con la versi�n 3 de dicha Licencia o bien (seg�n su elecci�n) con cualquier versi�n posterior. 
 * Este programa se distribuye con la esperanza de que sea �til, pero SIN NINGUNA GARANT�A, 
 * incluso sin la garant�a MERCANTIL impl�cita o sin garantizar la CONVENIENCIA PARA UN PROP�SITO
 * PARTICULAR. V�ase la Licencia P�blica General de GNU para m�s detalles.
 * Deber�a haber recibido una copia de la Licencia P�blica General junto con este programa. 
 * Si no ha sido as� ingrese a <a href = "http://www.gnu.org/licenses/"> GNU org </a>
--%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page contentType="text/html"%>
<!DOCTYPE html>
<%--se declara la variable sesionActual de tipo HttpSession--%>
<%--se carga en sessionActual la variable de sesi�n nomUsuario--%>
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
    <%--Se Se crea un men� mendiante una lista de elementos--%>
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
