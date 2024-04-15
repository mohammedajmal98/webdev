<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    -<title> User Profile </title>-
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url("https://picjumbo.com/wp-content/uploads/morning-bus-ride-to-the-work-1570x1048.jpg");
}
.container{
  max-width: 700px;
  width: 100%;
  height: 575px;
  background: linear-gradient(rgba(112, 111, 111, 0.651), rgba(114, 114, 114, 0.651));
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
  margin-top: 20px;
  
}
.container .title{
  font-size: 25px;
  font-weight: 600;
  position: relative;
  color: White;
  /* text-decoration: underline; */
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: #ff851b;;
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}

form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 600;
  margin-bottom: 5px;
  color: white;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}


#dob{
  /* color:#757575; */
  color: black;
}

#role{
  height: 45px;
  width: 100%;
  /* color:#757575; */
  color: black;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}

::placeholder{
  color: black;
}

#department{
  height: 45px;
  width: 100%;
  /* color:#757575; */
  color: black;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}

#address{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-top: 9px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}

.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 /* #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 } */
 form input[type="radio"]{
   display: none;
 }
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: #ff851b;
 }
 .message{
   margin-left: 40%;
   color: #ff851b;
 }
 .check{
   color: white;
   margin-left: 20%;
   margin-top: 10px;
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  /* background: linear-gradient(-135deg, #ebd46d, #ff851b); */
  color: black;
  } 
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}

    </style>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <!-- <div >
    <button type="button" class="homebtn" href='mlogin'>Home</button>
  </div> -->
  <div class="container">
    <div class="title">User Profile</div>
    
    <div class="content">      
      <form id="viewprofile" action="validateprofile">
        <div class="user-details">
          <div class="input-box">
            <span class="details">User ID</span>
            <input type="text" name="id" value="${id}" id="id" readonly style="color: grey;">
          </div>
          <div class="input-box">
            <span class="details">Name</span>
            <input type="text" readonly id="name" name="name" value="${name}" style="color: grey;" ></input>
          </div>
          <div class="input-box">
            <span class="details">DOB</span>
            <input type="text" id="dob" name="dob" for="dob" value="${dob}" style="color: grey;" readonly>
          </div>

          <div class="input-box">
            <span class="details">Department</span>
            <!-- <select name="department" id="department" name="department" for="department" required>
              <option value="${department}" selected>${department}</option>
              <option value="CSE" >CSE</option>
              <option value="Mech">MECH</option>
              <option value="EEE">EEE</option>
              <option value="ECE">ECE</option>
              <option value="IT">IT</option>
          </select> -->
          <input type="text" id="department" name="department" for="department" value="${department}" style="color: grey;" readonly>
          </div>

          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" value="${phonenum}" name="phonenum" id="phonenum" style="color: grey;" readonly>
          </div>

          
          <div class="input-box">
            <span class="details">User Role</span>
            <!-- <select id="role"  name="role" id="role">
              <option value="${role}">${role}</option>
              <option value="Student">Student</option>
              <option value="Faculty">Faculty</option>
            </select> -->
            <input type="text" id="role" name="role" for="role" value="${role}" style="color: grey;" readonly>

          </div>
        </div>
        <div class="input-box">
          <span class="details">Address</span>
          <textarea name="address" id="address" name="address" for="address" style="color: grey;" readonly>${address}</textarea>
        </div>

      
        
        
        <div class="button">
          <input type="submit" value="Edit Details" name="submit" id="submit">
        </div>



      </form>
    </div>
   
  </div>

</body>
</html>
