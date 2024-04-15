<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<title>Help</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<head>
    <style>
        nav {
            color:black;
            padding: 15px;
            
        }
         h1{
         	margin:330px;
			margin-left: 800px;
			color:red;
         }
            h2{
  
              font-size: 30px;
              font-weight: bold;
              text-transform: uppercase;
              margin: 5px 0;
              color:black;
              text-align: center;
              nav-down: auto;
         }
        a {
            text-decoration:mediumblue;
            color: black;
            font-size: 40px;
            margin: 50px;
        }
    
		
		body{
			background: url(https://st2.depositphotos.com/23208318/47308/v/950/depositphotos_473083972-stock-illustration-question-marks-scattered-white-background.jpg?forcejpeg=true);
			background-size: cover;
		}
		header{
			height:50px;
			background-color:lightsteelblue;
		}
    label{
  font-size: 30px;
  margin: 5px 0;
  color: black;
  font-weight: bold;

}
.p{
text-align: left;
width: bold;
font-size: x-large;
font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
.message{
    width: 100%;
    position: relative;
    margin-bottom: 60px;
    display: flex;
    justify-content: center;
}
.message .success{
    font-size: 30px;
    font-weight: 8;
    font-weight: bold;
    color: green;
    position: absolute;
    animation: submit .400s linear;
    display: none;
}
.message .danger{
    font-size: 30px;
    font-weight: 8;
    font-weight: bold;
    color: red;
    transition: .3s;
    position: absolute;
    animation: submit .200s linear;
    display: none;
}



    </style>
</head>
 
<body>
<div> </div>
<div>
 <form action="helpdesk" method="post" modelAttribute="admin" class="helpdesk">
	<div>
		<h2>Ask a Query</h2>
    </div>
	<div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="login_container">
                <div>
                    <div class="mb-3">
                        <label for="Issue" class="form-label">Issue</label>
                        <textarea type="text" class="form-control" id="Issue" rows="5" name="Issue"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="Description" class="form-label">Description</label>
                        <textarea type="description" class="form-control" id="description" rows="5" name="description"></textarea>
                    </div>
                    <div style="text-align: center;">
                    <input type="button" value="submit" onclick="message()" class="submit-btn" style="font-size: 25px; font-weight: bold; margin: 6px 7px; padding: 6px 7px; width: 20%; border-radius:1px; color:white; background-color: green;">
                </div>
                <div class="message">
                    <div class="success" id="success">Your Query Successfuly sent....</div>
                    <div class="danger" id="danger">Please Enter Query.......</div>
                </div>
            </div>
        </div>
    </div>
    <div class="col"></div>
</div>
</form>
</div>   
<div>
  <form class="p"><p >
   For any Clarifications<br>
   Contact: Mr.Prajith<br>
   Bus Incharge<br>
   Phone:9089789890
   </p></form>
</div>
<script>
function message(){
    var cn=document.getElementById('Issue');
    var ch=document.getElementById('description');
    const success = document.getElementById('success');
    const danger = document.getElementById('danger');
    if(cn.value=='' || ch.value =='' ){
        danger.style.display='block';
    }
    else{
        setTimeout(()=>{
            cn.value='';
            ch.value='';
        },2000);
        success.style.display='block';
    }

}
</script>
</body>
</html>