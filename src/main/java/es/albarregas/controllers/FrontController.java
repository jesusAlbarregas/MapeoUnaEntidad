/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controllers;

import es.albarregas.dao.IProfesorDAO;
import es.albarregas.daofactory.DAOFactory;
import es.albarregas.beans.Profesor;
import java.io.IOException;

import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jesus
 */
@WebServlet(name = "FrontController", urlPatterns = {"/FrontController"})
public class FrontController extends HttpServlet {

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
        request.getRequestDispatcher(".").forward(request, response);
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
        String url = null;
        DAOFactory daof = DAOFactory.getDAOFactory();
        IProfesorDAO pdao = daof.getProfesorDAO();
        List<Profesor> listaProf = null;
        String operacion = request.getParameter("boton").substring(1, request.getParameter("boton").indexOf(")"));

        switch (operacion) {
            case "C":
                url = "JSP/create/formularioAlta.jsp";
                break;
            case "D":
            case "U":
            case "R":

                listaProf = pdao.get();
                request.setAttribute("listado", listaProf);

        }
        if (listaProf != null && !listaProf.isEmpty()) {
            switch (operacion) {
                case "R":
                    url = "JSP/read/listado.jsp";
                    break;
                case "D":
                    url = "JSP/delete/borrado.jsp";
                    break;
                case "U":
                    url = "JSP/update/actual.jsp";
                    break;
            }
        } else if(!operacion.equals("C")) {
            url = "JSP/notify/aviso.jsp";
            request.setAttribute("aviso", "No existen datos actualmente");
        }
        request.getRequestDispatcher(url).forward(request, response);
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
