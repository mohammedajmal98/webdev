<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Bus Route</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            background: url("https://c8.alamy.com/comp/2F1FECP/concept-school-bus-route-on-the-map-3d-rendering-2F1FECP.jpg");
            background-size: 100%;
            background-position: -150px 0px;
        }
        div.main{
            width: 400px;
            margin: 100px auto 0px auto;
        }
        h2{
            text-align: center;
            padding: 20px;
            font-family: sans-serif;
        }
        div.addbusroute{
            background-color: rgba(0, 0, 0, 0.5);
            width: 100%;
            font-size: 18px;
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.3);
            box-shadow: 2px 2px 15px rgba(0, 0, 0, 0.3);
            color: #fff;
        }
        form#addbusroute{
            margin: 40px;
        }
        label{
            font-family: sans-serif;
            font-size: 18px;
            font-style: italic;
        }
        input#name{
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 3px;
            outline: 0;
            padding: 7px;
            background-color: #fff;
            box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        input#pnumber{
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 3px;
            outline: 0;
            padding: 7px;
            background-color: #fff;
            box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        input#rnumber{
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 3px;
            outline: 0;
            padding: 7px;
            background-color: #fff;
            box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        input#bnumber{
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 3px;
            outline: 0;
            padding: 7px;
            background-color: #fff;
            box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        input#dname{
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 3px;
            outline: 0;
            padding: 7px;
            background-color: #fff;
            box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        input#spname{
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 3px;
            outline: 0;
            padding: 7px;
            background-color: #fff;
            box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        input#fnumber{
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 3px;
            outline: 0;
            padding: 7px;
            background-color: #fff;
            box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        input#submit{
            width: 200px;
            padding: 7px;
            font-size: 16px;
            font-family: sans-serif;
            font-weight: 600;
            border: none;
            border-radius: 3px;
            background-color: green;
            color: #fff;
            cursor: pointer;
            border: 1px solid rgba(255, 255, 255, 0.3);
            box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.3);
            margin-bottom: 20px;
        }
        label,span,h2{
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.3);;
        }
    </style>
</head>
<body>
    <div class="main">
    <div class="addbusroute" action="addbus">
        <h2>Add Bus Route</h1>
            <form id="addbusroute" method="post">
                <label>Route No : </label>
                <br>
                <input type="number" name="routenum" id="routenum" placeholder="Enter Route Number">
                <br><br>
                <label>Bus No : </label>
                <br>
                <input type="number" name="busnum" id="busnum" placeholder="Enter Bus Number">
                <br><br>
                <label>Driver Name : </label>
                <br>
                <input type="text" name="drivername" id="drivername" placeholder="Enter Driver Name">
                <br><br>
                <label>Driver Phone Number : </label>
                <br>
                <input type="tel" name="driverphonenum" id="driverphonenum" placeholder="Enter Driver Ph-no">
                <br><br>
                <label>Destination : </label>
                <br>
                <input type="text" name="destination" id="destination" placeholder="Enter Destination">
                <br><br>
                <label>Stopping Points : </label>
                <br>
                <input type="text" name="stoppings" id="stoppings" placeholder="Enter Stopping" required>
                <br><br>
                <label>Fee : </label>
                <br>
                <input type="number" name="fee" id="fee" placeholder="Enter fee amount">
                <br><br>
                <input type="submit" value="Submit" name="submit" id="submit"><br>
                <h color="red">${msg}</h>
               
            </form>
    </div>
    </div>
   
</body>
</html>