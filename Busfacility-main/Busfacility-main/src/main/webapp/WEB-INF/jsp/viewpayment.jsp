<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <title>Login</title>
  <head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <h1 style="color:white; font-family: sans-serif;text-align: center;font-weight: bold;">VIEW PAYMENT DETAILS</h1>
    <style>
      * {
        box-sizing: border-box;
      }

      body {
        width: 100%;
        height: 100vh;
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
        background-image: url("https://images.unsplash.com/photo-1570125909517-53cb21c89ff2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVzJTIwdHJhdmVsfGVufDB8fDB8fA%3D%3D&w=1000&q=80");
        background-size: 110%;
        background-position: -150px 0px;
      }

      .header {
        overflow: hidden;
        background-color: #141414;
        padding: 10px 10px;
        color: #fff;
      }

      .header a {
        float: left;
        color: black;
        text-align: center;
        padding: 12px;
        text-decoration: none;
        font-size: 18px;
        line-height: 25px;
        border-radius: 4px;
      }

      .header a.logo {
        font-size: 25px;
        font-weight: bold;
      }

      .header a:hover {
        color: white;
      }

      .header a.active {
        color: white;
      }

      .header-right {
        float: right;
      }
      form {
        border: 3px solid #f1f1f1;
        margin: 0 584px;
        margin-top: 10%;
        background: linear-gradient(#ffffffb6, #0f0f0ebe);
        position: absolute;
      }

      input[type="text"],
      input[type="password"],
      select {
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
      }

      button {
        background-color: #04aa6d;
        color: white;
        padding: 14px 20px;
        margin: 5% 40%;
        border: none;
        cursor: pointer;
      }

      button:hover {
        opacity: 0.8;
      }

 

      .container {
        padding: 16px;
      }

      .head {
        text-align: center;
      }
    .size{
         padding: 10px;
    }
      
    </style>
  </head>
  <body>

    <form action="viewpayment" method="post">
      <h2 class="head">Payment Details</h2>
      <div class="container">
        <label for="uname" style="padding-right: 10px" 
          ><b>User Id : </b></label
        >
        <input
          type="text"
          placeholder="Enter User Id"
          name="uname"
          id="uname"
          required
        /><br />
     
        <br />

        <button type="submit">Enter</button>
      </div>
    </form>

    
  </body>
</html>