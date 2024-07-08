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
      margin: 2px auto;
      
    }
    ::placeholder {
      color: darkslateblue;
      font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    }
    button{
      margin-top: 10px;
      height: auto;
      border-radius: 5px;
      padding:10px;
      background-color: #3f86d3c1;
    }
    a{
      width: auto;
      color: black;
      text-decoration: none;
    }
  
    #error-message{
      width: auto;
      height: auto;
      /* padding-bottom: 5px; */
      margin-left: 20px;
      
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

      <h1 class="sub1">Forgot Password</h1>
      
      <h3 class="sub1">Enter your Mobile Number</h3>

    <form id="forgetForm" action="ForgetForm" method="post">
      <input class="sub1" type="text" placeholder="Enter the Mobile Number" id="mobile" name="mobile" onkeyup="validatePhoneNumber()" maxlength="10" ></br>
      <span id="error-message" style="color: red;"></span></br>

      <button  class="sub1" type="submit" >Reset Password</button>
      <button  class="sub1" ><a href="login.jsp">Back to Login</a></button>
      </form>

    </div>

    <div class="sub-container" id="sub-container2">
      <img src="images/ForgotPass.jpg" alt="">
    </div>
  </div>
  
  <script>


        
function validatePhoneNumber(){
    const mobileNumber = document.getElementById('mobile').value;
    const errorMessage = document.getElementById('error-message');
    const mobileNumberPattern = /^[6-9]\d{9}$/;

    if (mobileNumber === '') {
        errorMessage.style.color="red";
        errorMessage.textContent = 'Field cannot be empty';
    } else if (!mobileNumberPattern.test(mobileNumber)) {
        errorMessage.style.color="red";
        errorMessage.textContent = 'Invalid mobile number.';
    }
     else {
        errorMessage.style.color="green";
        errorMessage.textContent = 'valid';
    }
  };
  </script>
</body>
</html>
      

