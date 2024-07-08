<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

  
  <style>
    *{
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body{
      background:rgb(125, 153, 178) ;
    }
    .container{
          border: 1px solid;
          width: 800px;
          height: 500px;
          margin: 100px auto;
          display: flex;
          justify-content: center;
          align-items: center;
          background-color: white;
    }
    #sub-container1{
      width: 400px;
      height: 300px;
      /* border: 1px solid; */
    }
 
    img{
      width: 350px;
      height: auto;
    }
   
    .sub1{
      margin-left: 20px;
    }
    h1{
      font-family: cursive;    }
    h3{
      margin-top: 30px;
      font-family: Arial, Helvetica, sans-serif;
    }
    input{
      width: 250px;
      padding: 5px;
      margin: 10px;
      
    }
    ::placeholder {
      color: darkslateblue;
      font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    }
    button{
      height: auto;
      border-radius: 5px;
      padding:10px;
      background-color: #3f86d3c1;
    }
    #btn2{
      width: 105px;
      }
    a{
      width: 100%;
      color: black;
      text-decoration: none;

    }
    #wrong_pass_alert{
      width: 180px;
      height: 25px;
      margin-left: 20px;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    #wrong_pass{
          margin-left: 20px;
          margin-bottom:2px;
    	display:none;
    }
  
    @media screen and (max-width: 600px) {
      .container {
        border: 1px solid;
        width: 700px;
        height: 500px;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: white;
      }
      #sub-container1 {
        width: auto;
        height: 300px;
        /* border: 1px solid; */
      }
      img {
        width: 300px;
        height: auto;
      }
    }
    
    @media screen and (max-width: 400px) {
      .container {
        width: 350px;
        height: auto;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        margin-top:  150px;
      }
      #sub-container2 {
        display: none;
      }
     
      input {
       width: 25  0px;
      padding: 5px;
      margin: 10px;
      }

    
    }
  </style>
</head>
<body>

  <div class="container">

    <div class="sub-container" id="sub-container1">

      <h1 class="sub1">Reset Password</h1>
        <form id="resetPasswordForm" action="ResetPassword" method="post">
      <input class="sub1" type="text" id="username" placeholder="User Name" name="username" value="<%= session.getAttribute("username") %>" disabled>
      <input class="sub1" type="password" id="newPassword" name="newPassword" placeholder="Password"   onkeyup="password()">
      <span id="wrong_pass" ></span></br>
      
      <input class="sub1" type="password" id="confirmPassword" name="confirmPassword" placeholder="confirmPassword" onkeyup="validate_password()" ></br>
      <span id="wrong_pass_alert" ></span></br>
      <button  class="sub1" type="submit" >Reset Password</button>
      <button  class="sub1" id="btn2" ><a href="forgot.jsp">cancel</a></button>
		</form>
    </div>

    <div class="sub-container" id="sub-container2">
      <img src="images/resetimg.jpg" alt="">
    </div>
  </div>
  
  <script>
  
  		  function password(){
  			let pass = document.getElementById('newPassword').value;
            let wrong =document.getElementById('wrong_pass');
            
  			 if (pass.includes(' ')) {
                wrong.style.color = 'red';
                wrong.style.display = 'block';
                wrong.innerHTML = 'Password should not contain spaces';
            }else {
                wrong.style.display = 'none';
         }
  		  }
          
          function validate_password() {

            let pass = document.getElementById('newPassword').value;
            let confirm_pass = document.getElementById('confirmPassword').value;
            let wrong =document.getElementById('wrong_pass_alert');
            if (pass === '' || confirm_pass === '') {
                wrong.style.color = 'orange';
                wrong.style.display = 'block';
                wrong.innerHTML = 'Please enter both fields';
               }
            
            else if  (pass !== confirm_pass) {
                wrong.style.color = 'red';
                wrong.style.display='block';
               wrong.innerHTML= 'Use same password';
                
            } else {
                wrong.style.color = 'green';
                wrong.innerHTML = 'Password Matched'; 
            }
            
            }
        
  </script>
</body>
</html>
  

