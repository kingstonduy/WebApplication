package stuffs;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author kings
 */
public class Student {
    String sid;
    String sname;

    public Student(String sid, String sname) {
        this.sid = sid;
        this.sname = sname;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getName() {
        return sname;
    }

    public void setName(String sname) {
        this.sname = sname;
    }
    
}
