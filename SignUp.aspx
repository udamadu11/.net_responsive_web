﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/Style.css" />
    <title>Sign up page</title>
</head>
<body>
    <form id="form1" runat="server">
         <!-- navbar -->
        <div class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="Default.aspx"><span><img alt="Logo" src="Images/png.jpg" height="40" /></span>TechMart</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                    <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Products</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="#">Computers</a>
                      <a class="dropdown-item" href="#">Mobiles</a>
                      <a class="dropdown-item" href="#">Accessories</a>
                    </div>
                  </li>
                </ul>
           </div>
            
        </div>
        <!--sign up form-->
        <div class="container center-page">
            <div class="alert alert-primary" role="alert">
             <center>SIGN UP FORM</center>
            </div>
            <center><asp:Label ID="Label1" runat="server" Width="400px"></asp:Label></center>
 
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label>First Name</label>
                  <asp:TextBox class="form-control" ID="fname" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                  <label>Last Name</label>
                  <asp:TextBox class="form-control" ID="lname" runat="server"></asp:TextBox>
                </div>
              </div>
              <div class="form-group">
                <label>Address</label>
                <asp:TextBox class="form-control" ID ="address" runat="server"></asp:TextBox>
              </div>
              <div class="form-group">
                <label>Email</label>
                <asp:TextBox class="form-control" ID="email"  runat="server" TextMode="Email"></asp:TextBox>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label>Password</label>
                  <asp:TextBox class="form-control" ID="pass1" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                  <label>Confirm Password</label>
                  <asp:TextBox class="form-control" ID="pass2" runat="server" TextMode="Password"></asp:TextBox>
                </div>
              </div>
              <asp:Button ID="signUp" class="btn btn-primary btn-lg btn-block" runat="server" Text="Sign Up" OnClick="signup_Click" />           
        </div>

        <!-- Footer -->
            <footer class="page-footer font-small dark">
                <div class="footer-pos">
                    <!-- Copyright -->
              <div class="footer-copyright text-center py-3">© 2020 Copyright:
                <a href="#">Techmart.com</a>
              </div>
              <!-- Copyright -->
                </div>
            </footer>
            <!-- Footer -->
    </form>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
