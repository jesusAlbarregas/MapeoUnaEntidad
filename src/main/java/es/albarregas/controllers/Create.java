/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controllers;

import es.albarregas.beans.Profesor;
import es.albarregas.dao.IProfesorDAO;
import es.albarregas.daofactory.DAOFactory;
import es.albarregas.models.Util;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author jesus
 */
@WebServlet(name = "Create", urlPatterns = {"/Create"})
public class Create extends HttpServlet {

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
        doPost(request, response);
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
        DAOFactory daof = DAOFactory.getDAOFactory();
        IProfesorDAO pdao = daof.getProfesorDAO();
        Profesor profesor = null;
        String url = ".";
        if (request.getParameter("boton").equalsIgnoreCase("enviar")) {
            Enumeration<String> campos = request.getParameterNames();
            if (!Util.isCamposVavios(campos, request, "ape2")) {
                profesor = new Profesor();
                try {
                    BeanUtils.populate(profesor, request.getParameterMap());
                    pdao.add(profesor);

                } catch (IllegalAccessException | InvocationTargetException ex) {
                    Logger.getLogger(Create.class.getName()).log(Level.SEVERE, null, ex);
                }
            } else {
                request.setAttribute("aviso", "Todos los campos con \"*\" son obligatorios");
                url = "JSP/create/formularioAlta.jsp";
            }
            
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
