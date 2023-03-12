<%-- 
    Document   : CourseRegisteration
    Created on : Mar 10, 2023, 3:26:44 PM
    Author     : kings
--%>

<%@page import="connection.ConnectionDB"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    

</head>
<body>
    <h1>
        Course Registration Demo
        
        
    </h1>
    <form action="LoginManager" method="post">
        Student ID: <input type="text" name="studentID">
        <input type="submit" value="Submit">
    </form>
     
    <h2>Manager</h2>
    <a href="StudentManager.jsp">Students Manager</a>
    <br>
    <a href="CourseManager.jsp">Courses Manager</a>
</body>
</html>
