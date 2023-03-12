package stuffs;


import java.util.HashMap;
import java.util.Map;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author kings
 */
public class Manager_Paramname {
    
    private Map<String, String> m;
    private static Manager_Paramname instance;

    private Manager_Paramname(){
        m = new HashMap<>();
    }
    
    public static Manager_Paramname getInstance(){
        if(instance == null){
            instance = new Manager_Paramname();
        }
        return instance;
    }
    
    public String getValue(String key){
        return m.get(key);
    }
    public void modifyValue(String key, String value)
    {
        m.put(key,value);
    }

}
