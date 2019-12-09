/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.Manga;
import Utils.AlertScript;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hieule
 */
public class UpdateMangaServlet extends HttpServlet {

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
        String str_id = request.getParameter("manga_id");
        int id = Integer.parseInt(str_id.equals("")? "0":str_id);
        String manga_name = request.getParameter("manga_name");
        float manga_price = Float.parseFloat(request.getParameter("manga_price"));
        String manga_des = request.getParameter("manga_des");
        String author_name = request.getParameter("author_name");
        String update = request.getParameter("update");
        System.out.println(update);
        
        Manga manga = new Manga(id, manga_name, manga_price, manga_des, author_name);
        if(update.equals("add"))
            MangaDB.add(manga);
        else if(update.equals("update"))
            MangaDB.update(manga);
        else
            MangaDB.delete(manga);
        
        System.out.println(String.format("------------%sed successfully-----------", update));
        
        PrintWriter out = response.getWriter();
        out.println(AlertScript.toScript(String.format("%sed successfully!!", update), "viewMangaServlet"));
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
