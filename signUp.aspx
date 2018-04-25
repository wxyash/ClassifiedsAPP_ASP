<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signUp.aspx.cs" Inherits="signUp" %>

   
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up as User</title>
     <link rel="stylesheet" href="resources/bootstrap-4.0.0/dist/css/bootstrap.min.css" />    
     <link rel="stylesheet" href="https://bootswatch.com/4/darkly/bootstrap.css" />
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

  


    <!--User -->
     
    <div class="back-image2 pt-5 pb-4" id="form_user">
        <div class="container" >
            <div class="row">
                <div class="col-md-3">
                 
                </div>
                <div class="col-xs-12 col-md-6 pt-5 pb-2">
                        <br />
                          <br />
                        
                    <div class="join-container" style="padding:5%;">
                         
                         <br />
                          <br />
                    <h2 class="text-center text-uppercase">
                       Please Signup as user
                    </h2>
                    <br />


                        <div style="display:none;" class="alert alert-dismissible alert-danger" id="alertlbl" runat="server">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <asp:Label ID="lblsignUp" runat="server" Text="" ></asp:Label>
                       </div>


                        
                     <form id="form2" runat="server">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="user_firstName">First Name</label>
                                <asp:TextBox ID="txtUserFirstName" runat="server" Height="30px" placeholder="Enter First Name" Class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="reqUserFirstName" Text="First Name Required" Font-Size="Small" ForeColor="Red" ControlToValidate="txtUserFirstName"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="user_lastName">Last Name</label>
                                <asp:TextBox ID="txtUserLastName" runat="server" Height="30px" placeholder="Enter Last Name" Class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="reqUserLastName" Text="Last Name Required" Font-Size="Small" ForeColor="Red" ControlToValidate="txtUserLastName"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_email">Email</label>
                            <asp:TextBox ID="txtUserEmail" runat="server" Height="30px" placeholder="example@email.com" Class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="reqUserEmail" Text="Email Requird" Font-Size="Small" ForeColor="Red" ControlToValidate="txtUserEmail"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="EmailValidator" runat="server" Display="Dynamic" ForeColor="Red" Font-Size="Small" ErrorMessage="Please enter a valid email"
                            ControlToValidate="txtUserEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="user_password1">Password</label>
                                <asp:TextBox ID="txtUserPassword" runat="server" Height="30px" placeholder="Enter Password" Class="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="reqUserPassword" Text="Enter Password" Font-Size="Small" ForeColor="Red" ControlToValidate="txtUserPassword"></asp:RequiredFieldValidator> 
                                <br />
                                <asp:RegularExpressionValidator ID="userPassWordValidator" runat="server" ControlToValidate="txtUserPassWord" Font-Size="Small"
                                     ValidationExpression="^[a-zA-z](?=.*\d)(?=.!*)[A-Za-z0-9!*]{8,16}" ErrorMessage="Must begain with letter, has atleast one number, has atleast one uppercase and
                                        lowercase letter, must contain ! or * and must be 8 to 16 charcter." ForeColor="Red" Display="Dynamic" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="user_password2">Confirm Password</label>
                                <asp:TextBox ID="txtUserConfirmPassword" runat="server" Height="30px" placeholder="Re-Enter Password" Class="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="reqUserConfirmPassword" Text="Re-Enter Password" Font-Size="Small" ForeColor="Red" ControlToValidate="txtUserConfirmPassword"></asp:RequiredFieldValidator>
                                <br />
                                <asp:CompareValidator runat="server" ID="cmpPassword" Display="Dynamic" ForeColor="Red" ErrorMessage="Password dosen't match, please re enter password" Font-Size="Small" ControlToCompare="txtUserPassword" ControlToValidate="txtUserConfirmPassword"></asp:CompareValidator>
                            </div>            
                        </div>
            
                        <asp:Button type="submit" class="btn btn-success" id="btnUserRegister" runat="server" Text="Register" OnClick="btnUserRegister_Click"/>
                        
                         
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
        sr.reveal('#form2', {
            duration: 1000,
            distance: "200px",
            origin: 'left'
        })



    </script>
   
    </body>
</html>
