<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Hansa.Web.UI.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <%--<link rel="apple-touch-icon" href="apple-touch-icon.png">
    <!-- Place favicon.ico in the root directory -->
    <link href="../Content/assets/plugins/jquery.fancybox.css" rel="stylesheet" />
    <link rel="stylesheet" href="../Content/assets/plugins/jquery.fancybox.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <!--<script src="assets/css/font-awesome.min.css"></script>
        <script src="assets/css/bootstrap.min.css"></script>-->
     
    <link rel="stylesheet" href="../Content/assets/css/style.css">
    <script src="../Content/assets/js/vendor/modernizr-2.8.3.min.js"></script>

    <link rel="stylesheet" href="../Content/assets/css/style.css" />--%>
    

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="page-section">
        <div class="container">
            <div class="section-header">
                <h2>Welcome to Caret Template</h2>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <h4 class="with-icon"><span class="fa fa-rocket"></span>Easy To Launch</h4>
                    <p>Eum doctus numquam referrentur
                        <br>
                        ad, minim commodo expetenda per </p>
                </div>
                <div class="col-sm-3">
                    <h4 class="with-icon"><span class="fa fa-comments"></span>Friendly Support</h4>
                    <p>Eum doctus numquam referrentur
                        <br>
                        ad, minim commodo expetenda per </p>
                </div>
                <div class="col-sm-3">
                    <h4 class="with-icon"><span class="fa fa-heart"></span>Lovely Design</h4>
                    <p>Eum doctus numquam referrentur
                        <br>
                        ad, minim commodo expetenda per </p>
                </div>
                <div class="col-sm-3">
                    <h4 class="with-icon"><span class="fa fa-cog"></span>Tons of Options</h4>
                    <p>Eum doctus numquam referrentur
                        <br>
                        ad, minim commodo expetenda per </p>
                </div>
            </div>
            <div class="table-responsive">

                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                <asp:DropDownList ID="DropDownList1" runat="server" Width="100%"></asp:DropDownList>
                <asp:Button ID="Button1" runat="server" Text="Button" />
                <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>


            </div>
        </div>
    </div>
    <div class="container">
        <div class="page-section">
            <div class="custom-controls pull-right">
                <span id="slider-prev"></span>
                <span id="slider-next"></span>
            </div>
            <h2 class="with-borderline"><span>Recent Works</span><em></em></h2>
            <ul class="slider-gallery clearfix">
                <li class="logo">
                    <img src="../Content/assets/images/portfolio1.jpg" alt="">
                    <div class="overlay-data top">
                        <div class="overlay-inner">
                            <div>
                                <h4>Work Title Here</h4>
                            </div>
                        </div>
                        <a href="../Content/assets/images/portfolio1.jpg" title="" class="zoom fancybox" rel="group1a"><span class="fa fa-plus"></span>

                        </a>
                    </div>
                </li>
                <li class="template">
                    <img src="../Content/assets/images/portfolio2.jpg" alt="">
                    <div class="overlay-data right">
                        <div class="overlay-inner">
                            <div>
                                <h4>Work Title Here</h4>
                            </div>
                        </div>
                        <a href="../Content/assets/images/portfolio2.jpg" title="" class="zoom fancybox" rel="group2"><span class="fa fa-plus"></span>

                        </a>
                    </div>
                </li>
                <li class="business">
                    <img src="../Content/assets/images/portfolio3.jpg" alt="">
                    <div class="overlay-data bottom">
                        <div class="overlay-inner">
                            <div>
                                <h4>Work Title Here</h4>
                            </div>
                        </div>
                        <a href="../Content/assets/images/portfolio3.jpg" title="" class="zoom fancybox" rel="group3"><span class="fa fa-plus"></span>

                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- /.container -->
    <div class="page-section aboutus-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">Strategy Solutions
                           
                                        <span class="fa toggle-icon"></span>
                                    </a>
                                </h4>
                            </div>
                            <div style="height: 0px;" aria-expanded="false" id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <p>Ut cursus massa at urnaaculis estie. Sed aliquamellus vitae ultrs cond mentum leo massa mollis estiegittis miristum nulla.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a class="" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">Our Mission
                           
                                        <span class="fa toggle-icon"></span>
                                    </a>
                                </h4>
                            </div>
                            <div style="" aria-expanded="true" id="collapseTwo" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <p>Ut cursus massa at urnaaculis estie. Sed aliquamellus vitae ultrs cond mentum leo massa mollis estiegittis miristum nulla.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">History
                           
                                        <span class="fa toggle-icon"></span>
                                    </a>
                                </h4>
                            </div>
                            <div aria-expanded="false" id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <p>Ut cursus massa at urnaaculis estie. Sed aliquamellus vitae ultrs cond mentum leo massa mollis estiegittis miristum nulla.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="panel-heading" role="tab" id="headingFour">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">Clean Modern Code
                           
                                        <span class="fa toggle-icon"></span>
                                    </a>
                                </h4>
                            </div>
                            <div aria-expanded="false" id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                <div class="panel-body">
                                    <p>Ut cursus massa at urnaaculis estie. Sed aliquamellus vitae ultrs cond mentum leo massa mollis estiegittis miristum nulla.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <h4>Creativity</h4>
                    <div class="progress ">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="62" aria-valuemin="0" aria-valuemax="100" style="width: 62%;">
                            </div>
                        </div>
                    </div>
                    <h4>Photoshop</h4>
                    <div class="progress ">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
                            </div>
                        </div>
                    </div>
                    <h4>Development</h4>
                    <div class="progress ">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
                            </div>
                        </div>
                    </div>
                    <h4>Responsive</h4>
                    <div class="progress ">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 55%;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="page-section">
            <h2 class="with-borderline"><span>Our News</span></h2>
            <div class="row">
                <div class="col-sm-4">
                    <div class="news-post">
                        <div class="post-thumbnail">
                            <img src="../Content/assets/images/blog1.jpg" alt="">
                            <div class="post-date">
                                <strong>10</strong>
                                <span>April 2015</span>
                            </div>
                        </div>
                        <div class="post-caption">
                            <div class="post-info"><span class="fa fa-user"></span>Posted by: Author</div>
                            <h3><a href="#" title="">Lorem ipsum dolor sit amet</a></h3>
                            <p>Dicant nostrum cum te. An sint choro ius, cibo tractatos usu at, copiosae invenire eu pri. Ex his purto veri discere, ut cum labore eripuit insolens.</p>
                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>
                <div class="col-sm-4">
                    <div class="news-post">
                        <div class="post-thumbnail">
                            <img src="../Content/assets/images/blog1.jpg" alt="">
                            <div class="post-date">
                                <strong>10</strong>
                                <span>April 2015</span>
                            </div>
                        </div>
                        <div class="post-caption">
                            <div class="post-info"><span class="fa fa-user"></span>Posted by: Author</div>
                            <h3><a href="#" title="">Lorem ipsum dolor sit amet</a></h3>
                            <p>Dicant nostrum cum te. An sint choro ius, cibo tractatos usu at, copiosae invenire eu pri. Ex his purto veri discere, ut cum labore eripuit insolens.</p>
                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>
                <div class="col-sm-4">
                    <div class="news-post">
                        <div class="post-thumbnail">
                            <img src="../Content/assets/images/blog1.jpg" alt="">
                            <div class="post-date">
                                <strong>10</strong>
                                <span>April 2015</span>
                            </div>
                        </div>
                        <div class="post-caption">
                            <div class="post-info"><span class="fa fa-user"></span>Posted by: Author</div>
                            <h3><a href="#" title="">Lorem ipsum dolor sit amet</a></h3>
                            <p>Dicant nostrum cum te. An sint choro ius, cibo tractatos usu at, copiosae invenire eu pri. Ex his purto veri discere, ut cum labore eripuit insolens.</p>
                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>
            </div>
        </div>
        <div class="page-section">
            <h2 class="with-borderline"><span>Our Clients</span></h2>
            <ul class="clients-list">
                <li>
                    <img src="../Content/assets/images/client1.png" alt=""></li>
                <li>
                    <img src="../Content/assets/images/client2.png" alt=""></li>
                <li>
                    <img src="../Content/assets/images/client3.png" alt=""></li>
                <li>
                    <img src="../Content/assets/images/client4.png" alt=""></li>
                <li>
                    <img src="../Content/assets/images/client5.png" alt=""></li>
                <li>
                    <img src="../Content/assets/images/client6.png" alt=""></li>
            </ul>
        </div>

    </div>
    <div class="green-bar">
        <div class="container">
            <a href="#" title="" class="btn hidden-xs fr btn-white">Purchase now!</a>
            <h2>Strong message that makes people take action instantly!</h2>
            <a href="#" title="" class="btn hidden-lg hidden-sm hidden-md fr btn-white">Purchase now!</a>
        </div>
    </div>



</asp:Content>
