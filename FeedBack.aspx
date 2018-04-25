<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="FeedBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback Page</title>
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

    <div class="back-image4 pt-1 pb-4" id="form_business">
        <div class="container">
            <div class="row">
                <div class="col-md-2">

                </div>
                <div class="join-container col-xs-12 col-md-8 pt-5 pb-2">
                    <form id="form5" runat="server">
                    <h2 class="text-center text-uppercase mb-4">Please Leave Feedback</h2>
                    <p class="text-center mb-4">
                        Use the form below to send us your concerns. Your comments are utmost importantces to us. 
                    </p>
                  <br />
                
                    <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="FirstName">First Name</label>
                        <asp:TextBox ID="txtFeedbackName" runat="server" Height="30px" placeholder="First Name" Class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="reqFeedbackFirstName" Text="First Name Required" Font-Size="Small" ForeColor="Red" ControlToValidate="txtFeedbackName"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="LastName">Last Name</label>
                        <asp:TextBox ID="txtFeedbackLastName" runat="server" Height="30px" placeholder="Last Name" Class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="reqFeedbackLastName" Text="Last Name Requird" Font-Size="Small" ForeColor="Red" ControlToValidate="txtFeedbackLastName"></asp:RequiredFieldValidator>
                    </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="Email">Email</label>
                            <asp:TextBox ID="txtFeedbackEmail" runat="server" Height="30px" placeholder="example@email.com" Class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="reqFeedbackEmail" Text="Email Required" Font-Size="Small" ForeColor="Red" ControlToValidate="txtFeedbackEmail"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="regEmailValidator" runat="server" Display="Dynamic" ForeColor="Red" Font-Size="Small" ErrorMessage="Please enter a valid email"
                            ControlToValidate="txtFeedbackEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="Phone">Phone</label>
                            <asp:TextBox ID="txtPhoneNumber" runat="server" Height="30px" placeholder="416-111-1111" Class="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="regPhoneNumber" runat="server" Display="Dynamic" ForeColor="Red" Font-Size="Small" ErrorMessage="Please enter a valid Phone Number"
                            ControlToValidate="txtPhoneNumber" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                        </div>
                   </div>

                    <div class="form-group">
                        <label for="subject">Subject</label>
                        <asp:TextBox ID="txtFeedbackSubject" runat="server" Height="30px" placeholder="Enter A subject" Class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="reqSubject" Text="Please add subject" Font-Size="Small" ForeColor="Red" ControlToValidate="txtFeedbackSubject"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                    <label for="feedBackType">Feedback Type</label>
                    <asp:DropDownList ID="ddFeedbackType" runat="server" Class="form-control">
                        <asp:ListItem Value="">...</asp:ListItem>
                        <asp:ListItem Value="1">Bug Report</asp:ListItem>
                        <asp:ListItem Value="2">Design Ease of Use</asp:ListItem>
                        <asp:ListItem Value="3">Effenciency/WorkFlow</asp:ListItem>
                        <asp:ListItem Value="4">Hardware Compatiblity Issue</asp:ListItem>
                        <asp:ListItem Value="5">Theft/Scam Reporting</asp:ListItem>
                        <asp:ListItem Value="6">Fake Ad.</asp:ListItem>                        
                    </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ID="reqFeedbackType" Text="Please Select a Province" Font-Size="Small" ForeColor="Red" ControlToValidate="ddFeedbackType"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="comments">Commnets</label>                    
                        <textarea id="textAreaFeedback" cols="20" rows="10" class="form-control" maxlength="300" runat="server" placeholder="please enter your comments.." onKeyup="countChar(this)"></textarea>
                        <span id="charNum" class="float-right"></span>
                        
                    </div> 
                    
                    <div class="form-group">
                        <fieldset class="form-control" id="RdbContact">
                            <small id="fileHelp" class="form-text text-muted">Please let us know whether or not you would like to be contacted.</small>
                            <br />
                            <asp:RadioButton id="rdbNo" checked="true" Text="No, I don't want to be contacted" runat="server" value="No" GroupName="rdbButton"/>
                            <br />
                            <asp:RadioButton id="rdbYes" Text="Yes, I want someone to contact me" runat="server" value="Yes" GroupName="rdbButton"/>                            
                        </fieldset>
                    </div>                    
                   <asp:Button type="submit" class="btn btn-primary" id="btnFeedbackSubmit" runat="server" Text="Submit" OnClick="btnFeedback_Click"/>
               </form>
                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </div>
        
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://unpkg.co m/scrollreveal/dist/scrollreveal.min.js"></script>
    <script type="text/javascript">
        window.sr = ScrollReveal();
        sr.reveal('#form5', {
            duration: 1000,
            distance: "200px",
            origin: 'top'
        })

        function countChar(chr) {
            var len = chr.value.length;
            if (len >= 300) {
                chr.value = chr.value.subString(0, 300);                
            } else {
                $('#charNum').text(300 - len);

            }
        };
       


    </script>
</body>
</html>
