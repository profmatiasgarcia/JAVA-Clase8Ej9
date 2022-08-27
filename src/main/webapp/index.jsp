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
<%@page contentType="text/html"%>
<!DOCTYPE html>
<%-- inicia la creaci�n de la parte est�tica de la p�gina (HTML)--%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ejemplo de Sesiones</title>
</head>
<body>
<%--inicio de la creaci�n del formulario web. El action establece el Servlet que ser� ejecutado (en este caso miServlet) mediante post.--%>
    <form action="verificarsesion" method="POST">
        <%-- creaci�n de una tabla dentro del formulario.--%>
        <table align="center" width="350" style="border-style:blue">
            <thead>
                <tr>
                    <th colspan="2">Acceso</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td> Usuario:</td>
                <%-- crea una caja de texto donde el usuario digitar� el nombre--%>
                    <td> <input type="text" name="nombreUsuario"/> </td>
                </tr>
                <tr>
                    <td> Clave: </td>
                <%-- Crea una caja de texto donde el usuario digitar� la contrase�a--%>
                    <td><input type="password" name="clave"/></td>
                </tr>
                <tr>
                    <%--se crea el bot�n de comando.--%>
                    <td><input type ="submit" value="Aceptar"/></td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>