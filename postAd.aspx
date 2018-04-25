<%@ Page Language="C#" AutoEventWireup="true" CodeFile="postAd.aspx.cs" Inherits="postAd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Post Ad</title>
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
                            <button class="btn  btn-success"  onclick="window.location.href='postAd.aspx'">PostAd</button>
                        </div>
                    </div>
                </div>
          </nav>
        </header>

         <div class="back-image5 pt-1 pb-4" id="form_business">
        <div class="container">
            <div class="row">
                <div class="col-md-1">

                </div>
                <div class="join-container col-xs-12 col-md-10 pt-5 pb-2">
                    <h2 class="text-center text-uppercase">
                        Post a free ad just in 1 step
                    </h2>
                    <br />
                    <form id="form4" runat="server">
                        <div class="form-group">
                            <label for="AdTitle">Title</label>
                            <asp:TextBox ID="txtAdTitle" runat="server" Height="30px" placeholder="Enter a Title for your Ad" Class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="reqTitle" ErrorMessage="Title for an Ad required." Font-Size="Small" ForeColor="Red" ControlToValidate="txtAdTitle"></asp:RequiredFieldValidator>
                        </div>           
                        <div class="form-group">
                            <label for="Website">Website Name</label>
                            <asp:TextBox ID="txtAdWeb" runat="server" Height="30px" placeholder="www.example.com" Class="form-control"></asp:TextBox>                 
                            <asp:RegularExpressionValidator ID="WebValidator" runat="server" Display="Dynamic" ForeColor="Red" Font-Size="Small" ErrorMessage="Please enter a valid Website Name"
                            ControlToValidate="txtAdWeb" ValidationExpression="([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                        </div>
                        <%--<div class="form-group">                        
                                    <label for="Ad type">Ad Type</label>
                                    <fieldset class="form-control" id="RdbContact">                            
                                    <asp:RadioButton id="rdbOffering" checked="true" Text="I am Providing Service" runat="server" value="Providing service" GroupName="rdbButton"/>
                                    <br />
                                    <asp:RadioButton id="rdbIWant" Text="I am Looking for a service" runat="server" value="Looking for service" GroupName="rdbButton"/>                            
                                </fieldset>
                        </div>--%>
                        <div class="form-group">
                            <label for="catagory">Catagory</label>
                            <asp:DropDownList ID="ddCatagory" runat="server" Class="form-control">
                                <asp:ListItem Value="">...</asp:ListItem>
                                <asp:ListItem Value="1">Plumming</asp:ListItem>
                                <asp:ListItem Value="2">Electrician</asp:ListItem>
                                <asp:ListItem Value="3">Gardaning</asp:ListItem>
                                <asp:ListItem Value="4">Computer Technician</asp:ListItem>
                                <asp:ListItem Value="5">Cell phone Repair</asp:ListItem>                          
                            </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ID="reqCatagory" ErrorMessage="Please Select a field" Font-Size="Small" ForeColor="Red" ControlToValidate="ddCatagory"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="description">Description</label>                    
                                <textarea cols="20" rows="10" class="form-control" maxlength="1000" runat="server" id="adDescription" placeholder="Please enter the Description of the Add" onKeyup="countChar(this)"></textarea>
                                <span class="float-right" id="charNum"></span>
                                <asp:RequiredFieldValidator runat="server" ID="reqDescription" Font-Size="Small" ForeColor="Red" ControlToValidate="adDescription" ErrorMessage="Description Must be Entered"></asp:RequiredFieldValidator>
                            </div> 
                        <div class="col-md-6">
                           <div class="form-group">
                                <label for="exampleInputFile">File input</label>
                                <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" Width="423px" />
&nbsp;<small id="fileHelp" class="form-text">Please add atleast one image.</small>
                            </div>
                        </div>
                    <div class="row text-center">
                        <div class="col-lg-3 col-md-6 mb-4">
                            <div class="card">
                                <img class="card-img-top" src="http://placehold.it/500x325" alt="imgname" />
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 mb-4">
                            <div class="card">
                                <img class="card-img-top" src="http://placehold.it/500x325" alt="imgname" />
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 mb-4">
                            <div class="card">
                                <img class="card-img-top" src="http://placehold.it/500x325" alt="imgname" />
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 mb-4">
                            <div class="card">
                                <img class="card-img-top" src="http://placehold.it/500x325" alt="imgname" />
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 mb-4">
                            <div class="card">
                                <img class="card-img-top" src="http://placehold.it/500x325" alt="imgname" />
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 mb-4">
                            <div class="card">
                                <img class="card-img-top" src="http://placehold.it/500x325" alt="imgname" />
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 mb-4">
                            <div class="card">
                                <img class="card-img-top" src="http://placehold.it/500x325" alt="imgname" />
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 mb-4">
                            <div class="card">
                                <img class="card-img-top" src="http://placehold.it/500x325" alt="imgname" />
                            </div>
                        </div>
                    </div>            
            
                    <asp:Button type="submit" class="btn btn-primary" id="btnPostAd" runat="server" Text="Post Free Ad" OnClick="btnPostAd_Click"/>
        </form>
                </div>
                <div class="col-md-1">
             
                </div>
            </div>
        </div>
    </div>
    
    
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
    <script type="text/javascript">
        window.sr = ScrollReveal();
        sr.reveal('#form4', {
            duration: 1000
            
        },50)

        function countChar(chr) {
            var len = chr.value.length;
            if (len >= 1000) {
                chr.value = chr.value.subString(0, 1000);
            } else {
                $('#charNum').text(1000 - len);

            }
        };




    </script>
</body>
</html>
