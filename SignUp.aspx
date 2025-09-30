<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign Up</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .auto-style1 {
            width: auto;
            height: 24px;
            position: absolute;
            top: 1096px;
            bottom: 45px;
            left: 0;
            right: 0;
            margin: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                     <a class="navbar-brand" href="Default.aspx"><span>
                            <img alt="Logo" src="Images/logo.png" height="30" /></span>Gamer Market</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="About Us.aspx">About Us</a></li>
                            <li><a href="Contact Us.aspx">Contact Us</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Products.aspx">All Products</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">PC Games</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="Products.aspx">Action</a></li>
                                    <li><a href="Products.aspx">Arcade</a></li>
                                    <li><a href="Products.aspx">Simulation</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">PS4 Games</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="Products.aspx">Action</a></li>
                                    <li><a href="Products.aspx">Arcade</a></li>
                                    <li><a href="Products.aspx">Simulation</a></li>
                                </ul>
                            </li>
                            <li class="active"><a href="SignUp.aspx">Sign Up</a></li>
                            <li><a href="SignIn.aspx">Sign In</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Sign Up -->

        <div class="center-page">
        
            <label class="col-xs-11">Username</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbUname" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
            </div>
            <asp:Panel ID="Panel1" runat="server">
                 <label class="col-xs-11">Enter Mobile Number</label>
                <div class="col-xs-11"> 
                 <asp:TextBox ID="tbMobile" runat="server" Class="form-control" placeholder="Mobile Number"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="tbMobile" ErrorMessage="Enter Mobile Number for OTP Verification" ForeColor="Red" 
                ValidationExpression="[0-9]{10}" Visible="true"></asp:RegularExpressionValidator>
                    </div>
            <div class="col-xs-11 space-vert">
                <asp:Button ID="btnSend" runat="server" Class="btn btn-success" Text="Send" OnClick="btnSend_Click" />
               </div>
                    </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                 <label class="col-xs-11">Enter Otp</label>
                <div class="col-xs-11"> 
                 <asp:TextBox ID="tbOtp" runat="server" Class="form-control" placeholder="Enter Otp"></asp:TextBox>
                    </div>
            <div class="col-xs-11 space-vert">
                <asp:Button ID="btnVerify" runat="server" Class="btn btn-success" Text="Verify" OnClick="btnVerify_Click" />
               </div>
                    </asp:Panel>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>


            <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="Password" TextMode="Password" ></asp:TextBox>
                
            </div>

            <label class="col-xs-11">Confirm Password</label>
            <div class="col-xs-11">
               
                <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                  <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="tbPass" ControlToValidate="tbCPass" 
                ErrorMessage="password not same" ForeColor="red"></asp:CompareValidator>
            </div>

            <label class="col-xs-11">Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbName" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
            </div>

            <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
            </div>

            <div class="col-xs-11 space-vert">
                <asp:Button ID="btSignup" runat="server" Class="btn btn-success" Text="Sign Up" OnClick="btSignup_Click" />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>

</div>
        <!-- Sign Up -->

        <!--- Footer  -->

        <hr />

  <footer class="auto-style1">
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy; 2019 GamerMarket.com &middot; <a href="Default.aspx">Home</a> &middot; <a href="About Us.aspx">About Us</a> &middot; <a href="Contact Us.aspx">Contact Us</a> &middot; <a href="#">Products</a></p>
        </div>
    </footer>
        <!--- Footer -->


    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
