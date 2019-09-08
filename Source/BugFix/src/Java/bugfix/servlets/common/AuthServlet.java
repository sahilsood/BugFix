/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bugfix.servlets.common;

import bugfix.beans.common.UsermasterBean;
import bugfix.services.common.UsermasterServices;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sahilsood
 */
@WebServlet(name = "AuthServlet", urlPatterns = {"/AuthServlet"})
public class AuthServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            UsermasterServices objSer = new UsermasterServices();
            HttpSession session = request.getSession();
            if(request.getParameter("sbtnLogin") != null){
                String username = request.getParameter("txtUsername");
                String password = request.getParameter("txtPassword");
                
                UsermasterBean objBean = objSer.authUser(username, password);
                if(objBean != null){
                    
                    session.setAttribute("userId", objBean.getUserId());
                    session.setAttribute("username", objBean.getUsername());
                    session.setAttribute("userType", objBean.getUserType());
                    String type = objBean.getUserType();
                    
                    if(objBean.getUserStatus().equalsIgnoreCase("active")){
                        
            
                        switch(type.toLowerCase()){
                            case "administrator":
                                response.sendRedirect("/BugFix/admin/HomePageAdmin.jsp");
                                break;
                            case "user" :
                                response.sendRedirect("/BugFix/user/HomePageUser.jsp");
                                break;
                            case "employee":
                                response.sendRedirect("/BugFix/admin/HomePageAdmin.jsp");
                                break;
                        }
                    } else{
                        response.sendRedirect("Login.jsp?msg=Sorry, You are an Inactive User");
                    }
                } else{
                    response.sendRedirect("Login.jsp?msg=Invalid Username or Password");
                }
            }
        } finally {
            out.close();
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
