<%-- 
    Document   : Student2
    Created on : Mar 12, 2023, 11:16:14 AM
    Author     : kings
--%>

<%@page import="stuffs.Manager_Paramname"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Manager_Paramname map = Manager_Paramname.getInstance();
    map.modifyValue("ModifyingCourse", (String)request.getParameter("myMenu"));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>This is the page to get value from page1 !</h1>
        The select  field of study from page 1 is  <%= map.getValue("ModifyingCourse")%>
        
        <form action="Addingcoursetostudent">
            <input type="submit" value="add" action="Addingcoursetostudent">
        </form>
        
        
        <form action="Removingcoursefromstudent">
            <input type="submit" value="Remove" action="Removingcoursefromstudent">
        </form>
    </body>
</html>

<%--<jsp:forward page="1" />--%>
