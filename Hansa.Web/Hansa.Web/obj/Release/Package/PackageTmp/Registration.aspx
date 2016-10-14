<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Hansa.Web.Registration" %>



<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Registration to Hansa Management Ltd. </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <%--<link rel="apple-touch-icon" href="apple-touch-icon.png">--%>
    <link rel="icon" href="Content/assets/images/PageImage/HansaLogo-Icon.png" />


    <link href="ForLoginScreen/Registration.css" rel="stylesheet" />
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
            <%--<img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />--%>
           <%-- <p id="profile-name" class="profile-name-card"></p>--%>
            <form id="Form1" class="form-signin" runat="server">
                
                 <input type="text" id="txtFirstName" class="form-control" placeholder="First Name"
                     required="required" autofocus="autofocus" runat="server"/> 
               
                 <input type="text" id="txtLastName" class="form-control" placeholder="Last Name"
                     required="required"  runat="server"/> 
               
                 <input type="email" id="txtEmail" class="form-control" placeholder="E-mail"
                     required="required"  runat="server"/>

                <input type="password" id="txtPassword" class="form-control" placeholder="Password" required="required" runat="server"/>
               
                <input type="password" id="txtConfirmPassword" class="form-control" placeholder="Confirm Password" required="required" runat="server"/>
                <asp:CompareValidator ErrorMessage="Passwords not match." ForeColor="Red" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword" runat="server" />
 
                <input type="text" id="txtSecurityQuestion" class="form-control" placeholder="Security-Question"
                     required="required"  runat="server"/>
                 
                 <input type="text" id="txtAnswer" class="form-control" placeholder="Answer"
                     required="required"   runat="server"/> 

                
                 <input type="text" id="txtPhone" class="form-control" placeholder="Phone"
                        runat="server"/>
                 
                 <input type="text" id="txtAddress" class="form-control" placeholder="Address" aria-multiline="true"
                       runat="server"/>
                 

                 <input type="text" id="txtCompanyName" class="form-control" placeholder="Company Name"
                       runat="server"/>
                
<div>
<cc1:CaptchaControl ID="Captcha1" runat="server"

 CaptchaBackgroundNoise="Low" CaptchaLength="5"

 CaptchaHeight="60" CaptchaWidth="200"

 CaptchaLineNoise="None" CaptchaMinTimeout="5"

 CaptchaMaxTimeout="240" FontColor = "#529E00" />
    <asp:Button ID="tryAnotherCapcha" runat="server" Text="Try Anothers" OnClick="btnTryAnotherCapcha_Click" autopostback="true" />

 </div>

 <input type="text" id="txtCapchaCode" class="form-control" placeholder="Type Capcha Code"
                       runat="server" required="required"/>
                  <%--<asp:CompareValidator ErrorMessage="Capcha  not match." ForeColor="Red" ControlToCompare="Captcha1"
                ControlToValidate="txtCapchaCode" runat="server" />--%>



                  
                <div style="text-align:center">
                    <asp:Button ID ="btnSubmit" runat="server" CssClass="btn btn-lg btn-primary btn-block btn-signin" 
                    onclick="btnSubmit_Click" Text="Sign Up" />
                </div>
                 
            </form>            
        </div>
    </div>
</body>
</html>
