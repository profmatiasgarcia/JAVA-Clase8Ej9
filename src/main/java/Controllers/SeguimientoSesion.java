/** 
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
**/
package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Date;
import java.util.Enumeration;

public class SeguimientoSesion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SeguimientoSesion</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SeguimientoSesion at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            //otener la sesion actual o crearla
            HttpSession sesionCli = request.getSession(true);
            //datos de la sesion
            String idSesion = sesionCli.getId();
            long fechaCreacion = sesionCli.getCreationTime();
            long fechaUltimoAcceso = sesionCli.getLastAccessedTime();
            //incrementar el contador, usando la sesion del cliente con el nombre cuenta.ss
            Integer cuenta = (Integer)sesionCli.getAttribute("cuenta.ss");
            if (cuenta == null)
                cuenta = 1;
            else
                cuenta++;
            sesionCli.setAttribute("cuenta.ss", cuenta);
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Seguimiento de Sesion</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Demostración de seguimiento de una sesión</h1>");
            //visualizar la cuenta para esta pagina
            out.println("Has visitado esta pagina " + cuenta + ((cuenta==1) ? " vez." : " veces."));
            out.println("<p>");
            out.println("<h2>Datos de tu sesión:</h2>");
            out.println("Sesión: " + idSesion);
            out.println("<br>Fue creada: " + (new Date (fechaCreacion)).toString());
            out.println("<br>Atributos: <br>");
            Enumeration nombresParams = sesionCli.getAttributeNames();
            while (nombresParams.hasMoreElements()){
                String param = (String)nombresParams.nextElement();
                Object valor = sesionCli.getAttribute(param);
                out.println(param + ": " + valor.toString() + "<br>");
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
