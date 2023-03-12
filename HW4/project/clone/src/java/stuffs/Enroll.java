/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stuffs;

/**
 *
 * @author kings
 */
public class Enroll {
    Student student;
    Course course;
    

    public Enroll(Student student, Course course) {
        this.student = student;
        this.course = course;
    }
    
    public Enroll(String sid, String sname, String  cid, String cname) {
        this.student = new Student(sid, sname);
        this.course = new Course(cid, cname);
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }
    
    
}
