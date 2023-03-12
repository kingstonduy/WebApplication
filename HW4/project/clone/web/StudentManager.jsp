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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        td
        {
            min-width: 200px;
        }
    </style>
</head>
<body>
    <h1>Student List</h1>

    <table style="margin-left: 50px;">
        <tr style="font-weight: bold;">
            <td>Student ID</td>
            <td>Student Name</td>
            <td>Action</td>
        </tr>
        
            <%
            try{
            
            Connection connection= ConnectionDB.getCon();
            Statement st= connection.createStatement();
            String sql= "SELECT distinct * from student;";

            ResultSet rs= st.executeQuery(sql);
            while(rs.next()){
            %>
                
                    <tr>
                        <td><%=rs.getString("sid") %></td>
                        <td><%=rs.getString("sname") %></td>
                        <td>
                            <form action="StudentManager2.jsp">
                                <input type="hidden" name="sid" value="<%=rs.getString("sid") %>">
                                <input type="hidden" name="sname" value="<%=rs.getString("sname") %>">
                                <button type="submit">Edit</button>
                            </form>
                        </td>
                    </tr>
                

            <%
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
        </table> 

        
        
        <a href="StudentManager4.jsp">New Student</a>
        <div class="line" style="border-bottom: 1px solid black; margin-top:10px;">

        </div>
        <a href="CourseRegisteration.jsp">homepage</a>
    </body>
</html>

    

