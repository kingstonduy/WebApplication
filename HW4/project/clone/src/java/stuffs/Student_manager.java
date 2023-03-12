package stuffs;

import stuffs.Student;
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
public class Student_manager {
    private ArrayList<Student>students = new ArrayList<>();
    
   
    public Student_manager() throws SQLException{
        students.add(new Student("admin", "admin"));
        try{
            Connection connection= ConnectionDB.getCon();
            Statement st= connection.createStatement();
            String sql= "SELECT * from student;";

            ResultSet rs= st.executeQuery(sql);
            while(rs.next()){
                Student student;
                String temp1= rs.getString("sid");
                String temp2= rs.getString("sname");
                student= new Student(temp1, temp2);
                students.add(student);
            }
           connection.close();
           rs.close();

        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
    public boolean check_id(String id){
       for (Student s: students){
           if(s.getSid().equals(id)){
               return true;
           }
       }
       return false;
   }
   
   public Student get_student(String id){
       for (Student s: students){
           if(s.getSid().equals(id)){
               return s;
           }
       }
       return null;
   }

    public ArrayList<Student> getStudents() {
        return students;
    }
   

}
