## top-level directory layout

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


## Requirement
- Prepare  Tomcat  Sever
- Prepare sql-connection.jar

## Set up netbeans
I will upload 2 files, "project.zip" and "clone.pdf.rar".
+ ### You choose to use project.zip
    -   Unzip the attached file project.zip and use netbeans to open it.
+ ### If you have problem with project.zip, use the file "clone.pdf.rar" instead
    -   You should rename the file project into "clone.zip" (dont try to open it) but extract it and use it normally.

## Set up JDBC connection
Go to Source Packages/connection/connectionDB.java. line 16 to change your host, username add password.

## Prepare DATA in mysql workbench
Create database name= "student_manager" (without quotation mark).
Use the attached sql queries in folder DATA_SET to create necessary tables. Remember to use the same name otherwise it will bug as shiet.


##  Ressolve conflict
Resolve conflict of the path of sql-connector.jar(this is the attached file in the lab).

## Run web application
The main .jsp file is CourseRegisteration.jsp NOT the index.html. Therefore pls run the  CourseRegisteration.jsp

## Contact
Please contact me [here](https://www.facebook.com/kduyyy/) if u encounter any problem. Since the inbox is limited, i may not answer all of your question. Good luck next time.




  
