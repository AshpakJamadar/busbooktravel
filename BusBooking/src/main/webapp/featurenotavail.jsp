<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feature Not Available</title>
    <link rel="stylesheet" href="styles.css">
    <style>
      body, html {
    margin: 0;
    padding: 0;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #f0f0f0;
    font-family: Arial, sans-serif;
}

.container {
    text-align: center;
    padding: 20px;
    background: white;
    box-shadow: 0 4px 8px rgba(0,0,0,0.2);
    border-radius: 8px;
    animation: fadeIn 1s ease-in-out;
}

.message h1 {
    font-size: 2.5em;
    margin-bottom: 10px;
    color: #333;
    animation: slideIn 1s ease-in-out;
}

.message p {
    font-size: 1.2em;
    color: #666;
    animation: slideIn 1.5s ease-in-out;
}

@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

@keyframes slideIn {
    from {
        transform: translateY(20px);
        opacity: 0;
    }
    to {
        transform: translateY(0);
        opacity: 1;
    }
}
@keyframes bounce {
    0%, 20%, 50%, 80%, 100% {
        transform: translateY(0);
    }
    40% {
        transform: translateY(-20px);
    }
    60% {
        transform: translateY(-10px);
    }
}

    </style>
</head>
<body>
    <div class="container">
        <div class="message">
            <h1>Feature Not Available</h1>
            <p>Sorry, this feature is currently not available. Please check back later.</p>
            <button style="background-color:skyblue;padding:10px 20px; border-radius:5px;"> <a href="bookingbus.jsp" style="text-decoration:none;color:white;">back</a></button> 
        </div>
        
    </div>
    <!-- <script src="script.js"></script> -->
     <script>
            document.addEventListener('DOMContentLoaded', () => {
          const message = document.querySelector('.message');
          message.addEventListener('click', () => {
              message.style.animation = 'bounce 0.5s ease-in-out';
              setTimeout(() => {
                  message.style.animation = '';
              }, 500);
          });
      });



     </script>
</body>
</html>
    