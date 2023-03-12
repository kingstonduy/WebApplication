/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import connection.ConnectionDB;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import stuffs.Manager_Paramname;




/**
 *
 * @author kings
 */
@WebServlet(name = "Removingcoursefromstudent", urlPatterns = {"/Removingcoursefromstudent"})
public class RemoveCouseFromStudent extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String title = "Reading All Request Parameters";
            
            Manager_Paramname map= Manager_Paramname.getInstance();
            String reccent_id= map.getValue("sid");
            String name_of_course_want_to_remove= map.getValue("ModifyingCourse");
            
            
            Connection connection= ConnectionDB.getCon();
            Statement st= connection.createStatement();
            String sql= "select * from student_manager.course where cname='"+name_of_course_want_to_remove+"'";
            ResultSet rs= st.executeQuery(sql);
            String cid="nuLLLL";
            while(rs.next()){
                cid=rs.getString("cid");
            }
            
            
            
       
            sql= "delete from  student_manager.enroll where sid='" +reccent_id+ "' and cid='"+ cid +"'" ;
            connection= ConnectionDB.getCon();
            st= connection.createStatement();
            st.executeUpdate(sql);
            connection.close();
            
            
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet test</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet test at " + sql + "</h1>");
            out.println("sql : " + sql );
            out.println("remove couse : " + name_of_course_want_to_remove );
            out.println("</body>");
            out.println("</html>");
            
            
            
            
            connection.close();
            response.sendRedirect("Student.jsp");
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddCourseToStudent.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AddCourseToStudent.class.getName()).log(Level.SEVERE, null, ex);
        }

                
        
        
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        doGet(request, response);
    }
}