<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
    />
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
      * {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
body {
  width: 100%;
  height: 100vh; 
  font-family: sans-serif;
  background:linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)),url("https://live.staticflickr.com/5539/12073122975_ba359787f7_b.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  display: flex;
}

.container {
  height: 100vh;
  width: 100%;
  display: flex;
}

.left {
  position: relative;
  height: 100%;
  width: 50%;
  /* background:linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)); */
  display: flex;
}

.bg {
  position: absolute;
  height: 100%;
  width: 100%;
  z-index: -1;
  object-fit: cover;
}


.left-content {
  align-self: center;
  padding-left: 50px;
}

.left-content h1 {
  font-size: 50px;
  color: white;
  font-family: 'Oxygen', sans-serif;
  font-weight: 5rem;
  font-size: 500;
}

.btn {
  display: inline-block;
  text-decoration: none;
  width: 150px;
  margin-top: 10px;
  padding: 18px 10px;
  background: white;
  border-radius: 30px;
  text-align: center;
  font-weight: bold;
  color: #ff851b;
  transition: 0.4s;
}

.btn:hover {
  background: #ff851b;
  color: black;
}

.right {
  height: 100%;
  width: 50%;
  padding: 0px 80px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  background:linear-gradient(rgba(83, 83, 83, 0.651), rgba(56, 52, 44, 0.658));
}

.right h1 {
  color: white;
  font-family: 'Lato', sans-serif;
}

.bus{
    color: #ff851b;
}

.p1 {
  color: #b5bdc5;
  font-size: 13px;
  margin-top: 5px;
}

.form {
  margin-top: 10px;
}

.input-box {
  height: 55px;
  width: 100%;
  margin: 20px 0px;
  position: relative;
}

.input {
  position: absolute;
  width: 100%;
  height: 100%;
  padding: 0px 20px;
  color: #ff851b;
  border: solid 1.2px #cccccc;
  outline: none;
  border-radius: 5px;
}




.btn-sec {
  width: 100%;
  background: #ff851b;
  padding: 18px 50px;
  margin-top: 10px;
  color: white;
  border-radius: 5px;
  font-size: 13px;
  border: none;
}

.btn-sec:hover{
    color: black;
}

.p2 {
  font-size: 13px;
  margin: 30px 0px;
  text-align: center;
  color: black;
  font-weight: bold;
}

.mgnt{
    font-weight: 400;
}





    </style>
    <title>Login</title>
  </head>
  <body>
    <div class="container">
      <div class="left">
        <!-- <img class="bg" src="https://greenroomblogorg.files.wordpress.com/2020/03/ashley-gerlach-6ff-ojxov6o-unsplash.jpg?w=768&h=512" alt="bg" /> -->
        <div class="logo">
         
        </div>
        <div class="left-content">
          <h1>College <b class="bus">Bus</b><br> <b class="mgnt">Management System</b></h1>
          
        </div>
      </div>
      <div class="right">
        <h1>Change Password</h1>
        <p class="p1"></p>
        <form action="forgetpassword" method="post" class="form">
          <div class="input-box">
            <input type="text" placeholder="Username" class="input"  name="username" id="username" for="username" required />
            <label for="input">Username</label>
          </div>
          <div class="input-box">
            <input type="text" name="qtn1" id="qtn1" for="qtn1" placeholder="What is your favourite colour?" class="input" required />
            <label for="input">What is your favourite colour</label>
          </div>
          <div class="input-box">
            <input type="text" name="qtn2" id="qtn2" for="qtn2" placeholder="What is your favourite food?" class="input" required />
            <label for="input">What is your favourite food</label>
          </div>
          <div class="input-box">
            <input type="text" name="qtn3" id="qtn3" for="qtn3" placeholder="What is your favourite pet?" class="input" required />
            <label ></label>
          </div>


          <div class="input-box">
            <input
              type="password"
              placeholder="New Password"
              class="input"  name="np"id="np" for ="np"
              required
            />
            <label for="input">Password</label>
          </div>
          <div class="input-box">
            <input
              type="text"
              placeholder="Confirm New Password"
              class="input" name="c_np" id="c_np" for="c_np"
              required
            />
            <label for="input">Confirm new password</label>
          </div>
          <button class="btn-sec">Update</button>
        </form>
             
      </div>
    </div>
  </body>
</html>