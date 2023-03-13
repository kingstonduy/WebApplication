### top-level directory layout

    .
    ├── Web Pages      
        ├── .       
        ├── WEB-INF #JSP files 
            ├── .
    ├── Source Packages                    
        ├── connection 
            ├── connectionDB.java 
        ├── stuffs  # Servlet files and java files    
            ├── .
    ├── Libraries     
        ├── mysql-connector-java-8.0.18.jar         # add this JAR to your libraries 
    ├── .


### Set up netbeans
Unzip the attached file project.zip and use netbeans to open it

### Set up JDBC connection
go to Source Packages/connection/connectionDB.java
line 16 to change your host, username add password

### Set up MYSQL connection
use the attached database in folder DATA_SET to create database 



### Run web application
the main .jsp file is CourseRegisteration.jsp NOT the index.html. Therefore pls run the  CourseRegisteration.jsp

### Contact
pls contact me [here](https://www.facebook.com/kduyyy/) if u encounter any problem. Since the inbox is limited, i may not answer all of your question. Good luck next time.


### Edit 1 AM 13/3/2023
i unzipped the file :D  so just use netbeans to open project at path project\clone. Remember to resolve conflict of the path of sql-connector.jar(this is the attached file in the lab). Everything will be fine i guess :D.

### Edit 2 AM 13/3/2023
i forgot to tell you, try to name the database student_manager. Otherwise it will bug as shiet
  
