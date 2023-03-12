<%-- 
    Document   : Student
    Created on : Mar 10, 2023, 4:23:58 PM
    Author     : kings
--%>

<%@page import="stuffs. Manager_Paramname"%>
<%@page import="stuffs.Course"%>
<%@page import="stuffs.Course_manager"%>
<%@page import="stuffs.Enroll"%>
<%@page import="stuffs.Student"%>
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
    <style>
        td
        {
            width: 250px;
        }
    </style>
    
    

    

</head>
<body>
    
    


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
        <form action="Student2.jsp">
            <label for="myMenu">Course:</label>
            <select name="myMenu" id="">
                <%
                    ArrayList<Course>courses= new Course_manager().getCourses();
                    int cnt=0;
                    for (Course course:courses){
                %>
                    <option value="<%=course.getCname()%>" id=""><%=course.getCname()%></option>
                <%
                    }
                %>
            </select>
            <input type="submit" value="modify"  action="Student2.jsp">
        </form>




    </div>
    <h2>
        Registered Courses:
    </h2>
    <div class="section3">
        <table style="margin-left: 50px;">
            <span>
                <tr style="font-weight: bold;">
                    <td>Course  ID</td>
                    <td>Course Name</td>
                </tr>
            </span>

            <%
                ArrayList<Enroll>enrolls= new ArrayList<>();
                String  reccent_sid= session.getAttribute("sid").toString();
      
               
                
                Connection connection= ConnectionDB.getCon();
                Statement st= connection.createStatement();
                String sql= "SELECT distinct student_manager.student.sid, student_manager.student.sname, student_manager.course.cid, student_manager.course.cname          \n" +
                    "FROM student_manager.student \n" +
                    "JOIN student_manager.enroll ON student_manager.student.sid = student_manager.enroll.sid\n" +
                    "JOIN student_manager.course ON student_manager.enroll.cid = student_manager.course.cid;"     ;
                ResultSet rs= st.executeQuery(sql);
                while(rs.next()){
                    enrolls.add(new Enroll(rs.getString("sid"), rs.getString("sname"), rs.getString("cid"), rs.getString("cname")));
                }
                connection.close();
                rs.close();
            %>
            
            <%
                for (Enroll enroll : enrolls){
                
                    Student temp= enroll.getStudent();
                    String temp2= temp.getSid();
                    
                    if(temp2.equals(reccent_sid))
                    {
                   
            %>
                        <tr>
                            
                                    
                                <td ><%=enroll.getCourse().getCid()%></td>
                                <td><%=enroll.getCourse().getCname()%></td>
                        </tr> 
            <%
                    }
                }
            %>
           
        </table>
        
            
        
    </div>
    <a href="CourseRegisteration.jsp">Homepage</a>      
    
    


</body>
</html>