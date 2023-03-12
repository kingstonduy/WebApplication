package stuffs;

import stuffs.Course;
import connection.ConnectionDB;
import java.sql.*;
import java.util.ArrayList;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author kings
 */
public class Course_manager {
    private ArrayList<Course>courses = new ArrayList<>();
    
   
    public Course_manager() throws SQLException{
        try{
            Connection connection= ConnectionDB.getCon();
            Statement st= connection.createStatement();
            String sql= "SELECT * from course;";

            ResultSet rs= st.executeQuery(sql);
            while(rs.next()){
                
                String temp1= rs.getString("cid");
                String temp2= rs.getString("cname");
                Course course= new Course(temp1, temp2);
                courses.add(course);
            }
            rs.close();
           connection.close();

        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Course> getCourses() {
        return courses;
    }


    
    
    
   

}
