<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
        <style>
      * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
  }
body {
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    background: #fff;
}
#forgot{
  display: flex;
  align-items: center;
  justify-content: flex-end;
}
.container {
    position: relative;
    width: 70vw;
    height: 80vh;
    background: #fff;
    border-radius: 15px;
    box-shadow: 0 4px 20px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.3);
    overflow: hidden;
}
.container::before {
    content: "";
    position: absolute;
    top: 0;
    left: -50%;
    width: 100%;
    height: 100%;
    background: url("images/istockphoto-1392494719-612x612.jpg");
    background-size: cover;
    z-index: 6;
    transform: translateX(100%);
    transition: 1s ease-in-out;
}
.signin-signup {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: space-around;
    z-index: 5;
}
form {
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    width: 40%;
    min-width: 238px;
    padding: 0 10px;
}
form.sign-in-form {
    opacity: 1;
    transition: 0.5s ease-in-out;
    transition-delay: 1s;
}
form.sign-up-form {
    opacity: 0;
    transition: 0.5s ease-in-out;
    transition-delay: 1s;
}
.title {
    font-size: 35px;
    color: hsla(263, 47%, 66%, 1);
    margin-bottom: 10px;
}
.input-field {
    width: 100%;
    height: 50px;
    background: #f0f0f0;
    margin: 10px 0;
    border: 2px solid hsla(263, 47%, 66%, 1);
    display: flex;
    align-items: center;
}
.input-field1 {
    width: 100%;
    height: 40px;
    display: flex;
    align-items: center;
}
.input-field3{
    width: 100%;
    height: 35px;
    background: #f0f0f0;
    margin: 10px 0;
    border: 2px solid hsla(263, 47%, 66%, 1);
    display: flex;
    justify-content: space-around;
    align-items: center;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

}
.gender{
    font-family: 'Poppins', sans-serif;
}
.input-field2{
    width: 100%;
    height: 35px;
    background: #f0f0f0;
    margin: 10px 0;
    border: 2px solid hsla(263, 47%, 66%, 1);
    display: flex;
    align-items: center;
}
.input-field2 i {
    flex: 1;
    text-align: center;
    color: #666;
    font-size: 18px;
}
.input-field2 input {
flex: 5;
background: none;
border: none;
outline: none;
width: 100%;
font-size: 18px;
font-weight: 600;
color: #444;
}

.input-field i {
    flex: 1;
    text-align: center;
    color: #666;
    font-size: 18px;
}
.input-field input {

    flex: 5;
    background: none;
    border: none;
    outline: none;
    width: 100%;
    font-size: 18px;
    font-weight: 600;
    color: #444;
}
::placeholder{
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}
.btn {
    width: 150px;
    height: 50px;
    border: none;
    border-radius: 50px;
    background:hsla(263, 47%, 66%, 1);
    color: #fff;
    font-weight: 600;
    margin: 10px 0;
    text-transform: uppercase;
    cursor: pointer;
}
.btn:hover {
    background: hsla(263, 47%, 66%, 1);
}
.social-text {
    margin: 10px 0;
    font-size: 16px;
}
.social-media {
    display: flex;
    justify-content: center;
}
.social-icon {
    height: 45px;
    width: 45px;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #444;
    border: 1px solid #444;
    border-radius: 50px;
    margin: 0 5px;
}

