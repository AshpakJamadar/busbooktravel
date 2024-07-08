<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">  
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <style media="screen">
   
 @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap');

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  list-style: none;
  font-family: 'Montserrat', sans-serif;
}

body{
  background:rgb(125, 153, 178);
}

.container{
  width: 1000px;
  height: 600px;
  margin: 2.5rem auto;
  border: 1px solid;
  background-color: white;
  display: flex;
  align-items: center;
  justify-content: center;
}

.wrapper, .wrapper1{
  width: 450px;
  height: 550px;
}

.image{
  width: 100%;
  height: 100%;
}

.registration_form{
  background: white;
  padding: 25px;
  width: 400px;
  height: 550px;
}

.registration_form .title{
  text-align: center;
  font-size: 25px;
  text-transform: uppercase;
  color: black;
  letter-spacing: 2px;
  font-weight: 700;
  margin-top: -25px;
  margin-left:-25px;
  margin-right:-25px;
}

.form_wrap{
  margin-top: 20px;
}

.form_wrap .input_wrap{
  margin-bottom: 15px;
}

.form_wrap .input_wrap:last-child{
  margin-bottom: 0;
}

.form_wrap .input_wrap label{
  display: block;
  margin-bottom: 3px;
  color: #1a1a1f;
}

.form_wrap .input_grp{
  display: flex;
  justify-content: space-between;
}

.form_wrap .input_grp input[type="text"],
.form_wrap .input_grp input[type="tel"]{
  width: 165px;
}

.form_wrap input[type="text"],
.form_wrap input[type="tel"]{
  width: 100%;
  border-radius: 3px;
  border: 1.3px solid #9597a6;
  padding: 8px;
  outline: none;
}

.form_wrap input[type="text"]:focus,
.form_wrap input[type="tel"]:focus{
  border-color: #063abd;
}

.form_wrap ul{
 border:1px solid rgb(115, 185, 235);
  width:70%;
  background: rgb(206, 238, 242);
  margin-left: 15%;
  padding: 8px 10px;
  border-radius: 20px;
  display: flex;
  justify-content: center;
}

.form_wrap ul li:first-child{
  margin-right: 15px;
}

.form_wrap ul .radio_wrap{
  position: relative;
  margin-bottom: 0;
}

.form_wrap ul .radio_wrap .input_radio{
  position: absolute;
  top: 0;
  right: 0;
  opacity: 0;
}

.form_wrap ul .radio_wrap span{
  display: inline-block;
  font-size: 17px;
  padding: 3px 15px;
  border-radius: 15px;
  color: #101749;
}

.form_wrap .input_radio:checked ~ span{
  background: #105ce2;
  color:white;
}

.form_wrap .submit_btn{
  width: 100%;
  background: #0d6ad7;
  padding: 10px;
  border: 0;
  color:white;
  font-size:17px;
  border-radius: 3px;
  text-transform: uppercase;
  letter-spacing: 2px;
  cursor: pointer;
}

.form_wrap .submit_btn:hover{
  background: #051c94;
}

.btn{
  width:auto;
  display: flex;
  align-items: center;
  justify-content: space-around;
}

.button{
  padding:10px 20px ;
  background-color:#3f86d3c1 ;
  border-radius:8px;
}

@media (max-width: 1024px) {
  .container {
    width: 95%;
    height: auto;
  }

  .wrapper, .wrapper1 {
    width: 100%;
    height: auto;
  }

  .registration_form {
    width: 100%;
    height: auto;
  }
}

@media (max-width: 768px) {
  .container {
    flex-direction: column;
  }

  .wrapper1 {
    display: none;
  }
}

@media (max-width: 600px) {
  .container {
    width: 90%;
    height: auto;
    margin: 1.5rem auto;
  }

  .wrapper, .wrapper1 {
    width: 100%;
    height: auto;
    margin: 10px 0;
  }

  .registration_form {
    width: 90%;
    height: auto;
  }

  .form_wrap .input_grp input[type="text"],
  .form_wrap .input_grp input[type="tel"] {
    width: 100%;
    margin-bottom: 10px;
  }

  .form_wrap ul {
    width: 90%;
    margin-left: 5%;
  }

  .form_wrap ul .radio_wrap span {
    font-size: 15px;
    padding: 3px 10px;
  }

  .form_wrap .submit_btn {
    font-size: 15px;
  }
}

