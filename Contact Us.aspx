<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact Us.aspx.cs" Inherits="Contact_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Contact Us</title>
  
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
 
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
                            <li>
                                <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                    Cart <span class="badge" id="pCount" runat="server"></span>
                                </button>
                            </li>
                            <li id="btnSignup" runat="server"><a href="SignUp.aspx">Sign Up</a></li>
                            <li id="btnSignin" runat="server"><a href="SignIn.aspx">Sign In</a></li>
                          
                        </ul>
                    </div>
                </div>
            </div>
        </div>
         <div class="container">
        <h1>
            Contact Us
        </h1>
             <div class="auto-style1">
        <label class="col-xs-11">Address:</label>
            <div class="col-xs-11">
                <label class="col-xs-11">5th floor, Google Headquartes, Silicon Valley</label>
            </div>
            
                 <label class="col-xs-11">Email us at:</label>
            <div class="col-xs-11">
                <label class="col-xs-11">adeshingale66@gmail.com</label>
            </div><br />
                 <br />

            <label class="col-xs-11">Contact Us at:</label>
            <div class="col-xs-11">
                <label class="col-xs-11">9518393358</label>
            </div><br />
                 <br /> 
                 <label class="col-xs-11">Your Name:</label>
            <div class="col-xs-11">
                     <asp:TextBox ID="tbname" runat="server" Class="form-control" placeholder="Your Name" Width="360px"></asp:TextBox>
            </div><br />
                 <br /> 

             <label class="col-xs-11">Your Email:</label>
            <div class="col-xs-11">
                     <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email" Width="360px"></asp:TextBox>
            </div>
                 <br />
                <label class="col-xs-11">Mobile Number:</label> 
                 <div class="col-xs-11">
                     <asp:TextBox ID="tbMobile" runat="server" Class="form-control" placeholder="Mobile Number" Width="360px"></asp:TextBox>
                 </div>
                 <br /> 
                 <br />

                 
                  <label class="col-xs-11">Leave a Comment for Us:</label>
            <div class="col-xs-11">
                     <asp:TextBox ID="tbComment" runat="server" Class="form-control" TextMode="MultiLine" placeholder="Your Comment" Width="360px"></asp:TextBox>
            </div><br />
                 <br /> 
                 <div class="col-xs-11 space-vert">
                     <asp:Button runat="server" ID="btnSubmit" text="Submit" />
                     <asp:Label runat="server" ID="lblMsg"></asp:Label>
                     </div>
                 </div>
             </div>
             </form>

    <hr />

     <footer class="auto-style2">
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy; 2019 GamerMarket.com &middot; <a href="Default.aspx">Home</a> &middot; <a href="About Us.aspx">About Us</a> &middot; <a href="Contact Us.aspx">Contact Us</a> &middot; <a href="Products.aspx">Products</a></p>
        </div>
    </footer>

    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

