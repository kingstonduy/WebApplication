<%-- 
    Document   : adminpanel
    Created on : Mar 10, 2023, 2:31:58 PM
    Author     : kings
--%>

<%@page import ="java.sql.*"%>
<%@page import ="connection.ConnectionDB"%>
<%@page import = "java.util.*" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <body>

        <h1>Retrieve data from database in jsp</h1>
        <table border="1">
            <tr>
            <td>sid</td>
            <td>sname</td>

            </tr>
            <%
            try{
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/student_manager", "root", "duy03032002");
            Statement st= connection.createStatement();
            String sql= "SELECT * from course;";

            ResultSet rs= st.executeQuery(sql);
            while(rs.next()){
            %>

            <tr>
            <td><%=rs.getString("cid") %></td>
            <td><%=rs.getString("cname") %></td>


            </tr>
            <%
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
        </table> 

    </body>
</html>

    

