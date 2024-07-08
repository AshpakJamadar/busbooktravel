<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bus Booking</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: Arial, sans-serif;
    }
    body {
      background: rgb(125, 153, 178);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .container {
      border: 1px solid #ccc;
      width: 900px;
      height: 600px;
      margin: 50px auto;
      background-color: white;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
      padding: 20px;
      overflow-y: auto;
    }
    .sub-container {
      margin: 10px auto;
    }
    .row1 {
      display: flex;
      justify-content: space-between;
      margin-bottom: 20px;
    }
    .form-group {
      margin-bottom: 20px;
    }
    label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }
    .form-control {
      width: 100%;
      padding: 8px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
    .bus-card {
      width: 100%;
      margin: 10px 0;
      border: 1px solid mediumslateblue;
      border-radius: 8px;
      padding: 16px;
      text-align: left;
      display: flex;
      align-items: center;
      justify-content: space-between;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .bus-card img {
      width: 100px;
      height: 100px;
      border-radius: 8px;
      margin-right: 16px;
    }
    .bus-info {
      flex: 1;
    }
    .bus-info p {
      margin-bottom: 8px;
    }
    .bus-info p:last-child {
      margin-bottom: 0;
    }
    button {
      padding: 10px 20px;
      margin-left: 20px;
      background-color: mediumslateblue;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    button:hover {
      background-color: slateblue;
    }
    /* Payment Modal */
    body {
      height: 100vh;
      justify-content: center;
      align-items: center;
      display: flex;
      background-color: #eee;
    }
    .launch {
      height: 50px;
    }
    .close {
      font-size: 21px;
      cursor: pointer;
    }
    .modal-body {
      height: 450px;
    }
    .nav-tabs {
      border: none !important;
    }
    .nav-tabs .nav-link.active {
      color: #495057;
      background-color: #fff;
      border-color: #ffffff #ffffff #fff;
      border-top: 3px solid blue !important;
    }
    .nav-tabs .nav-link {
      margin-bottom: -1px;
      border: 1px solid transparent;
      border-top-left-radius: 0rem;
      border-top-right-radius: 0rem;
      border-top: 3px solid #eee;
      font-size: 20px;
    }
    .nav-tabs .nav-link:hover {
      border-color: #e9ecef #ffffff #ffffff;
    }
    .nav-tabs {
      display: table !important;
      width: 100%;
    }
    .nav-item {
      display: table-cell;
    }
    .form-control {
      border-bottom: 1px solid #eee !important;
      border: none;
      font-weight: 600;
    }
    .form-control:focus {
      color: #495057;
      background-color: #fff;
      border-color: #8bbafe;
      outline: 0;
      box-shadow: none;
    }
    .inputbox {
      position: relative;
      margin-bottom: 20px;
      width: 100%;
    }
    .inputbox span {
      position: absolute;
      top: 7px;
      left: 11px;
      transition: 0.5s;
    }
    .inputbox i {
      position: absolute;
      top: 13px;
      right: 8px;
      transition: 0.5s;
      color: #3F51B5;
    }
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
      -webkit-appearance: none;
      margin: 0;
    }
    .inputbox input:focus~span,
    .inputbox input:valid~span {
      transform: translateX(-0px) translateY(-15px);
      font-size: 12px;
    }
    .pay button {
      height: 47px;
      border-radius: 37px;
    }
    #cancel{
        width: auto;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .busimage{
        width: 60px;
        height: 50px;
      }
      .container1{
        /* width: auto; */
        display: flex;
        justify-content: space-between;
        align-items: center;
      }
      .form-control1 {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
          }
    @media screen and (max-width:400px) {
      .busimage{
        display: none;
      }
       .container {
      border: 1px solid #ccc;
      height: 700px;
      margin: 100px auto;
      background-color: white;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
      padding: 20px;
    }
      .container1{
        display: block;
        margin:5px;
      }
      .row1{
        display: flex;
        justify-content: space-around;
        align-items: center;
      }
      #fromPlace{
      margin:5px;
      }
      #toPlace{
      margin:5px;
      }
    }
  </style>
