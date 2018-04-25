<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logIn.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
                       <div class="dropdown navbarCol01 ml-auto">
                            <button class=" btn btn-primary" onclick="window.location.href='logIn.aspx'">Login</button> 
                            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              Sign Up
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="signUp.aspx">Sign Up as User</a>
                                <a class="dropdown-item" href="signUpBusiness.aspx">Sign Up as Business</a>                                        
                            </div>
                       </div>                   
                   </div>                 
              </div>
          </nav>  
      </header>
           
        <div class="back-image3 pt-0" id="form_login">
        <div class="container">
            <br />
            <br />
            <br />
            <br />
            
       
            <div class="row">
                <div class="col-md-3">

                </div>
                <div class="col-xs-12 col-md-6 pt-5 pb-2">
                    <br />
                    <br />
                     <div class="join-container">  
                         <br />
                         <br />
                    <h2 class="text-center text-uppercase">
                        Login
                    </h2>
                    <br />

                         <div style="display:none;" class="alert alert-dismissible alert-danger" id="alertlbl" runat="server">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <asp:Label ID="lblLogin" runat="server" Text=""></asp:Label>
                       </div>



                           
                     <form id="form3" runat="server" class="form-horizontal">
                        <div class="form-group">
                            <asp:Label ID="lblEmailLogin" runat="server" class="col-sm-1 control-label"><span class="glyphicon glyphicon-user"></span></asp:Label>
                            <div class="col-sm-12">
                                <asp:TextBox ID="txtEmailLogin" runat="server" Height="30px" placeholder="Enter email address" Class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqEmailLogin" runat="server" ForeColor="Red" Font-Size="Small" ErrorMessage="This field required" ControlToValidate="txtEmailLogin"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="EmailValidator" runat="server" Display="Dynamic" ForeColor="Red" Font-Size="Small" ErrorMessage="Please enter a valid email"
                                    ControlToValidate="txtEmailLogin" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                             <asp:Label ID="lblEnterPass" runat="server" class="col-sm-1 control-label"><span class="glyphicon glyphicon-lock"></span></asp:Label>
                            <div class="col-sm-12">
                                <asp:TextBox ID="txtEnterPass" runat="server" Height="30px" placeholder="Enter Password" Class="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqEnterPass" runat="server" ForeColor="Red" Font-Size="Small" ErrorMessage="This field required" ControlToValidate="txtEnterPass"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="passWordValidator" runat="server" ControlToValidate="txtEnterPass" Font-Size="Small"
                                 ValidationExpression="^[a-zA-z](?=.*\d)(?=.!*)[A-Za-z0-9!*]{8,16}" ErrorMessage="Must begin with letter, has atleast one number, has atleast one uppercase and
                                    lowercase letter, must contain ! or * and must be 8 to 16 charcter." ForeColor="Red" Display="Dynamic" />
                            </div>
                        </div>
                            <div class="col-sm-4">                        
                                <asp:CheckBox ID="ckBoxRememberMe" runat="server"/>
                                <asp:Label ID="lblRemeberMe" runat="server" Text="Remember Me"></asp:Label>                        
                            </div>
                        <br />
                        <br />                  
                                    
                             <div class="col-sm-12 col-md-4">                              
                                  <asp:Button type="submit" class="btn btn-primary btn-md btn-block" id="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>
                             </div>
                     
                    </form>
                         <br />
                     <br />
                     <br />
                     
                    </div>
                    <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                    </div>
                    <div class="col-md-3">
                    </div>

                   
            </div>
        </div>
    </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
    <script type="text/javascript">
        window.sr = ScrollReveal();
        sr.reveal('#form3', {
            duration: 1500            
        },6)
    </script>

</body>
</html>
