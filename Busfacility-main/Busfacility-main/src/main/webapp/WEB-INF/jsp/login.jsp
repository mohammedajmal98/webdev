<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>College Bus Management System</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Tiro+Bangla&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Oxygen:wght@300&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap" rel="stylesheet">
    <style>
        
        html,
        body {
            margin: 0;
            padding: 0;
            width: 100%;
        }

        body {
            width: 100%;
            height: 100vh;
            background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url("https://picjumbo.com/wp-content/uploads/morning-bus-ride-to-the-work-1570x1048.jpg");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            display: table;
            font-family: Montserrat;
        }



        .navbar {
            font-weight: 400;
            position: fixed;
            top: 0;
            left: 0;
            margin: 0;
            padding: 0;
            width: 100%;
            height: 80px;
            /* border-bottom: 2px solid rgba(238, 234, 234, 0.5); */
            background: linear-gradient(rgba(0, 0, 0, 1), rgba(0, 0, 0, 0))
        }





        /* .logo { 
            letter-spacing: 1px;
            float: left;
            color: #fff;
            font-size: 22px;
            line-height: 80px;
            padding: 0 6em;
        } */




        .menu {
            float: right;
            line-height: 50px;
            /* margin: 0 6em; */
        }




        .menu ul {
            list-style: none;
        }



        .menu ul li {
            display: inline-block;
        }




        .menu ul li a {
            text-decoration: none;
            color: rgb(255, 255, 255);
            font-size: 25px;
            font-weight: 550;
            padding: 0 20px;
            font-family: 'Oxygen', sans-serif;
            
        }

        .menu ul li a:hover{
      color: #ff851b;
      transition: .5s;
    }







        .header {
            position: absolute;
            top: 45%;
            left: 20%;
            transform: translate(-50%, -50%);
            color: rgb(170, 160, 160);
            font-size: 24px;
            /* font-style: italic; */
            
        }





        .header h1 {
            color: rgb(255, 255, 255);
            font-size: 70px;
            font-weight: 400;
            /* margin-bottom: 8px; */
            border-bottom:0%;
            /* background-color: #fff; */
            margin-bottom: 0%;
            font-family: 'Lato', sans-serif;
            
        }

        .header b{
            font-weight: 600;
            font-family: 'Oxygen', sans-serif;
            color: #ff7b07;

        }




       .header p {
            color: rgb(255, 255, 255);
            font-size: 50px;
            font-weight: lighter;
            /* padding: 30px; */
            top:0%;
            /* background-color: blue; */
            border-top: 0%;
            margin-top: 0%;
            padding-left: 5px;
            font-family: 'Oxygen', sans-serif;
                        
       }

    </style>
</head>

<body>
    <div class="full-page">
        <div class="navbar">
            
            <div class="menu">
                <ul>
                    <li><a href="adminlogin">Admin</a> </li>
                    <li><a href="studentfaclogin"> Student/Faculty </a> </li>
                    <li><a href="register"> Register</a> </li>
                </ul>
            </div>
        </div>
        <div class="header">
            <h1>College<b> Bus</b></h1>
            
            <p>Management System</p>
        </div>
    </div>
</body>

</html>