a {
    text-decoration: none;
}
.social-icon:hover {
    color: #a2c3a4;
    border-color: #a2c3a4;
}
.panels-container {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: space-around;
}
.panel {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-around;
    width: 35%;
    min-width: 238px;
    padding: 0 10px;
    text-align: center;
    z-index: 6;
}
.left-panel {
    pointer-events: none;
}
.content {
    color: #fff;
    transition: 1.1s ease-in-out;
    transition-delay: 0.5s;
}
.panel h3 {
    font-size: 24px;
    font-weight: 600;
}
.panel p {
    font-size: 15px;
    padding: 10px 0;
}
.image {
    width: 100%;
    transition: 1.1s ease-in-out;
    transition-delay: 0.4s;
}
.left-panel .image,
.left-panel .content {
    transform: translateX(-200%);
}
.right-panel .image,
.right-panel .content {
    transform: translateX(0);
}
.account-text {
    display: none;
}
/*Animation*/
.container.sign-up-mode::before {
    transform: translateX(0);
}
.container.sign-up-mode .right-panel .image,
.container.sign-up-mode .right-panel .content {
    transform: translateX(200%);
}
.container.sign-up-mode .left-panel .image,
.container.sign-up-mode .left-panel .content {
    transform: translateX(0);
}
.container.sign-up-mode form.sign-in-form {
    opacity: 0;
}
.container.sign-up-mode form.sign-up-form {
    opacity: 1;
}
.container.sign-up-mode .right-panel {
    pointer-events: none;
}
.container.sign-up-mode .left-panel {
    pointer-events: all;
}
/*Responsive*/
@media (max-width:779px) {
    .container {
        width: 100vw;
        height: 100vh;
    }
}
@media (max-width:635px) {
    .container::before {
        display: none;
    }
    form {
        width: 80%;
    }
    form.sign-up-form {
        display: none;
    }
    .container.sign-up-mode2 form.sign-up-form {
        display: flex;
        opacity: 1;
    }
    .container.sign-up-mode2 form.sign-in-form {
        display: none;
    }
    .panels-container {
        display: none;
    }
    .account-text {
        display: initial;
        margin-top: 30px;
    }
}


.message {
  text-align: center;
  margin-top: 20px;
  display: none;
}


.error {
  color: red;
  display: none;
}