</head>
<body>
  <div class="container">
  <div class="container1">
          <input type="text" placeholder="Name" class="form-control1" name="name" value=<%=session.getAttribute("userName") %> disabled></br>
            <input type="text" name="phone" placeholder="Phone" class="form-control1" value="<%= session.getAttribute("phone") %>" disabled></br>
            <input type="text" name="email" placeholder="Email" class="form-control1" value="<%= session.getAttribute("email") %>" disabled>
  </div>
    <div class="sub-container" id="sub-container2">
      <div class="container2">
        <div class="row1">
          <div class="form-group">
            <label for="fromPlace">Going From</label>
            <input type="text" class="form-control" id="fromPlace" name="fromPlace" value="<%= session.getAttribute("fromPlace") %>" disabled>
          </div>
          <div class="form-group">
            <label for="toPlace">Going To</label>
            <input type="text" class="form-control" id="toPlace" name="toPlace" value="<%= session.getAttribute("toPlace") %>" disabled>
          </div>
        </div>
        <div class="row">
          <div class="bus-card">

            <img src="images/acbus1.png" class="busimage" alt="Niloy Poribohon">
            <div class="bus-info">
              <p>XYZ</p>
              <p>From: <%= session.getAttribute("fromPlace")%> to <%= session.getAttribute("toPlace")%></p>
              <p>4.0 <span class="text-warning">&#9733;&#9733;&#9733;&#9733;&#9734;</span></p>
              <p><strong>Non AC</strong> <span>2/1</span></p>
              <p>Journey Start: <%= session.getAttribute("date")%>, 10:00am</p>
      		 <div>&#8377; 800/-</div>      
            </div>
            <button class="btn btn-primary launch" data-toggle="modal" data-target="#staticBackdrop">Book</button>
          </div>
          <div class="bus-card">
            <img src="images/nonacbus1.png" class="busimage" alt="Parboti Bus">
            <div class="bus-info">
              <p>ABC</p>
              <p>From: <%= session.getAttribute("fromPlace")%> to <%= session.getAttribute("toPlace")%></p>
              <p>4.0 <span class="text-warning">&#9733;&#9733;&#9733;&#9733;&#9734;</span></p>
              <p><strong>Non AC</strong></p>
              <p>Journey Start: <%= session.getAttribute("date")%>, 12:00am</p>
              <div>&#8377; 800/-</div>
            </div>
            <button class="btn btn-primary launch" data-toggle="modal" data-target="#staticBackdrop">Book</button>
          </div>
          <div class="bus-card">
            <img src="images/acbus2.png" class="busimage" alt="Parboti Bus">
            <div class="bus-info">
              <p>EFG</p>
              <p>From: <%= session.getAttribute("fromPlace")%> to <%= session.getAttribute("toPlace")%></p>
              <p>4.0 <span class="text-warning">&#9733;&#9733;&#9733;&#9733;&#9734;</span></p>
              <p><strong>AC</strong> <span>2/2</span></p>
              <p>Journey Start: <%= session.getAttribute("date")%>, 9:00am</p>
              <div>&#8377; 1500/-</div>           
            </div>
            <button class="btn btn-primary launch" data-toggle="modal" data-target="#staticBackdrop">Book</button>
          </div>
          
          <div class="bus-card">
            <img src="images/acbus1.png" class="busimage" alt="Parboti Bus">
            <div class="bus-info">
              <p>PRIME</p>
              <p>From: <%= session.getAttribute("fromPlace")%> to <%= session.getAttribute("toPlace")%></p>
              <p>4.0 <span class="text-warning">&#9733;&#9733;&#9733;&#9733;&#9734;</span></p>
              <p><strong>AC</strong> <span>2/2</span></p>
              <p>Journey Start: <%= session.getAttribute("date")%>, 11:00am</p>
 			 <div>&#8377; 1500/-</div>
            </div>
            <button class="btn btn-primary launch" data-toggle="modal" data-target="#staticBackdrop">Book</button>
          </div>
        </div>
      </div>
      <div  id="cancel">
        <button><a href="index.jsp" style="text-decoration:none;color:white;">cancel</a></button>
      </div>
      
    </div>
  </div>

  <!-- Modal -->
 
  <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <div class="text-right">
            <i class="fa fa-close close" data-dismiss="modal"></i>
          </div>
          <div class="tabs mt-3">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
              <li class="nav-item" role="presentation">
                <a class="nav-link active" id="visa-tab" data-toggle="tab" href="#visa" role="tab" aria-controls="visa" aria-selected="true">
                  <img src="https://i.imgur.com/sB4jftM.png" width="80">
                </a>
              </li>
              <li class="nav-item" role="presentation">
                <a class="nav-link" id="paypal-tab" data-toggle="tab" href="#paypal" role="tab" aria-controls="paypal" aria-selected="false">
                  <img src="https://i.imgur.com/yK7EDD1.png" width="80">
                </a>
              </li>
            </ul>
            <div class="tab-content" id="myTabContent">
              <div class="tab-pane fade show active" id="visa" role="tabpanel" aria-labelledby="visa-tab">
                <div class="mt-4 mx-4">
                  <div class="text-center">
                    <h5>Credit card</h5>
                  </div>
                  <div class="form mt-3">
                    <div class="inputbox">
                      <input type="text" name="cardholder_name" class="form-control" required="required">
                      <span>Cardholder Name</span>
                    </div>
                    <div class="inputbox">
                      <input type="text" name="card_number" class="form-control" required="required">
                      <span>Card Number</span>
                      <i class="fa fa-eye"></i>
                    </div>
                    <div class="d-flex flex-row">
                      <div class="inputbox">
                        <input type="text" name="expiration_date" class="form-control" required="required">
                        <span>Expiration Date</span>
                      </div>
                      <div class="inputbox">
                        <input type="text" name="cvv" class="form-control" required="required">
                        <span>CVV</span>
                      </div>
                    </div>
                    <div class="px-5 pay">
                      <button class="btn btn-success btn-block"><a href="featurenotavail.jsp" style="text-decoration:none;color:white;">Proceed</a></button>
                    </div>
                  </div>
                </div>
              </div>
              
              
              <div class="tab-pane fade" id="paypal" role="tabpanel" aria-labelledby="paypal-tab">
                <div class="px-5 mt-5">
                  <div class="inputbox">
                    <input type="text" name="paypal_email" class="form-control" required="required">
                    <span>Add email id</span>
                  </div>
                  <div class="pay px-5">
                    <button class="btn btn-primary btn-block"><a href="featurenotavail.jsp" style="text-decoration:none;color:white;">Proceed</a></button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>