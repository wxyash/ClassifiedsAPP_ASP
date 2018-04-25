<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Home</title>
	 <%--<link rel="stylesheet" href="resources/bootstrap-4.0.0/dist/css/bootstrap.min.css" />--%>
     <link rel="stylesheet" href="resources/bootstrap-theme-darkly.css" />
     <link rel="stylesheet" href="resources/StyleSheet.css" />
</head>
<body runat="server">
    <header>        
        <nav class="navbar navbar-expand-md navbar-dark bg-primary fixed-top">
            <div class="container">
                 <a href="#" class="navbar-brand">Company Name</a>
                <button class ="navbar-toggler" data-toggle ="collapse" data-target =".navbarCol01">
                    <span class="navbar-toggler-icon"></span>
                </button>
                   <div class="collapse navbar-collapse navbarCol01">
                        <ul class ="nav navbar-nav ml-3">
                             <li class="nav-item"><a class="nav-link" href="index.aspx">Home</a></li>
                             <li class="nav-item"><a class="nav-link" href="AboutUs.aspx">About Us</a></li>
                             <li class="nav-item"><a class="nav-link" href="FeedBack.aspx">FeedBack</a></li>
                         </ul>
                    </div>
                    <div class="collapse navbar-collapse navbarCol01 ns">
                        <div class="nav navbar-nav ml-auto d-inline-block">
                            <asp:Label ID="lblFirstName" runat="server" Text="FirstName" ></asp:Label>
                                &nbsp;
                            <asp:Label ID="lblLastName" runat="server" Text="LastName"></asp:Label>
                        </div>
                        <div class="dropdown ml-auto">
                            <button runat="server" class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Account Details
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="EditAccountBusiness.aspx">Edit Account</a>
                                <a class="dropdown-item" href="#">View My Current Ad</a>
                                <a class="dropdown-item" href="#">View Saved Ad</a>  
                            </div>
                        </div>
                        <div class="nav navbar-nav ml-auto">
                            <form runat="server">
                            <asp:LinkButton runat="server" OnClick="btn_LogOut_Click" ID="btn_LogOut"  class="btn btn-warning" > Logout</asp:LinkButton>
                             <asp:LinkButton OnClick="btn_LogIn_Click"  class="btn btn-warning" ID="btnLogin" runat="server">Login</asp:LinkButton>
                            
                             &nbsp;
                             &nbsp;
                            <button class="btn  btn-success"  onclick="window.location.href='postAd.aspx'">PostAd</button>
                        </div>
                    </div>
                </div>
          </nav>
        
            <div class="navbar navbar-expand-md bg-dark">
                <div class="container">
                <div class="form-group navbarCol01">
            <br>
                <div class="container form-inline">
                    <input class="form-control mr-sm-2" style="margin-left:15em; padding-right:10em;" type="text" placeholder="Search">
                    <button type="submit" class="btn btn-md btn-secondary">Search</button>
                </div>
          </div>
        </div>
        </div>
        </header>
        
        <!--Image Slider -->
        <div class="container">
            &nbsp;<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="resources/images/painter1.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="resources/images/plumber2.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="resources/images/electrician1.jpg" alt="Third slide">
                    </div>
                </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
            </div>
        </div>
    <!-- Welcome Message -->    
    <div class="container">
            <div class="jumbotron my-4">
                <h1 class="display-3">A Warm Welcome!</h1>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, ipsam, eligendi, in quo sunt possimus non incidunt odit vero aliquid similique quaerat nam nobis illo aspernatur vitae fugiat numquam repellat.</p>
                <a href="#" class="btn btn-primary btn-lg">Call to action!</a>
            </div>
        <!-- Card-Columns -->
            <div class="container">

            <div class="card-columns">

              <div class="card" id="card1">
                <div id="carouselControl1" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#carouselControl1" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselControl1" data-slide-to="1"></li>
                    <li data-target="#carouselControl1" data-slide-to="2"></li>
                  </ol>
                  <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                      <img style:"width=100%;" src="resources/images/painter1.jpg" alt="First slide">
                      <div class="carousel-caption d-none d-md-block">
                      <h5>Heading</h5>
                          <br />
                      <p>Info</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img style:"width=100%;" src="resources/images/electrician1.jpg" alt="Second slide">
                      <div class="carousel-caption d-none d-md-block">
                      <h5>Heading</h5>
                      <p>Info</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img style:"width=100%;" src="resources/images/plumber2.jpg" alt="Third slide">
                      <div class="carousel-caption d-none d-md-block">
                      <h5>Heading</h5>
                      <p>Info</p>
                      </div>
                    </div>
                  </div>
                  <a class="left carousel-control" href="#carouselControl1" role="button" data-slide="prev">
                    <span class="icon-prev" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="right carousel-control" href="#carouselControl1" role="button" data-slide="next">
                    <span class="icon-next" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
                <div class="card-body">
                    <h4 class="card-title">Ad title</h4>
                    <p class="card-text">Description of Ad goes here.</p>
                </div>
                <div class="card-footer">
                    <a href="viewAd.aspx" class="btn btn-primary">Find Out More!(InfoPage)</a>
                </div>
              </div>


             <div class="card" id="card2">
                <div id="carouselControl2" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#carouselControl2" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselControl2" data-slide-to="1"></li>
                    <li data-target="#carouselControl2" data-slide-to="2"></li>
                  </ol>
                  <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                      <img style="width=100%;" src="resources/images/painter1.jpg" alt="First slide">
                      <div class="carousel-caption d-none d-md-block">
                      <h5>Heading</h5>
                      <p>Info</p>
                      </div>

                    </div>
                    <div class="carousel-item">
                      <img style="width=100%;" src="resources/images/electrician1.jpg" alt="Second slide">
                      <div class="carousel-caption d-none d-md-block">
                      <h5>Heading</h5>
                      <p>Info</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img style:"width=100%;" src="resources/images/plumber2.jpg" alt="Third slide">
                      <div class="carousel-caption d-none d-md-block">
                      <h5>Heading</h5>
                      <p>Info</p>
                      </div>
                    </div>
                  </div>
                  <a class="left carousel-control" href="#carouselControl2" role="button" data-slide="prev">
                    <span class="icon-prev" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="right carousel-control" href="#carouselControl2" role="button" data-slide="next">
                    <span class="icon-next" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>

                <div class="card-body">
                    <h4 class="card-title">Ad title</h4>
                    <p class="card-text">The description of the ad goes here.</p>
                </div>
                <div class="card-footer">
                    <a href="viewAd.aspx" class="btn btn-primary">Find Out More!(Info Page)</a>
                </div>
              </div>

              <div class="card" id="card3">
                 <div id="carouselControl3" class="carousel slide" data-ride="carousel">
                   <ol class="carousel-indicators">
                     <li data-target="#carouselControl3" data-slide-to="0" class="active"></li>
                     <li data-target="#carouselControl3" data-slide-to="1"></li>
                     <li data-target="#carouselControl3" data-slide-to="2"></li>
                   </ol>
                   <div class="carousel-inner" role="listbox">
                     <div class="carousel-item active">
                       <img style="width=100%;" src="resources/images/painter1.jpg" alt="First slide">
                       <div class="carousel-caption d-none d-md-block">
                       <h5>Heading</h5>
                       <p>Info</p>
                       </div>

                     </div>
                     <div class="carousel-item">
                       <img style="width=100%;" src="resources/images/electrician1.jpg" alt="Second slide">
                       <div class="carousel-caption d-none d-md-block">
                       <h5>Heading</h5>
                       <p>Info</p>
                       </div>
                     </div>
                     <div class="carousel-item">
                       <img style="width=100%;" src="resources/images/plumber2.jpg" alt="Third slide">
                       <div class="carousel-caption d-none d-md-block">
                       <h5>Heading</h5>
                       <p>Info</p>
                       </div>
                     </div>
                   </div>
                   <a class="left carousel-control" href="#carouselControl3" role="button" data-slide="prev">
                     <span class="icon-prev" aria-hidden="true"></span>
                     <span class="sr-only">Previous</span>
                   </a>
                   <a class="right carousel-control" href="#carouselControl3" role="button" data-slide="next">
                     <span class="icon-next" aria-hidden="true"></span>
                     <span class="sr-only">Next</span>
                   </a>
                 </div>

                 <div class="card-body">
                     <h4 class="card-title">Ad title</h4>
                     <p class="card-text">Description of the Ad goes here.</p>
                 </div>
                 <div class="card-footer">
                     <a href="viewAd.aspx" class="btn btn-primary">Find Out More!(InfoPage)</a>
                 </div>
               </div>
            </div>
            </div>
        </div>

    <!--Other Ad section -->
    
    <div class="container">
         <hr />

          <h1>Other Ads</h1>

          <table class="table">
            <caption>List of users</caption>
          <thead>
            <tr>
              <th scope="col">Image</th>
              <th scope="col">Name</th>
              <th scope="col">Location</th>
              <th scope="col">Expertise</th>
              <th scope="col">Contact</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><asp:Image ID="Image1" runat="server"  style="width:300px;height:250px;" /></td>
              <td><asp:Label ID="lbl_Row1_name" runat="server" Text=""></asp:Label></td>
              <td><asp:Label ID="lbl_Row1_location" runat="server" Text=""></asp:Label></td>
              <td><asp:Label ID="lbl_Row1_title" runat="server" Text=""></asp:Label></td>
              <td><asp:HyperLink ID="HyperLink1" CssClass="btn btn-primary btn-info" runat="server">Find Out More!</asp:HyperLink></td>
            </tr>
              <tr>
              <td><asp:Image ID="Image2" runat="server"  style="width:300px;height:250px;" /></td>
              <td><asp:Label ID="lbl_Row2_name" runat="server" Text=""></asp:Label></td>
              <td><asp:Label ID="lbl_Row2_location" runat="server" Text=""></asp:Label></td>
              <td><asp:Label ID="lbl_Row2_title" runat="server" Text=""></asp:Label></td>
             <td><asp:HyperLink ID="HyperLink2" CssClass="btn btn-primary btn-info" runat="server">Find Out More!</asp:HyperLink></td>
            </tr>
              <tr>
              <td><asp:Image ID="Image3" runat="server"  style="width:300px;height:250px;" /></td>
              <td><asp:Label ID="lbl_Row3_name" runat="server" Text=""></asp:Label></td>
              <td><asp:Label ID="lbl_Row3_location" runat="server" Text=""></asp:Label></td>
              <td><asp:Label ID="lbl_Row3_title" runat="server" Text=""></asp:Label></td>
              <td><asp:HyperLink ID="HyperLink3"  CssClass="btn btn-primary btn-info" runat="server">Find Out More!</asp:HyperLink></td>
            </tr>
            
          </tbody>
        </table>
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
    <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
    <script type="text/javascript">
        window.sr = ScrollReveal();
        sr.reveal('.card-columns', {
            duration: 1000,
            distance: "200px",
            origin: 'left'
        })




    </script>
</body>
   
</html>
