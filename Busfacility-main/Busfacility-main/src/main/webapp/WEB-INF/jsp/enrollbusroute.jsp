<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<h1 style="color:white; font-family: sans-serif;text-align: center;font-weight: bold;"> ENROLL BUS ROUTE</h1>
<link rel="stylesheet" href="style.css">
<!---we had linked our css file----->


<style>
*

{
margin: 0;
padding: 0;
box-sizing: border-box;
}
.full-page
{
height: 100%;
width: 100%;
background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url(college.JPG);
background-position: center;
background-size: cover;
position: absolute;





}

.navbar
{
display: flex;
align-items: center;
padding: 20px;
padding-left: 50px;
padding-right: 30px;
padding-top: 50px;
}
nav
{
flex: 1;
text-align: right;
}
nav ul
{
display: inline-block;
list-style: none;
}
nav ul li
{
display: inline-block;
margin-right: 70px;
}
nav ul li a
{
text-decoration: none;
font-size: 20px;
color: white;
font-family: sans-serif;
}
nav ul li button
{
font-size: 20px;
color: white;
outline: none;
border: none;
background: transparent;
cursor: pointer;
font-family: sans-serif;
}
nav ul li button:hover
{
color: aqua;
}
nav ul li a:hover
{
color: aqua;
}
a
{
text-decoration: none;
color: rgba(240, 229, 233, 0.973);
font-size: 28px;
}
#login-form
{
display: none;
}
.form-box
{
width:380px;
height:480px;
position:relative;
margin:2% auto;
background:rgba(0,0,0,0.3);
padding:10px;
overflow: hidden;
}
.button-box
{
width:220px;
margin:35px auto;
position:relative;
box-shadow: 0 0 20px 9px #ff61241f;
border-radius: 30px;
}
.toggle-btn
{
padding:10px 30px;
cursor:pointer;
background:transparent;
border:0;
outline: none;
position: relative;
}
#btn
{
top: 0;
left:0;
position: absolute;
width: 110px;
height: 100%;
background: #F3C693;
border-radius: 30px;
transition: .5s;
}
.input-group-login
{
top: 150px;
position:absolute;
width:280px;
transition:.5s;
}
.input-group-register
{
top: 120px;
position:absolute;
width:280px;
transition:.5s;
}
.input-field
{
width: 100%;
padding:10px 0;
margin:5px 0;
border-left:0;
border-top:0;
border-right:0;
border-bottom: 1px solid #999;
outline:none;
background: transparent;
}
.submit-btn
{
width: 85%;
padding: 10px 30px;
cursor: pointer;
display: block;
margin: auto;
background: #F3C693;
border: 0;
outline: none;
border-radius: 30px;
}
.check-box
{
margin: 30px 10px 34px 0;
}

span
{
color:#777;
font-size:12px;
bottom:68px;
position:absolute;
}
#login
{
left:50px;
}
#login input
{
color:white;
font-size:15;
}
#register
{
left:450px;
}
#register input
{
color:white;
font-size: 15;
}
</style>



</head>
<body style="background-image: url(https://images5.alphacoders.com/431/thumb-1920-431473.jpg);
background-repeat: no-repeat;
background-attachment: fixed;
background-size: cover;">
<form ></form>
 <table  name="busroute"  class="table table-striped caption-top" style="background-color:#f8f9fa;border-radius:5px;">
                    <caption style="color:white; font-weight:bold; text-align:left;">Choose your desired bus route from this list:</caption>
                    <thead>
                    <tr>
                        <th scope="col">Bus number</th>
                        <th scope="col">Route number</th>
                        <th scope="col">Driver name</th>
                        <th scope="col">Driver Phone number</th>
                        <th scope="col">Destination</th>
                        <th scope="col">Stopping</th>
                        <th scope="col">Fee</th>
                        
                        
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="bus" items="${flist }">
                    <tr>
                        <td>${bus.busnum }</td>
                        <td>${bus.routenum }</td>
                        <td>${bus.drivername}</td>
                        <td>${bus.driverphonenum }</td>
                        <td>${bus.destination}</td>
                        <td>${bus.stoppings}</td>
                        <td>${bus.fee }</td>
                        
                   </tr>
                    </c:forEach>
                    </tbody>
                    </table>
                    </form>
<div class="main">
    <div class="enrollbusroute" >
      <h2>Add your desired bus route here:</h2>
          <form id="enrollbusroute" method="post" action="enrollbusroute">
                <label>User id: </label>
                <br>
                <input type="number" name="id" id="id" placeholder="Enter your userid">
                <br><br>
                <label>User name:</label>
                <br>
                <input type="text" name="name" id="name" placeholder="Enter your username">
                <br><br>
                
                
                <label>Bus number </label>
                <br>
                <input type="number" name="busnum" id="busnum" placeholder="Enter bus number">
                <br><br>
                <label>Route number:</label>
                <br>
                <input type="text" name="routenum" id="routenum" placeholder="Enter Route number">
                <br><br>
                <label for="dob">Destination:</label>
                <br>
                <input type="text" id="destination" name="destination" placeholder="Enter Destination">
                <br><br>
               
              <label>Stopping Points:</label>
                <br>
                <input type="text" name="stoppings" id="stoppings" placeholder="Enter Stopping point">
                <br><br>
                <label>Fees:</label>
                <br>
                <input type="number" id="fee" name="fee" placeholder="Enter fee amount">
                <br><br>
                <button type="submit" name="enrollbusroute" id="enrollbusroute"style=" color:white;

  background-color: green;" >Enroll</button> &nbsp;

 
 


                 
                
                <button type="submit" name="cancelbususe" action="get" id="cancelbususe" style=" color:white;background-color: green;" >Cancel Bus Use</button>&nbsp;
                <br><h color="red" style="font-weight:bold">${msg}</h>
               
                
</form>
</div>
  </div>








</body>
</html>