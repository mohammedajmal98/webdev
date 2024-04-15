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
    <title>Register</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            background: url("https://media.istockphoto.com/photos/online-form-to-register-personal-info-and-data-to-web-site-with-picture-id1287186666?b=1&k=20&m=1287186666&s=170667a&w=0&h=0AdIWk0Ws2bGaZowV7uL5mOIVTpvfZoQVL7vaM76yv0=");
            background-size: 110%;
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
        div.Register{
            background-color: rgba(0, 0, 0, 0.5);
            width: 100%;
            font-size: 18px;
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.3);
            box-shadow: 2px 2px 15px rgba(0, 0, 0, 0.3);
            color: #fff;
        }
        form#Register{
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
        input#dob{
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
        input#password{
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 3px;
            outline: 0;
            padding: 7px;
            background-color: #fff;
            box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        Select#qualification{
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 3px;
            outline: 0;
            padding: 7px;
            background-color: #fff;
            box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        Select#role{
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 3px;
            outline: 0;
            padding: 7px;
            background-color: #fff;
            box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        textarea#address{
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
    <div class="Register" >
      <h2>Register New User</h2>
          <form id="Register" method="post" action="addnewuser">
                <label>Id : </label>
                <br>
                <input type="number" name="id" id="id" placeholder="Enter Student/faculty id">
                <br><br>
                <label>Name : </label>
                <br>
                <input type="text" name="name" id="name" placeholder="Enter Student/faculty  Name">
                <br><br>
                <label for="dob">Date Of Birth :</label>
                <br>
                <input type="Date" id="dob" name="dob" required>
                <br><br>
                <label required >Department :</label>
                <br>
                <select name="department" id="department" required>
                  <option value=" ">Select Department :</option>
                  <option value="CSE">CSE</option>
                  <option value="Mech">MECH</option>
                  <option value="EEE">EEE</option>
                  <option value="ECE">ECE</option>
                  <option value="IT">IT</option>
              </select>
              <br><br>
              <label>Phone Number : </label>
                <br>
                <input type="tel" name="phonenum" id="phonenum" placeholder="Enter Student/faculty Ph-no">
                <br><br>
                <label for="address">Address:</label>
                  <br>
                  <textarea name="address" id="address" cols="5" rows="5" placeholder="Enter Student/faculty Address" required></textarea>
                  <br><br>
                  <label for="password">Password:</label>
                  <br>
                  <input type="password" id="password" name="password" maxlength="8" placeholder="Enter Student/faculty Password">
                  <br><br>
                  <label for="cars" style="padding-right: 10px">
                    <b>User Role : </b>
                  </label>
                  <br>
                  <select id="role" name="role">
                    <option value="">Select Role</option>
                    <option value="Student">Student</option>
                    <option value="Faculty">Faculty</option></select>
                    <br /><br>
                    <input type="submit" value="Submit" name="submit" id="submit"><br>
                    <h color="red">${msg}</h>
                  <br><br>
</form>
</div>
  </div>
</body>
</html>