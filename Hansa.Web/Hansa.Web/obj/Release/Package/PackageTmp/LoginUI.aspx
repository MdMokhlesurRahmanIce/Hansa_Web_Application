<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginUI.aspx.cs" Inherits="Hansa.Web.LoginUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login to Hansa Management Ltd. </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <%--<link rel="apple-touch-icon" href="apple-touch-icon.png">--%>
    <link rel="icon" href="Content/assets/images/PageImage/HansaLogo-Icon.png" />


    <link href="ForLoginScreen/LogIn.css" rel="stylesheet" />
    <script src="ForLoginScreen/LogIn.js"></script>



     <link rel="stylesheet" href="Content/assets/plugins/jquery.fancybox.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <!--<script src="assets/css/font-awesome.min.css"></script>
        <script src="assets/css/bootstrap.min.css"></script>-->

    <link rel="stylesheet" href="Content/assets/css/style.css">
    <script src="Content/assets/js/vendor/modernizr-2.8.3.min.js"></script>

    <script src="Content/assets/js/vendor/jquery-1.11.3.min.js"></script>

     
</head>
<body>
<div class="container">
        <div class="card card-container">    
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form id="Form1" class="form-signin" runat="server">
                <%--<span id="reauth-email" class="reauth-email"></span>--%>
                <input type="text" id="txtUserName" class="form-control" placeholder="User Name"
                     required="required" autofocus="autofocus" runat="server"/>
                <input type="password" id="txtPassword" class="form-control" placeholder="Password" required="required" runat="server"/>
                <div id="remember" class="checkbox">
                    <label><input type="checkbox" value="remember-me"/> Remember me </label>
                </div>
                <div style="text-align:center">
                    <asp:Button ID ="btnSubmit" runat="server" CssClass="btn btn-lg btn-primary btn-block btn-signin" 
                    onclick="btnSubmit_Click" Text="Log In" />
                </div>
                 
            </form>            
        </div>
    </div>
</body>
</html>
