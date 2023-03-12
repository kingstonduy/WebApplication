<%-- 
    Document   : StudentManager2
    Created on : Mar 12, 2023, 3:08:32 PM
    Author     : kings
--%>

<%@page import="stuffs.Manager_Paramname"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Manager_Paramname map = Manager_Paramname.getInstance();
    map.modifyValue("sid", (String)request.getParameter("sid"));
    map.modifyValue("sname", (String)request.getParameter("sname"));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>StudentManager2 page</h1>
        <br>
        sid: <%=request.getParameter("sid")%>
        <br>
        sname: <%=request.getParameter("sname")%> 
        
        <br>
        <form action="StudentManager3.jsp">
            <input type="submit" value="edit" action="StudentManager3.jsp">
        </form>
        
        
        <form action="DeleteStudentFromStudentList">
            <input type="submit" value="delete" action="DeleteStudentFromStudentList">
        </form>
    </body>
    <a href="StudentManager.jsp">Return</a>
</html>
