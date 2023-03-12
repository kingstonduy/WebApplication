<%-- 
    Document   : homepage
    Created on : Mar 9, 2023, 9:46:58 PM
    Author     : kings
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        //Get value from text-box
        String value = request.getParameter("name");
            out.print("Hello "+value+"!<br>");
        
        //Get value from radio button    
        String radioButton = request.getParameter("gender");
            out.print("The gender is: "+radioButton+"<br>");
        
        //Get value from check-box button
        String[] courses;
        courses = request.getParameterValues("subject");
          if (courses != null)
                 {
                   out.print("The course: <br>"); 
                   for (int i = 0; i < courses.length; i++)
                             {
                               out.println (courses[i]+"<br>");
                             }
                     }   else out.println ("<b>none<b>");
        %> 
    </body>
</html>