@media (max-width: 400px) {
  .container{
  width: 350px;
  margin-top:52px;
  border: 1px solid;
  background-color: white;
  display: flex;
  align-items: center;
  justify-content: center;
}

  .registration_form .title {
    font-size: 20px;
  }

  .form_wrap ul {
    width: 90%;
    margin-left: 5%;
  }

  .form_wrap ul .radio_wrap span {
    font-size: 15px;
    padding: 3px 10px;
  }

  .form_wrap .submit_btn {
    font-size: 15px;
  }
}
  </style>
</head>
<body>

  <div class="container">
    <div class="wrapper">
      <div class="registration_form">
        <div class="title">
          Passenger details
        </div>
        <form action="passengerdetail" method="post">
          <div class="form_wrap">
            <div class="input_grp">
              <div class="input_wrap">
                <label for="fname">First Name</label>
                <input type="text" id="fname" name="fname" placeholder="F-Name" onkeyup="validateFname()" required>
                <span id="fnameError" class="error1"></span>
              </div>
              <div class="input_wrap">
                <label for="lname">Last Name</label>
                <input type="text" id="lname" placeholder="L-Name" name="lname" onkeyup="validateLname()" required>
                <span id="lnameError" class="error2"></span>
              </div>
            </div>
            <div class="input_wrap">
              <label for="email">Email Address</label>
              <input type="text" id="email" placeholder="Enter the Mail Id" name="email" required>
            </div>
            <div class="input_wrap">
              <label for="phone">Mobile Number</label>
              <input type="tel" placeholder="Mobile Number" name="phone" id="mobileNumber" onkeyup="validatePhoneNumber()" maxlength="10">
              <span id="error-message" class="error-mobile"></span>
            </div>
            <div class="input_wrap">
              <label for="city">City</label>
              <input type="text" id="city" placeholder="Enter the City" name="city" required>
            </div>
            <div class="input_wrap">
              <label for="country">Country</label>
              <input type="text" id="country" name="country" value="India" disabled>
            </div>
            <div class="input_wrap">
              <label>Gender</label>
              <ul>
                <li>
                  <label class="radio_wrap">
                    <input type="radio" name="gender" value="male" class="input_radio" checked>
                    <span>Male</span>
                  </label>
                </li>
                <li>
                  <label class="radio_wrap">
                    <input type="radio" name="gender" value="female" class="input_radio">
                    <span>Female</span>
                  </label>
                </li>
              </ul>
            </div>
            <div class="btn">
              <button type="submit" class="button">submit</button>
              <button class="button"><a href="index.jsp" style="text-decoration:none;color:black;">Home</a></button> 
            </div>
          </div>
        </form>
      </div>
    </div>
    <div class="wrapper1">
      <img src="images/4966434.jpg" class="image" alt="">
    </div>
  </div>
  
  <script type="text/javascript">
  function validateFname() {
    var fnameInput = document.getElementById('fname').value;
    var fnameError = document.getElementById('fnameError');
    var regex = /^[a-zA-Z]+$/; 

    if (fnameInput.trim() === '') {
      fnameError.textContent = '';
      fnameError.className = 'error1';
    } else if (!regex.test(fnameInput)) {
      fnameError.style.color = "red";
      fnameError.textContent = 'Invalid name.';
      fnameError.className = 'error1';
    } else {
      fnameError.textContent = '';
      fnameError.className = 'success';
    }
  }

  function validateLname() {
    var lnameInput = document.getElementById('lname').value;
    var lnameError = document.getElementById('lnameError');
    var regex = /^[a-zA-Z]+$/; 

    if (lnameInput.trim() === '') {
      lnameError.textContent = '';
      lnameError.className = 'error2';
    } else if (!regex.test(lnameInput)) {
      lnameError.style.color = "red";
      lnameError.textContent = 'Invalid name.';
      lnameError.className = 'error2';
    } else {
      lnameError.textContent = '';
    }
  }

  function validatePhoneNumber() {
    const mobileNumber = document.getElementById('mobileNumber').value;
    const errorMessage = document.getElementById('error-message');
    const mobileNumberPattern = /^[6-9]\d{9}$/;

    if (mobileNumber === '') {
      errorMessage.textContent = '';
    } else if (!mobileNumberPattern.test(mobileNumber)) {
      errorMessage.style.color = "red";
      errorMessage.textContent = 'Invalid mobile number.';
    } else {
      errorMessage.style.color = "green";
      errorMessage.textContent = 'valid';
    }
  }
  </script>
</body>
</html>
