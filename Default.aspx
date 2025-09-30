<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>
   <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "/Cart.aspx";
            });
        });
    </script>
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
                            <li>
                                <asp:Button ID="btnSignOut" runat="server" Class="btn btn-default navbar-btn" Text="Sign out" OnClick="btnSignOut_Click" />
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <!--- Carousel -->

            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="Images/The Witcher 3.jpg" alt="...">
                        <div class="carousel-caption">
                            <h3>Wild Hunt</h3>
                            <p>Get the new Witcher 3 Game</p>
                            <p><a class="btn btn-lg btn-primary" href="SignUp.aspx" role="button">Join Us Today</a></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Images/Apex Legends.jpg" alt="...">
                        <div class="carousel-caption">
                            <h3>Apex Legends</h3>
                            <p>Get now the Apex Legends</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Images/Pub G.png" alt="...">
                        <div class="carousel-caption">
                            <h3>Player Unknown's BattleGrounds</h3>
                            <p>Play and Become a Legend</p>
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <!--- Carousel -->

        </div>
        <br />
        <br />
        <!--- Middle Contents -->
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/MSI.jpg" alt="thumb01" width="140" height="140" />
                    <h2>Gaming Laptops</h2>
                    <p>Gaming Laptops have evolved in a big way over the years with the increasing power of the device and the decreasing size. Our website has lined up some of the best gaming laptops including MSI GV series laptop, Dell Inspiron Gaming Laptops, Acer Predator Helios, Alienware Gaming laptops and more for you to buy under exciting offers and discounts.</p>
                    <p><a class="btn btn-default" href="https://www.flipkart.com/gaming-laptops-store" role="button">View &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Gaming Tournament.jpg" alt="thumb02" width="140" height="140" />
                    <h2>Gaming Tournament</h2>
                    <p>Esports (also known as electronic sports, e-sports, or eSports) is a form of competition using video games. Most commonly, esports takes the form of organized, multiplayer video game competitions, particularly between professional players and teams. Although organized online and offline competitions have long been a part of video game culture, these were largely between amateurs until the late 2000s, when participation by professional gamers and spectatorship in these events through live streaming saw a large surge in popularity. </p>
                    <p><a class="btn btn-default" href="https://gamingmonk.com/tournaments" role="button">View &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/PS4.jpg" alt="thumb03" width="140" height="140" />
                    <h2>About PS4</h2>
                    <p>The PlayStation 4 is an eighth-generation home video game console developed by Sony Interactive Entertainment. Announced as the successor to the PlayStation 3 in February, 2013, it was launched on November 15 in North America, November 29 in Europe, South America and Australia, and on February 22, 2014, in Japan.</p>
                    <p><a class="btn btn-default" href="https://en.wikipedia.org/wiki/PlayStation_4" role="button">View &raquo;</a></p>
                </div>
            </div>
        </div>
        <!--- Middle Contents -->

        <!--- Footer  -->

        <hr />

       <footer>
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy; 2019 GamerMarket.com &middot; <a href="Default.aspx">Home</a> &middot; <a href="About Us.aspx">About Us</a> &middot; <a href="Contact Us.aspx">Contact Us</a> &middot; <a href="Products.aspx">Products</a></p>
        </div>
    </footer>

        <!--- Footer -->

    </form>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
