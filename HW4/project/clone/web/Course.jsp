<%-- 
    Document   : Student
    Created on : Mar 10, 2023, 4:23:58 PM
    Author     : kings
--%>

<%@page import="stuffs.Course"%>
<%@page import="stuffs.Course_manager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>
<%@page import ="connection.ConnectionDB"%>
<%@page import = "java.util.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=h1, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    

    <%
        Course_manager temp= new Course_manager();
        ArrayList<Course>courses= temp.getCourses();
        %>

    <h1>Student's details</h1>
    <div class="section1">
        Student ID: ${sessionScope.sid}
        <br>
        Student name:${sessionScope.sname}
    </div>
    <h2>
        Select Course
    </h2>
    <div class="section2">
        <label for="">Course:</label>

        <select name="" id="">
            <%
                for (Course course: courses){
                
            %>
            <option value="">
                <%=course.getCname()%>
            </option>
            
            <%
                }
            %>

        </select>
        
    </div>
    <h2>
        Registered Courses:
    </h2>
    <div class="section3">
        <table>
            <span>
                <tr style="font-weight: bold;">
                    <td>Course  ID</td>
                    <td>Course Name</td>
                    <td>Action</td>
                </tr>
            </span>
            
            
             <%
                for (Course course: courses){
                
            %>
            <tr>
               
                <td><%=course.getCid()%></td>
                <td><%=course.getCname()%></td>
                <td>
                    <a href="">Remove</a>
                </td>
            </tr>
            
            <%
                }
            %>


        </table>
    </div>

</body>
</html>