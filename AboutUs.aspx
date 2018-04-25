﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
     <link rel="stylesheet" href="resources/bootstrap-4.0.0/dist/css/bootstrap.min.css" />
     <link rel="stylesheet" href="https://bootswatch.com/4/darkly/bootstrap.css" />
     <link rel="stylesheet" href="resources/StyleSheet.css" />
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-primary fixed-top">
            <div class="container">               
                 <a href="#" class="navbar-brand">get!tDone</a>                  
                <button class ="navbar-toggler" data-toggle ="collapse" data-target =".navbarCol01">
                    <span class="navbar-toggler-icon"></span>                  
                </button>
                   <div class="collapse navbar-collapse navbarCol01">                       
                        <ul class ="nav navbar-nav ml-3">
                             <li class="nav-item"><a class="nav-link" href="index.aspx">Home</a></li>
                             <li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
                             <li class="nav-item"><a class="nav-link" href="FeedBack.aspx">FeedBack</a></li>                             
                         </ul>                         
                    </div>
                    <div class="collapse navbar-collapse navbarCol01">
                        <div class="nav navbar-nav ml-auto d-inline-block ns">
                            <h5>Welcome,&nbsp; </h5>
                            <asp:Label ID="lblFirstName" runat="server" Text="FirstName" ></asp:Label>
                                &nbsp;
                            <asp:Label ID="lblLastName" runat="server" Text="LastName"></asp:Label>                            
                        </div>
                        <div class="nav navbar-nav ml-auto">
                            <button class="btn btn-warning">LogOut</button>
                             &nbsp;
                             &nbsp;
                            <button class="btn btn-success"  onclick="window.location.href='postAd.aspx'">PostAd</button>
                        </div>
                    </div>
                </div>
          </nav>
        </header>

    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron my-4">
                <h1 class="display-3">About Us</h1>
                <p class="lead">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Our group decided to make a web application that will not only help businesses get to their customer but also get the customers to the businesses.
                    Our web application allows businesses to provide customers accurate information and location service, wherein the customer can see the location of
                    the closest service from them. Our mission is to close the distance between business and client, to better serve each other and to deliver a product where everyone will benefit.</p>
             </div>

            <div class="jumbotron">
                <h1 class="display-3 text-center">Team</h1>
                <br />
            <div class="row text-center">
            

               
                </div>
                <div class="row">
                    <div class="col-md-2"></div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card">
                        <img class="card-img-top" src="http://placehold.it/500x325" alt="">
                            <div class="card-body">
                                <h4 class="card-title">Yash Thanki</h4>
                                <h6>101093832</h6>
                                <hr />
                                <h6>yash.thanki@georgebrown.ca</h6>
                                <hr />
                                <p>I love working on the front end. Especially using jquery and animate the divs.</p>
                            </div>
                    </div>
                </div>
                 <div class="col-lg-4 col-md-6 mb-4">
                     <div class="card">
                        <img class="card-img-top" src="http://placehold.it/500x325" alt="">
                            <div class="card-body">
                                <h4 class="card-title">Arifur Rahman</h4>
                                <h6>100883999</h6>
                                <h6>arifur.rahman@georgebrown.ca</h6>
                                <hr />
                                <p>Second Year in software development Program in george brown college, I love to code and come up with new and unique ideas.</p>
                            </div>
                    </div>
                    </div>
                </div>
                    <div class="col-md-2"></div>
            </div>
                
          </div>
        </div>
    </form>
          <footer id="myFooter">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                   
                </div>
                <div class="col-md-2">
                     <ul>
                        <li>Arifur Rahman </li>
                        <li>100883999</li>
                    </ul>
                </div>
                <div class="col-md-2">
                   <ul>
                        <li>Yash Thanki</li>
                        <li>101093832</li>
                    </ul>
                </div>
                <div class="col-md-4">
                   
                </div>
           </div>
        </div>
    </footer>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>