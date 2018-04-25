<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedBackThankyou.aspx.cs" Inherits="feedBackThankyou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
        <link rel="stylesheet" href="resources/bootstrap-4.0.0/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://bootswatch.com/4/darkly/bootstrap.css" />
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
        <link rel="stylesheet" href="resources/StyleSheet.css" />
</head>
<body>
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
                            <button class="btn  btn-success"  onclick="window.location.href='postAd.aspx'" >PostAd</button>
                        </div>
                    </div>
                </div>
          </nav>       
    </header>

    <div class="container">
        <div>
             <div class="jumbotron my-4">
                <h1 class="display-3">Thank You,</h1>
                <p class="lead">Thank You for your Feedback, We really appriciate your contribution.</p>
                                 
             </div>
        </div>

    </div>
</body>
</html>