@media (max-width: 400px) {
  .title{
    font-size: 35px ;
  }
    .container {
        width: 100%;
        height: 100vh;
    }

    .input-field2{
    width: 100%;
    height: 30px;
    background: #f0f0f0;
    margin: 8px 0;
    border: 1px solid hsla(263, 47%, 66%, 1);
    display: flex;
    align-items: center;
}
.input-field3{
  width: 100%;
    height: 30px;
    background: #f0f0f0;
    margin: 8px 0;
    border: 1px solid hsla(263, 47%, 66%, 1);
    display: flex;
    align-items: center;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

}

@media (max-width: 350px) {
    form {
        width: 100%;
    }
}
@media (max-width:320px) {
    form {
        width: 90%;
    }
    
}
    </style>
    <title>Sign In & Sign Up</title>
</head>
<body>
    <div class="container">
        <div class="signin-signup">
            <form action="login" class="sign-in-form" method="post">
                <h2 class="title">Sign in</h2>
                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Enter the mail id" name="email" required="required">
                </div>
                <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Password" name="pwd">
                </div>
                <a id="forgot" class="input-field1" href="forgot.jsp">Forgot password?</a>
                <input type="submit" value="Login" class="btn">
                <p class="social-text">Or Sign in with social platform</p>
                <div class="social-media">
                    <a href="#" class="social-icon">
                        <i class="fab fa-facebook"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                </div>
                <p class="account-text">Don't have an account? <a href="#" id="sign-up-btn2">Sign up</a></p>
            </form>

            <form action="signup" class="sign-up-form" onsubmit="handleSubmit(event)" method="post">
                <h2 class="title">Sign up</h2>
                <div class="input-field2">
                    <i class="fas fa-user"></i>
                     <input type="text" placeholder="First Name" id="fname" name="fname" onkeyup="validateFname()" required>
                </div>
                <span id="fnameError" class="error1"></span>
                
                
                <div class="input-field2">
                    <i class="fas fa-envelope"></i>
                    <input type="text" placeholder="Last Name" id="lname" name="lname" onkeyup="validateLname()" required>
                </div>
                <span id="lnameError" class="error2"></span>
                
                <div class="input-field2">
                    <i class="fas fa-envelope"></i>
                    <input type="email" placeholder="Email" name="emailid"  required>
                </div>
                <div class="input-field2">
                    <i class="fas fa-phone"></i>
                 <input class="sub1" type="text" placeholder="Mobile Number" id="mobileNumber" name="mobile" onkeyup="validatePhoneNumber()" maxlength="10" ></br>
  				</div>
 					<span id="error-message" style="color: red;"></span>

                <div class="input-field2">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Password" name="pwd" id="password" required>
                </div>
                <div class="input-field2">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Confirm Password" name="cpwd" id="confirmPassword" onkeyup="passwormatch()" required>
                </div>
                <span id="message" class="error">Password not matched</span>

                <div class="input-field3">
                    <label  style=" font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color: #666;"><b>Gender:  </b>
                        <input type="radio" name="gender" value="male" required> <span style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color: #666; "><b>Male</b></span>
                    </label>
                    
                    <label class="gender" >
                        <input type="radio" name="gender" value="female" required> <span style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color: #666;" ><b>Female</b></span>
                    </label>
             </div>
                    
                <button type="submit" class="btn">Submit</button>
                <p class="account-text">Already Registered? <a href="#" id="sign-in-btn2">Sign in</a></p>
            </form>
        </div>
        <div class="panels-container">
            <div class="panel left-panel">
                <div class="content">
                    <h3>Join Our Travel Community</h3>
                    <p>"Travel is the only thing you buy that makes you richer."</p>
                    <p>"Adventure awaits, go find it!"</p>
                    <button class="btn" id="sign-in-btn">Sign in</button>
                </div>
                <img src="signin.svg" alt="" class="image">
            </div>
            <div class="panel right-panel">
                <div class="content">
                    <h3>Already a member?</h3>
                    <p>"Log in to continue your adventure!"</p>
                    <button class="btn" id="sign-up-btn">Sign up</button>
                </div>
                <img src="signup.svg" alt="" class="image">
            </div>
        </div>
    </div>
    <script>
        const sign_in_btn = document.querySelector("#sign-in-btn");
        const sign_up_btn = document.querySelector("#sign-up-btn");
        const container = document.querySelector(".container");
        const sign_in_btn2 = document.querySelector("#sign-in-btn2");
        const sign_up_btn2 = document.querySelector("#sign-up-btn2");

        sign_up_btn.addEventListener("click", () => {
            container.classList.add("sign-up-mode");
        });
        sign_in_btn.addEventListener("click", () => {
            container.classList.remove("sign-up-mode");
        });
        sign_up_btn2.addEventListener("click", () => {
            container.classList.add("sign-up-mode2");
        });
        sign_in_btn2.addEventListener("click", () => {
            container.classList.remove("sign-up-mode2");
        });

        
        function validateFname() {
            var fnameInput = document.getElementById('fname').value;
            var fnameError = document.getElementById('fnameError');
            var regex = /^[a-zA-Z]+$/; 

            if (fnameInput.trim() === '') {
                fnameError.textContent = '';
                fnameError.className = 'error1';
            } else if (!regex.test(fnameInput)) {
            	fnameError.style.color="red";
                fnameError.textContent = 'Invalid user name.';
                fnameError.className = 'error1';
            } else {
                fnameError.textContent = '';
                fnameError.className = 'success';
            }
        }
     
        function validateLname() {
            var fnameInput = document.getElementById('lname').value;
            var fnameError = document.getElementById('lnameError');
            var regex = /^[a-zA-Z]+$/; 

            if (fnameInput.trim() === '') {
                fnameError.textContent = '';
                fnameError.className = 'error2';
            } else if (!regex.test(fnameInput)) {
            	fnameError.style.color="red";
                fnameError.textContent = 'Invalid name.';
                fnameError.className = 'error2';
            } else {
                fnameError.textContent = '';
            }
        }
        
        
        const message = document.getElementById('message');

        document.getElementById('confirmPassword').addEventListener('input', function() {
            const password = document.getElementById('password').value;
            const pass = this.value;
            const errorS = document.getElementById('message');

           
            if (password !== pass) {
                errorS.style.display = 'inline';
            } 
            else {
                errorS.style.display = 'none';
            }
        });

    
        function validatePhoneNumber(){
            const mobileNumber = document.getElementById('mobileNumber').value;
            const errorMessage = document.getElementById('error-message');
            const mobileNumberPattern = /^[6-9]\d{9}$/;

            if (mobileNumber === '') {
                errorMessage.style.color="red";
                errorMessage.textContent = '';
            } else if (!mobileNumberPattern.test(mobileNumber)) {
                errorMessage.style.color="red";
                errorMessage.textContent = 'Invalid mobile number.';
            }
             else {
                errorMessage.style.color="green";
                errorMessage.textContent = '';
            }
          };
     
    </script>
</body>
</html>
    