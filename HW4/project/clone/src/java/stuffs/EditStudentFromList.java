/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package stuffs;

import connection.ConnectionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kings
 */
@WebServlet(name = "EditStudentFromList", urlPatterns = {"/EditStudentFromList"})
public class EditStudentFromList extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        try{
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String title = "Reading All Request Parameters";

            Manager_Paramname map= Manager_Paramname.getInstance();
            String sid= map.getValue("sid");
            String sname= map.getValue("sname");
            String nsid= request.getParameter("sid");
            String nsname= request.getParameter("sname");

            Connection connection= ConnectionDB.getCon();
            Statement st= connection.createStatement();
            String sql= "UPDATE student_manager.student SET sid = '"  +nsid+ "', sname = '" +sname+ "' WHERE (sid = '" +sid+ "');";
            st.executeUpdate(sql);








            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet test</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet test at " + request.getContextPath() + "</h1>");
            out.println("sid : " + sid  +"<br>");
            out.println("sname: " + sname +"<br>");
            out.println("new sid : " + nsid  +"<br>");
            out.println("new sname: " + nsname +"<br>");
            out.println("sql: " + sql +"<br>");
            out.println("</body>");
            out.println("</html>");
        }catch (ClassNotFoundException ex) {
            Logger.getLogger(EditStudentFromList.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(EditStudentFromList.class.getName()).log(Level.SEVERE, null, ex);
        }

            
            
            
        response.sendRedirect("StudentManager.jsp");
           

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
        doGet(request, response);
    }



}
