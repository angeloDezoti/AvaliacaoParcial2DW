/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controles;

import DAOs.DAOTipoVinho;
import Entidades.TipoVinho;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jaque
 */
@WebServlet(name = "TipoVinhoServlet", urlPatterns = {"/tipo_vinho"})
public class TipoVinhoServlet extends HttpServlet {

    Locale ptBr = new Locale("pt", "BR");
    NumberFormat formatoDinheiro = NumberFormat.getCurrencyInstance(ptBr);

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
        String nomeTipoVinho = "";

        try (PrintWriter out = response.getWriter()) {
            nomeTipoVinho = request.getParameter("nomeTipoVinho");

            String resultado = "";
            if (nomeTipoVinho == null || nomeTipoVinho.equals("")) {
                resultado = listaTipoVinhosCadastrados();
            } else {
                resultado = listaTipoVinhoNome(nomeTipoVinho);
            }
            request.getSession().setAttribute("resultado", resultado);
            response.sendRedirect(request.getContextPath() + "/paginas/tipo_vinho.jsp");
        }
    }

    protected String listaTipoVinhoNome(String nomeTipoVinho) {
        DAOTipoVinho tipo_vinho = new DAOTipoVinho();
        String tabela = "";
        List<TipoVinho> lista = tipo_vinho.listByNome(nomeTipoVinho);
        for (TipoVinho l : lista) {
            tabela += "<tr>"
                    + "<td>" + l.getIdTipo() + "</td>"
                    + "<td>" + l.getNomeTipo() + "</td>"
                    + "<td>" + l.getUvaiduva()+ "</td>"
                    + "</tr>";
        }

        return tabela;
    }

    protected String listaTipoVinhosCadastrados() {
        DAOTipoVinho tipo_vinho = new DAOTipoVinho();
        String tabela = "";
        List<TipoVinho> lista = tipo_vinho.listInOrderNome();
        for (TipoVinho l : lista) {
            tabela += "<tr>"
                    + "<td>" + l.getIdTipo() + "</td>"
                    + "<td>" + l.getNomeTipo() + "</td>"
                    + "<td>" + l.getUvaiduva()+ "</td>"
                    + "</tr>";
        }

        return tabela;
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
        processRequest(request, response);
        System.out.println("teste doget");
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
        System.out.println("teste dopost");
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
