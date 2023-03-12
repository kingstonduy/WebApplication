<%-- 
    Document   : StudentManager2
    Created on : Mar 12, 2023, 3:08:32 PM
    Author     : kings
--%>

<%@page import="stuffs.Manager_Paramname"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Manager_Paramname map = Manager_Paramname.getInstance();
    map.modifyValue("cid", (String)request.getParameter("cid"));
    map.modifyValue("cname", (String)request.getParameter("cname"));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>CourseManager2 page</h1>
        <br>
        cid <%=request.getParameter("cid")%>
        <br>
        cname <%=request.getParameter("cname")%> 
        
        <br>
        <form action="CourseManager3.jsp">
            <input type="submit" value="edit" action="CourseManager3.jsp">
        </form>
        
        
        <form action="DeleteCourseFromCourseList">
            <input type="submit" value="delete" action="DeleteCourseFromCourseList">
        </form>
    </body>
    <a href="CourseManager.jsp">Return</a>
</html>
