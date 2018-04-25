<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewAd.aspx.cs" Inherits="viewAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Ad</title>
	 <link rel="stylesheet" href="resources/bootstrap-4.0.0/dist/css/bootstrap.min.css" />
     <link rel="stylesheet" href="resources/bootstrap-theme-materia.css" />
     <link rel="stylesheet" href="resources/StyleSheet.css" />
    <style type="text/css">
        .auto-style1 {
            width: 548px;
        }
        .auto-style2 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -webkit-box-flex: 0;
            -ms-flex: 0 0 58.3333333333%;
            flex: 0 0 58.3333333333%;
            max-width: 58.3333333333%;
            left: 1px;
            top: 18px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style4 {
            margin-left: 520px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                            <h5>Welcome,&nbsp; </h5>
                            <asp:Label ID="lblFirstName" runat="server" Text="FirstName" ></asp:Label>
                                &nbsp;
                            <asp:Label ID="lblLastName" runat="server" Text="LastName"></asp:Label>
                        </div>
                        <div class="nav navbar-nav ml-auto">
                            <button class="btn btn-warning ">LogOut</button>
                             &nbsp;
                             &nbsp;
                            <button class="btn  btn-success">PostAd</button>
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
    <br />
    <br />

    <div class="container">
  <div class="row">
    <div class="col-md-5">
        <div id="carouselControl4" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
                <asp:Image class="d-block w-100" ID="Image1" style="height:250px;width:300px;" runat="server" AlternateText="First Slide" />
            </div>
            <div class="carousel-item">
              <asp:Image class="d-block w-100" ID="Image2" style="height:250px;width:300px;" runat="server"  AlternateText="Second Slide" />
            </div>
            <div class="carousel-item">
              <asp:Image class="d-block w-100" ID="Image3" style="height:250px;width:300px;" runat="server" AlternateText="Third Slide" />
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselControl4" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselControl4" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
    </div>
    <div class="auto-style2">

      <table class="table">
      <tr>
        <td class="auto-style1">Title :</td>
        <td>
            <asp:Label ID="lblTitle" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
        <td class="auto-style1">Business Name: </td>
        <td>
            <asp:Label ID="lblBizName" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
        <td class="auto-style1">Service Type:</td>
        <td>
            <asp:Label ID="lblServiceType" runat="server"></asp:Label>
          </td>
      </tr>
          <tr>
        <td class="auto-style1">Location:</td>
        <td>
            <asp:Label ID="lblLocation" runat="server"></asp:Label>
              </td>
      </tr>
      </table>


    </div>
  </div>
  <br><br><br>
        <div class="jumbotron">
            <h2 class="auto-style4">Description</h2>
            <p class="auto-style4">
                <asp:Label ID="lblDescription" runat="server"></asp:Label>
            </p>
            
        
    </div>
</div>
    
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>    
</body>
</html>
