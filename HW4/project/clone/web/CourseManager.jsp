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
    <h1>Course List</h1>

    <table style="margin-left: 50px;">
        <tr style="font-weight: bold;">
            <td>Course ID</td>
            <td>Course Name</td>
            <td>Action</td>
        </tr>
        
            <%
            try{
            
            Connection connection= ConnectionDB.getCon();
            Statement st= connection.createStatement();
            String sql= "SELECT distinct * from course;";

            ResultSet rs= st.executeQuery(sql);
            while(rs.next()){
            %>
                
                    <tr>
                        <td><%=rs.getString("cid") %></td>
                        <td><%=rs.getString("cname") %></td>
                        <td>
                            <form action="CourseManager2.jsp">
                                <input type="hidden" name="cid" value="<%=rs.getString("cid") %>">
                                <input type="hidden" name="cname" value="<%=rs.getString("cname") %>">
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

        
        
        <a href="CourseManager4.jsp">New Course</a>
        <div class="line" style="border-bottom: 1px solid black; margin-top:10px;">

        </div>
        <a href="CourseRegisteration.jsp">homepage</a>
    </body>
</html>

    

