<%@page import="BusBooking.Dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    HttpSession s = request.getSession(false);
    UserDto user = (UserDto) s.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BusBooking</title>
    <link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
/>
    <link rel="stylesheet" href="css/swiper-bundle.min.css">

    <link rel="stylesheet" href="css/scrollreveal.min.js">

    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        
    <link rel="stylesheet" href="css/style.css">
    <style>
        #logo{
                width: 90px;
                height: 50px;
                border-radius: 10px;
                }

        .about-details {
            padding: 20px;
            margin: 20px;
        }

        .about-text {
            margin-bottom: 10px;
        }

        .about-buttons {
            display: flex;
            gap: 10px;
        }

        .button, .about-link {
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .about-link {
            display: flex;
            align-items: center;
        }

        .link-text {
            margin-right: 5px;
        }

        .form-container {
            margin-top: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn1{
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            background-color: #007BFF;
            color: white;
            border-radius: 5px;
        }

        #menucontent{
                display: flex;
                align-items: center;
                justify-content: center;
        }

        @media screen and (max-width:400px){
        .about-details{
       
        	width:auto;
        	height:auto;
        }
        .form-container{
        	width:300px;
        	height:300px;
        	margine-bottom:100px;
        }
        }
    </style>

</head>
<body>

<!-- nav bar -->
    <header class="header">
            <nav class="nav container flex">
                    <a href="#" class="logo-content flex">
                        <span class="logo-text"><img src="images/logo1.jpeg" alt="" id="logo"></span>
                    </a>

                    <div class="menu-content">
                            <ul class="menu-list flex">
                                    <li><a href="#home" class="nav-link active-navlink">Home</a></li>
                                    <li><a href="#about" class="nav-link">Book</a></li>
                                    <li><a href="#menu" class="nav-link">Offers</a></li>
                                    <li><a href="#review" class="nav-link">Review</a></li>
                                    <li><a href="login.jsp" class="nav-link">Logout</a></li>
                            </ul>

                            <div class="media-icons flex">
                                    <a href="https://www.facebook.com"><i class='bx bxl-facebook'></i></a>
                                    <a href="https://twitter.com/i/flow/login"><i class='bx bxl-twitter' ></i></a>
                                    <a href="https://www.instagram.com/accounts/login"><i class='bx bxl-instagram-alt' ></i></a>
                                    <a href="https://github.com/login"><i class='bx bxl-github'></i></a>
                                    <a href="https://www.youtube.com/login"><i class='bx bxl-youtube'></i></a>
                            </div>

                            <i class='bx bx-x navClose-btn'></i>
                        </div>
                        
                

                        <i class='bx bx-menu navOpen-btn'></i>
                </nav>
        
    </header>

 
<!-- Home Section -->
    <main>
        <section class="home" id="home">
                <div class="home-content">
                        <div class="swiper mySwiper">
                                <div class="swiper-wrapper">
                                
                                        <div class="swiper-slide">
                                        
                                                <img src="images/karnataka-245031_1280.jpg" alt="" class="home-img">

                                                <div class="home-details">
                                                        <div class="home-text">
                                             	<h2 class="homeTitle"><div>Hello, <%= user.getFname() %>!</div>Karnataka</h2>
                                                        </div>

                                                        <button class="button" ><a href="#about" style="color: white;";">Book Ticket</a></button>
                                                </div>
                                        </div>

                                        <div class="swiper-slide">
                                                <img src="images/taj-mahal-3654227_1280 (1).jpg" alt="" class="home-img">

                                                <div class="home-details">
                                                        <div class="home-text">
                                                        
                                                                <!-- <h4 class="homeSubtitle">Enjoy the finest coffee drinks.</h4> -->
                                                                <h2 class="homeTitle">Dehli</h2>
                                                        </div>

                                                        <button class="button" ><a href="#about" style="color: white;";">Book Ticket</a></button>
                                                </div>
                                        </div>

                                        <div class="swiper-slide">
                                                <img src="images/kerala-165347_1280.jpg" alt="" class="home-img">

                                                <div class="home-details">
                                                        <div class="home-text">
                                                                <!-- <h4 class="homeSubtitle">Enjoy the finest coffee drinks.</h4> -->
                                                                <h2 class="homeTitle">Kerala</h2>
                                                        </div>

                                                        <button class="button" ><a href="#about" style="color: white;";">Book Ticket</a></button>
                                                </div>
                                        </div>

                                        <div class="swiper-slide">
                                                <img src="css/kerala-165347_1280.jpg" alt="" class="home-img">

                                                <div class="home-details">
                                                        <div class="home-text">
                                                                <h2 class="homeTitle">Chennai</h2>
                                                        </div>

                                                        <button class="button" ><a href="#about" style="color: white;";">Book Ticket</a></button>
                                                </div>
                                        </div>

                                        <div class="swiper-slide">
                                                <img src="images/hawa-mahal-6156123_1280.jpg" alt="" class="home-img">

                                                <div class="home-details">
                                                        <div class="home-text">
                                                                <h2 class="homeTitle">Rajasthan</h2>
                                                        </div>

                                                        <button class="button" ><a href="#about" style="color: white;";">Book Ticket</a></button>
                                                </div>
                                        </div>

                                        <div class="swiper-slide">
                                                <img src="images/travel-4813658_1280.jpg" alt="" class="home-img">

                                                <div class="home-details">
                                                        <div class="home-text">
                                                                <h2 class="homeTitle">Mubai</h2>
                                                        </div>

                                                        <button class="button" ><a href="#about" style="color: white;">Book Ticket</a></button>
                                                </div>
                                        </div>


                                </div>

                                <div class="swiper-button-next swiper-navBtn"></div>
                                <div class="swiper-button-prev swiper-navBtn"></div>
                                <div class="swiper-pagination"></div>
                        </div>
                </div>
        </section>

    
<!-- About Section -->
        <section class="section about" id="about">
                <div class="about-content container" id="aboutcontainer">
                        <div class="about-imageContent">
                                <img src="images/bus.jpeg" alt="" class="about-img">

                                <div class="aboutImg-textBox">
                                        <i class='bx bx-heart heart-icon flex'></i>
                                        <p class="content-description">"The journey of a thousand miles begins with a single step." -Lao Tzu</p>
                                </div>
                        </div>

                        <div class="about-details" id="aboutdetails">
                                <div class="about-text">
                                        <p>Welcome to our form. Please select your city from the list below.</p>
                                </div>
                                <div class="form-container">
                                        <form action="bookform" method="post">
                                            <div class="form-group">
                                                <label for="fromPlace">From:</label>
                                                <select class="form-control" id="fromPlace" name="fromPlace" required>
                                                     <option></option>
                                                    <option value="Hubli">Hubli</option>
                                                    <option value="Bangalore">Bangalore</option>
                                                    <option value="Hyderabad">Hyderabad</option>
                                                    <option value="Mumbai">Mumbai</option>
                                                    <option value="Pune">Pune</option>
                                                    <option value="Mangalore">Mangalore</option>
                                                    <option value="Goa">Goa</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="toPlace">To:</label>
                                                <select class="form-control" id="toPlace" name="toPlace" required>
                                                    <option></option>
                                                
                                                    <option value="Hubli">Hubli</option>
                                                    <option value="Bangalore">Bangalore</option>
                                                    <option value="Hyderabad">Hyderabad</option>
                                                    <option value="Mumbai">Mumbai</option>
                                                    <option value="Pune">Pune</option>
                                                    <option value="Mangalore">Mangalore</option>
                                                    <option value="Goa">Goa</option>
                                                </select>
                                            </div>
                                         
                      <div class="form-group">
                            <label for="seatNumber">Seat Number:</label>
                                <input type="date" class="form-control" name="date" required>
                        </div>
       		 <div class="form-group">                       
		             <label>
		                <input type="radio" name="bookingType" value="self"> Booking for Self   
		            </label>
		            <label>
		                <input type="radio" name="bookingType" value="others" > Booking for Others
		            </label>
            </div>  
      
                                            <button type="submit"  class="btn1 btn-primary">Submit</button>
                                        </form>
                                    </div>

                               
                        </div>

                </div>
        </section>

    
<!-- Menu Section -->
<section class="section menu" id="menu">
        <div class="menu-container container" >
            <div class="meu-text">
                <h4 class="section-subtitle"><i>Our Menu</i></h4>
                <h2 class="section-title">Popular Travel Packages</h2>
                <p class="section-description">
                    Explore the best travel packages designed to suit you, with professional architecture and psychological insights to make your experience unforgettable.
                </p>
            </div>
    
            <div class="menu-content" id="menucontent">
                <div class="menu-items">
                    <div class="menu-item flex">
                        <img src="images/taj-mahal-3654227_1280 (1).jpg" alt="Delhi" class="menu-img">
    
                        <div class="menuItem-details">
                            <h4 class="menuItem-topic">Delhi Tour Package</h4>
                            <p class="menuItem-des">Discover the historical and modern attractions of India’s capital.</p>
                        </div>
    
                        <div class="menuItem-price flex">
                            <span class="discount-price">$299.99</span>
                            <span class="real-price">$249.99</span>
                        </div>
                    </div>
                    <div class="menu-item flex">
                        <img src="images/travel-4813658_1280.jpg" alt="Mumbai" class="menu-img">
    
                        <div class="menuItem-details">
                            <h4 class="menuItem-topic">Mumbai Tour Package</h4>
                            <p class="menuItem-des">Experience the vibrant life and scenic beauty of Mumbai.</p>
                        </div>
    
                        <div class="menuItem-price flex">
                            <span class="discount-price">$349.99</span>
                            <span class="real-price">$299.99</span>
                        </div>
                    </div>
                    <div class="menu-item flex">
                        <img src="images/goa.jpg" alt="Goa" class="menu-img">
    
                        <div class="menuItem-details">
                            <h4 class="menuItem-topic">Goa Beach Package</h4>
                            <p class="menuItem-des">Relax on the sunny beaches of Goa with our exclusive package.</p>
                        </div>
    
                        <div class="menuItem-price flex">
                            <span class="discount-price">$199.99</span>
                            <span class="real-price">$149.99</span>
                        </div>
                    </div>
                    <div class="menu-item flex">
                        <img src="images/kerala-165347_1280.jpg" alt="Kerala" class="menu-img">
    
                        <div class="menuItem-details">
                            <h4 class="menuItem-topic">Kerala Backwaters Package</h4>
                            <p class="menuItem-des">Explore the serene backwaters of Kerala with a luxurious houseboat.</p>
                        </div>
    
                        <div class="menuItem-price flex">
                            <span class="discount-price">$399.99</span>
                            <span class="real-price">$349.99</span>
                        </div>
                    </div>
                </div>
    
               </div>
        </div>
    </section>
    


    
<!-- Reviews Section -->
<section class="section review" id="review">
        <div class="review-container container">
            <div class="review-text">
                <h4 class="section-subtitle"><i>Reviews</i></h4>
                <h2 class="section-title">What Our Teachers Say</h2>
                <p class="section-description">
                    Here are some reviews from our esteemed teachers and trainers about our institute. We value their feedback and strive to provide the best learning environment.
                </p>
            </div>
    
            <div class="tesitmonial swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="testi-content swiper-slide flex">
                        <img src="images/shankarsir.png" alt="Mr. Shankar Narayan" class="review-img">
                        <p class="review-quote">Our institute provides an exceptional learning environment. The support from the administration and the resources available are top-notch.</p>
                        <i class='bx bxs-quote-alt-left quote-icon'></i>
    
                        <div class="testi-personDetails flex">
                            <span class="name">Mr. Shankar Narayan</span>
                            <span class="job">Head of Institute</span>
                        </div>
                    </div>
                    <div class="testi-content swiper-slide flex">
                        <img src="images/laxman.png" alt="Mr. Laxman Sir" class="review-img">
                        <p class="review-quote">Teaching front-end development here is a pleasure. The curriculum is well-structured, and the students are eager to learn and excel.</p>
                        <i class='bx bxs-quote-alt-left quote-icon'></i>
    
                        <div class="testi-personDetails flex">
                            <span class="name">Mr. Laxman Sir</span>
                            <span class="job">Front-end Trainer</span>
                        </div>
                    </div>
                    <div class="testi-content swiper-slide flex">
                        <img src="" alt="Mr. Kiran Kumar" class="review-img">
                        <p class="review-quote">The back-end development course is designed to provide hands-on experience with the latest technologies, preparing students for real-world challenges.</p>
                        <i class='bx bxs-quote-alt-left quote-icon'></i>
    
                        <div class="testi-personDetails flex">
                            <span class="name">Mr. Kiran Kumar</span>
                            <span class="job">Back-end Trainer</span>
                        </div>
                    </div>
                    <div class="testi-content swiper-slide flex">
                        <img src="images/siddesh3.png" alt="Mr. Siddesh Sir" class="review-img">
                        <p class="review-quote">Programming is made easy and fun here. The interactive sessions and practical projects help students grasp concepts quickly and effectively.</p>
                        <i class='bx bxs-quote-alt-left quote-icon'></i>
    
                        <div class="testi-personDetails flex">
                            <span class="name">Mr. Siddesh Sir</span>
                            <span class="job">Programming Trainer</span>
                        </div>
                    </div>
                </div>
                <div class="swiper-button-next swiper-navBtn"></div>
                <div class="swiper-button-prev swiper-navBtn"></div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </section>
    
<!-- Newsletter Section -->
<section class="section newsletter">
        <div class="newletter-container container">
            <a href="#" class="logo-content flex">
                <i class='bx bx-plane logo-icon'></i>
                <span class="logo-text">Travel</span>
            </a>
    
            <p class="section-description">
                "The world is a book, and those who do not travel read only one page." – Saint Augustine. 
                Subscribe to our newsletter for travel inspiration, tips, and exclusive offers.
            </p>
    
            <div class="newsletter-inputBox">
                <input type="email" placeholder="email@example.com" class="newletter-input">
                <button class="button newsletter-button">Subscribe</button>
            </div>
    
                    <div class="newsletter media-icons flex">
                        <a href="https://www.facebook.com"><i class='bx bxl-facebook'></i></a>
                        <a href="https://twitter.com/i/flow/login"><i class='bx bxl-twitter' ></i></a>
                        <a href="https://www.instagram.com/accounts/login"><i class='bx bxl-instagram-alt' ></i></a>
                        <a href="https://github.com/login"><i class='bx bxl-github'></i></a>
                        <a href="https://www.youtube.com/login"><i class='bx bxl-youtube'></i></a>
                </div>
            </div>
        </section>
        
    
<!-- Footer Section -->
        <footer class="section footer">
            <div class="footer-container container">
                    <div class="footer-content">
                        <a href="#" class="logo-content flex">
                                <!-- <i class='bx bx-coffee logo-icon'></i> -->
                                <span class="logo-text"><img src="images/logo1.jpeg" alt="" id="logo"></span>
                            </a>

                            <p class="content-description">"Traveling - it leaves you speechless, then turns you into a storyteller." -Ibn Battuta</p>

                            <div class="footer-location flex">
                                <i class='bx bx-map map-icon'></i>
                                
                                <div class="location-text">
                                        Bengaluru, Karnataka, India 560078
                                </div>
                            </div>
                    </div>

                    <div class="footer-linkContent">
                        <ul class="footer-links">
                                <h4 class="footerLinks-title">Destinations</h4>
                            
                                <li><a href="#" class="footer-link">Popular Cities</a></li>
                                <li><a href="#" class="footer-link">Beaches</a></li>
                                <li><a href="#" class="footer-link">Mountains</a></li>
                                <li><a href="#" class="footer-link">Cultural Sites</a></li>
                                <li><a href="#" class="footer-link">Adventure Spots</a></li>
                            </ul>
                            <ul class="footer-links">
                                <h4 class="footerLinks-title">Travel Services</h4>
                            
                                <li><a href="#" class="footer-link">Flight Booking</a></li>
                                <li><a href="#" class="footer-link">Hotel Booking</a></li>
                                <li><a href="#" class="footer-link">Car Rentals</a></li>
                                <li><a href="#" class="footer-link">Travel Insurance</a></li>
                                <li><a href="#" class="footer-link">Tour Packages</a></li>
                            </ul>
                            <ul class="footer-links">
                                <h4 class="footerLinks-title">Support</h4>
                            
                                <li><a href="#" class="footer-link">About Us</a></li>
                                <li><a href="#" class="footer-link">FAQs</a></li>
                                <li><a href="#" class="footer-link">Privacy Policy</a></li>
                                <li><a href="#" class="footer-link">Contact Us</a></li>
                            </ul>
                            
                    </div>
            </div>
            <div class="footer-copyRight">&#169; Ashpak Jamadar </div>
        </footer>

<!-- Scroll Up -->
        <a href="#home" class="scrollUp-btn flex">
                <i class='bx bx-up-arrow-alt scrollUp-icon'></i>
        </a>

</main>

<script type="text/javascript">
	document.addEventListener('DOMContentLoaded', function() {
	    var dateInput = document.querySelector('input[name="date"]');
	    var today = new Date().toISOString().split('T')[0];
	    dateInput.setAttribute('min', today);
	});

function updateToPlaceOptions() {
    var fromPlace = document.getElementById('fromPlace').value;
    var toPlace = document.getElementById('toPlace');
    
    for (var i = 0; i < toPlace.options.length; i++) {
        toPlace.options[i].disabled = false; 
    }

    for (var i = 0; i < toPlace.options.length; i++) {
        if (toPlace.options[i].value === fromPlace) {
            toPlace.options[i].disabled = true;
            toPlace.value = ""; 
            break;
        }
    }
}

document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('fromPlace').addEventListener('change', updateToPlaceOptions);
});
</script>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

    <script src="js/script.js"></script>
</body>
</html>