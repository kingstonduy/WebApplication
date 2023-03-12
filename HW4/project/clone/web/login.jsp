<%-- 
    Document   : login
    Created on : Mar 9, 2023, 9:43:26 PM
    Author     : kings
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .head{
            border-bottom: 1px solid black;
            height: 80px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .tail{
            margin-top: 100px;
        }
        body{
            background-color: cyan;
        }
        .input-section{
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 10px;
        }
        .input-section label{
            width: 75px;
        }
    </style>
</head>
<body>
    <div class="head">
        <h1>
            Please enter user name and password to login
        </h1>
    </div>
    <div class="tail">
        <form action="RegisterForm.jsp">
            <div class="input-section">
                <label for="">UserName</label>
                <input type="text">
            </div>
            <div class="input-section">
                <label for="">Password</label>
                <input type="password">
            </div>
            <div class="input-section">
                <input type="submit" value="Login">
            </div>
        </form>
    </div>
</body>
</html>