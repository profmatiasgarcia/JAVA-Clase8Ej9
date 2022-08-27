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
<%@page contentType="text/html"%>
<!DOCTYPE html>
<%-- inicia la creación de la parte estática de la página (HTML)--%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ejemplo de Sesiones</title>
</head>
<body>
<%--inicio de la creación del formulario web. El action establece el Servlet que será ejecutado (en este caso miServlet) mediante post.--%>
    <form action="verificarsesion" method="POST">
        <%-- creación de una tabla dentro del formulario.--%>
        <table align="center" width="350" style="border-style:blue">
            <thead>
                <tr>
                    <th colspan="2">Acceso</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td> Usuario:</td>
                <%-- crea una caja de texto donde el usuario digitará el nombre--%>
                    <td> <input type="text" name="nombreUsuario"/> </td>
                </tr>
                <tr>
                    <td> Clave: </td>
                <%-- Crea una caja de texto donde el usuario digitará la contraseña--%>
                    <td><input type="password" name="clave"/></td>
                </tr>
                <tr>
                    <%--se crea el botón de comando.--%>
                    <td><input type ="submit" value="Aceptar"/></td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>