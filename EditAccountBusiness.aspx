<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditAccountBusiness.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Account Details</title>
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

    <form id="form5" runat="server">
        <div class="pt-1 pt-4">       
            <div class="join-container container col-xs-12">
                <h2 class="text-center text-uppercase">
                            Edit Account 
                </h2>
                <div class="row">
                    
                    <div class="col-md-6 pt-2 pb-2">
                        
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="BusinessID">Business ID</label>
                                <asp:TextBox ID="txtBusinessID" runat="server" Height="30px" placeholder="Enter Business ID"   Class="form-control"></asp:TextBox></div>
                            <div class="form-group col-md-6">
                                <label for="BusinessName">Business Name</label>
                                <asp:TextBox ID="txtBusinessName" runat="server" Height="30px" placeholder="Enter Business Name" Class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="reqBusinessName" Text="Business Name Required" Font-Size="Small" ForeColor="Red" ControlToValidate="txtBusinessName"></asp:RequiredFieldValidator>
                            </div>                
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="firstName">First Name</label>
                                <asp:TextBox ID="txtFirstName" runat="server" Height="30px" placeholder="Enter First Name" Class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="reqFirstName" Text="First Name Required" Font-Size="Small" ForeColor="Red" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="lastName">Last Name</label>
                                <asp:TextBox ID="txtLastName" runat="server" Height="30px" placeholder="Enter Last Name" Class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="reqLastName" Text="Last Name Required" Font-Size="Small" ForeColor="Red" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" Height="30px" placeholder="example@email.com" Class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="reqEmail" Text="Email Required" Font-Size="Small" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="BusinessEmailValidator" runat="server" Display="Dynamic" ForeColor="Red" Font-Size="Small" ErrorMessage="Please enter a valid email"
                            ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div><div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="password1">Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" Height="30px" placeholder="Enter Password" Class="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="reqPassword" Text="Enter Password" Font-Size="Small" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                            <br />
                                <asp:RegularExpressionValidator ID="BusinessPassWordValidator" runat="server" ControlToValidate="txtPassWord" Font-Size="Small"
                                ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}" ErrorMessage="Must begain with letter, has atleast one number, has atleast one uppercase and
                                lowercase letter, must contain ! or * and must be 8 to 16 charcter." ForeColor="Red" Display="Dynamic" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="password2">Confirm Password</label>
                                <asp:TextBox ID="txtConfirmPassword" runat="server" Height="30px" placeholder="Re-Enter Password" Class="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="reqConfirmPassword" Text="Re-Enter Password" Font-Size="Small" ForeColor="Red" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
                                <br />
                                <asp:CompareValidator runat="server" ID="cmpBusPassword" Display="Dynamic" ForeColor="Red" ErrorMessage="Password dosen't match, please re enter password" Font-Size="Small" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"></asp:CompareValidator>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 pt-2 pb-2">
                        
                        <div class="form-group">
                            <label for="inputAddress">Address</label>
                            <asp:TextBox ID="txtAddress" runat="server" Height="30px" placeholder="1234 Main Street" Class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="reqAddress" Text="Address Required" Font-Size="Small" ForeColor="Red" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="inputAddress2">Address 2</label>
                            <asp:TextBox ID="txtAddress2" runat="server" Height="30px" placeholder="Apartment, studio, or floor" Class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-5">
                                <label for="inputCity">City</label>
                                <asp:TextBox ID="txtCity" runat="server" Height="30px" placeholder="Toronto" Class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="reqCity" Text="Name of the City required" Font-Size="Small" ForeColor="Red" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
                            </div>
                        <div class="form-group col-md-4">
                            <label for="inputState">Province</label>
                                <asp:DropDownList ID="ddProvince" runat="server" Class="form-control">
                                    <asp:ListItem Value="">...</asp:ListItem>
                                    <asp:ListItem Value="1">Alberta</asp:ListItem>
                                    <asp:ListItem Value="2">British Columbia</asp:ListItem>
                                    <asp:ListItem Value="3">Monitoba</asp:ListItem>
                                    <asp:ListItem Value="4">New Brunswich</asp:ListItem>
                                    <asp:ListItem Value="5">Newfoundland & Labrador</asp:ListItem>
                                    <asp:ListItem Value="6">Nova Scotia</asp:ListItem>
                                    <asp:ListItem Value="7">Northwest Territories</asp:ListItem>
                                    <asp:ListItem Value="8">Nunavut</asp:ListItem>
                                    <asp:ListItem Value="9">Ontario</asp:ListItem>
                                    <asp:ListItem Value="10">Prince Edward Island</asp:ListItem>
                                    <asp:ListItem Value="11">Quebec</asp:ListItem>
                                    <asp:ListItem Value="12">Saskatchewan</asp:ListItem>
                                    <asp:ListItem Value="13">Yukon</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ID="reqProvince" Text="Please Select a Province" Font-Size="Small" ForeColor="Red" ControlToValidate="ddProvince"></asp:RequiredFieldValidator>
                             </div>
                           <div class="form-group col-md-3">
                                <label for="inputZip">Postal Code</label>
                                <asp:TextBox ID="txtPostalCode" runat="server" Height="30px" placeholder="M1M1X2" Class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="reqPostalCode" Text="Postal Code Required" Font-Size="Small" ForeColor="Red" ControlToValidate="txtPostalCode"></asp:RequiredFieldValidator>
                            </div>
                      </div>
                        <br />
                     
                        <div class="row">
                        <div class="col-md-3">

                        </div>
                        <div class="col-md-6">
                            <asp:Button type="submit" class="btn btn-success btn-md btn-block" id="btnEditBusiness" runat="server" Text="Edit" OnClick="btnEditBusiness_Click"/>
                        </div>
                        <div class="col-md-3">
                        </div>
                        
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    
    <div>
    
    </div>
    

    </form>
    <script>
        document.getElementById("txtBusinessID").disabled = true;
    </script>
</body>
</html>
