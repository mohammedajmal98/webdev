<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> -->

    <!DOCTYPE html>

    <html lang="en" dir="ltr">
      <head>
        <meta charset="UTF-8">
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
          @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
    *{
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins',sans-serif;
    }
    body{
      /* height: 100vh; */
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 20px;
      background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("https://images.pexels.com/photos/3802736/pexels-photo-3802736.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2");
    }
    .container{
        margin-top: 200px;
      max-width: 700px;
      width: 100%;
      height: 200px;
      background: linear-gradient(rgba(112, 111, 111, 0.651), rgba(114, 114, 114, 0.651));
      padding: 25px 30px;
      border-radius: 5px;
      box-shadow: 0 5px 10px rgba(0,0,0,0.15);
    }
    .container .title{
      font-size: 25px;
      font-weight: 600;
      position: relative;
      color: White;
    }
    
    .container .secquest{
      font-size: 20px;
      font-weight: 500;
      padding-top: 15px;
      padding-bottom: 15px;
      color: #fff;
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
    .text{
        color: white;
        font-family: 'Oxygen', sans-serif;
        margin-right: 50px;
    }
     .button input{
         margin-top: 40px;
       height: 100%;
       width: 100%;
       border-radius: 5px;
       border: none;
       color: #fff;
       font-size: 25px;
       font-weight: 500;
       letter-spacing: 1px;
       cursor: pointer;
       transition: all 0.3s ease;
       background: #ff851b;
     }
     .button  input:hover{
         color: black;
     }
    b{
        color: #ff851b;
    }
    
    
    /*  */
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
      <div class="container">
       
        <div class="content">
          <h1 class="text">Logged <b>out</b> successfully</h1>
          <h2 class="text">Happy Travelling <b>:)</b></h2>
          
        </div>
    
            
        <div class="button">
            <form action="mlogin">
              <input type="submit" value="Home" name="submit" id="submit" onclick="">
            </form>
        </div>
    
           
    
    
          </form>
        </div>
      </div>
    
    </body>
    </html>
    