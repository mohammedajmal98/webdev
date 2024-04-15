<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


    <!DOCTYPE html>
    <html lang="en" dir="ltr">
      <head>
        <meta charset="utf-8">
        <title>Student / Faculty login</title>
        
        <style>
          @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap');
    *{
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Poppins", sans-serif;
    }
    body{
        width: 100%;
            height: 100vh;
            background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url("https://picjumbo.com/wp-content/uploads/morning-bus-ride-to-the-work-1570x1048.jpg");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
    }
    .center{
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      width: 400px;
      height: 400px;
      background: linear-gradient(rgba(112, 111, 111, 0.651), rgba(114, 114, 114, 0.651));
      opacity: 1;
      border-radius: 10px;
      box-shadow: 10px 10px 15px rgba(0,0,0,0.05);
    }
    .center h1{
        color: white;
      text-align: center;
      padding: 20px 0;
      /* border-bottom: 1px solid white; */
    }
    .center form{
      padding: 0 40px;
      box-sizing: border-box;
      opacity: 0.8;
    }
    form{
        background-color: transparent;
    }
    form .txt_field{
      position: relative;
      border-bottom: 2px solid white;
      margin: 30px 0;
    }
    .txt_field input{
      width: 100%;
      padding: 0 5px;
      height: 40px;
      font-size: 16px;
      border: none;
      background: none;
      outline: none;
      color: white;
    }
    .txt_field label{
      position: absolute;
      top: 50%;
      left: 5px;
      color: white;
      transform: translateY(-50%);
      font-size: 16px;
      pointer-events: none;
      transition: .5s;
    }
    .txt_field span::before{
      content: '';
      position: absolute;
      top: 40px;
      left: 0;
      width: 0%;
      height: 2px;
      background: #ff851b;
      transition: .5s;
    }
    .txt_field input:focus ~ label,
    .txt_field input:valid ~ label{
      top: -5px;
      color: #ff851b;
    }
    .txt_field input:focus ~ span::before,
    .txt_field input:valid ~ span::before{
      width: 100%;
    }
    .pass{
      margin: -5px 0 20px 5px;
      color: #ff851b;
      text-decoration-color: #ff851b;
      cursor: pointer;
    }
    .pass:hover{
      text-decoration: underline;
    }
    input[type="submit"]{
      width: 100%;
      height: 50px;
      border: 1px solid;
      background: #ff851b;
      border-radius: 25px;
      font-size: 18px;
      color: #e9f4fb;
      font-weight: 700;
      cursor: pointer;
      outline: none;
    }
    input[type="submit"]:hover{
      border-color: #ff851b;
      transition: .5s;
    }
    a:link {
  color: #ff851b;
  background-color: transparent;
  text-decoration: none;
}

a:visited {
  color: #ff851b;
  background-color: transparent;
  text-decoration: none;
}
    
    
        </style>
      </head>
      <body>
        <div class="center">
          <h1> Student/Faculty Login</h1>
          <form method="post" action="studentfaclogin">
            <div class="txt_field">
              <input name="name" type="text" id="name" required />
              <span></span>
              <label>Username</label>
            </div>
            <div class="txt_field">
              <input type="password" name="password" required />
              <span></span>
              <label>Password</label>
            </div>
            
            <div class="pass"><a href="forgetpassword" method="get" action="forgetpassword">Forgot Password?</a></div>
            
            <input type="submit" value="Login">
            
            <font color="#ff851b"  >${msg}</font><br>
            <font color="#ff851b">${res}</font>
            
          </form>
        </div>
    
      </body>
    </html>
    