<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="Upcoming.aspx.cs" Inherits="Hansa.Web.Upcoming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <script type="text/javascript">

     $(document).ready(function () {

         $('#hsForMainSliders').hide();
         $('#hsForOngoingProjects').hide();
         $('#hsForUpCommingProjects').show();
        // $('html,body').animate({ scrollTop: 800 }, 'slow');
     });

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="container" id="hsForUpCommingProjects" runat="server">
         <div class="page-section">
            <div class="custom-controls pull-right">
                <span id="slider-prev1"></span>
                <span id="slider-next1"></span>
            </div>
            <h2><span>UPCOMING PROJECTS</span><em></em></h2>
            <ul class="slider-gallery1 clearfix">

                 <li class="template">
                    <img src="Content/assets/images/Sliders/ONGOING/Acropolis/rendering(1).jpg" alt="">
                    <div class="overlay-data right">
                        <div class="overlay-inner">
                            <div>
                                <h4>ACROPOLIS</h4>
                                <p>Gulshan 2, Dhaka</p>

                            </div>
                        </div>
                        <a href="Content/assets/images/Sliders/ONGOING/Acropolis/rendering(1).jpg" title="" class="zoom fancybox" rel="group1"><span class="fa fa-plus"></span>

                        </a>
                    </div>
                </li>

                <li class="template">
                    <img src="Content/assets/images/Sliders/ONGOING/Banani%20DCC%20Unique%20Complex/150304_DCC_B.RGB_color.jpg" alt=""> 
                    <div class="overlay-data right">
                        
                        <div class="overlay-inner">
                            <div>
                                <h4>DCC UNIQUE COMPLEX</h4>
                                <p>44 Kamal Ataturk Avenue,Banani,Dhaka</p>

                            </div>
                        </div>
                        <a href="Content/assets/images/Sliders/ONGOING/Banani%20DCC%20Unique%20Complex/150304_DCC_B.RGB_color.jpg" title="" class="zoom fancybox" rel="group1"><span class="fa fa-plus"></span>

                        </a>
                    </div>
                </li>
                <li class="template">
                    <img src="Content/assets/images/Sliders/ONGOING/Borak%20Biz%20Center/FINAL70DilkushaPic.jpg" alt="">
                    <div class="overlay-data right">
                        <div class="overlay-inner">
                             
                            <div>
                                 
                                <h4>BORAK BIZ CENTER</h4>
                                <p>70 Dilkusha,Dhaka</p>
                            </div>
                        </div>
                        <a href="Content/assets/images/Sliders/ONGOING/Borak%20Biz%20Center/FINAL70DilkushaPic.jpg" title="" class="zoom fancybox" rel="group1"><span class="fa fa-plus"></span>

                        </a>
                    </div>
                </li>
                <li class="template">
                    <img src="Content/assets/images/Sliders/ONGOING/Borak%20Park%20Valley/Park%20Valley%20Image.jpg" alt="">
                    <div class="overlay-data right">
                         
                        <div class="overlay-inner">
                            <div>
                                 
                                <h4>BORAK PARK VALLEY</h4>
                                <p>Plot-34 & 36,Parkroad Baridhara,Dhaka</p>
                            </div>
                        </div>
                        <a href="Content/assets/images/Sliders/ONGOING/Borak%20Park%20Valley/Park%20Valley%20Image.jpg" title="" class="zoom fancybox" rel="group1"><span class="fa fa-plus"></span>

                        </a>
                    </div>
                </li>

                <li class="template">
                    <img src="Content/assets/images/Sliders/ONGOING/Borak%20Mahnur/BORAK%20MEHNUR%20opt%201.jpg" alt="">
                    <div class="overlay-data right">
                        <div class="overlay-inner">
                            <div>
                                 
                                <h4>BORAK MEHNUR</h4>
                                <p>51/B Banani, Dhaka</p>
                            </div>
                        </div>

                        <a href="Content/assets/images/Sliders/ONGOING/Borak%20Mahnur/BORAK%20MEHNUR%20opt%201.jpg" title="" class="zoom fancybox" rel="group1"><span class="fa fa-plus"></span>

                        </a>
                    </div>
                </li>

                 <li class="template">
                    <img src="Content/assets/images/Sliders/ONGOING/Borak%20Zahir%20Tower/ZOHIR%20TOWER_02b.jpg" alt="">
                    <div class="overlay-data right">
                        <div class="overlay-inner">
                            <div> 
                                <h4>BORAK JOHIR TOWER</h4>
                                <p>1 Panthapath, Karwan Bazar, Dhaka</p>
                            </div>
                        </div>

                        <a href="Content/assets/images/Sliders/ONGOING/Borak%20Zahir%20Tower/ZOHIR%20TOWER_02b.jpg" title="" class="zoom fancybox" rel="group1"><span class="fa fa-plus"></span>

                        </a>
                    </div>
                </li>

             

            </ul>
        </div>
    </div>


     <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
    <script>window.jQuery || document.write('<script src="Content/assets/js/vendor/jquery-1.11.3.min.js"><\/script>')</script>
    <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>-->
    <script src="Content/assets/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="Content/assets/plugins/jquery.fancybox.pack.js"></script>
    <script src="Content/assets/plugins/jquery.bxslider.min.js"></script>
    <script src="Content/assets/js/plugins.js"></script>
    <script src="Content/assets/js/main.js"></script>
    <script>
        $(function () {
            //$('.slider-gallery').bxSlider({
            //    auto: true,
            //    slideWidth: 370,
            //    slideMargin: $(window).width() > 767 ? 30 : 0,
            //    pager: false,
            //    minSlides: $(window).width() > 767 ? 3 : 1,
            //    maxSlides: $(window).width() > 767 ? 3 : 1,
            //    moveSlides: 1,
            //    nextSelector: '#slider-next',
            //    prevSelector: '#slider-prev',
            //    nextText: '&#xf105;',
            //    prevText: '&#xf104;',
            //})

            $('.slider-gallery1').bxSlider({
                auto: true,
                slideWidth: 370,
                slideMargin: $(window).width() > 767 ? 30 : 0,
                pager: false,
                minSlides: $(window).width() > 767 ? 3 : 1,
                maxSlides: $(window).width() > 767 ? 3 : 1,
                moveSlides: 1,
                nextSelector: '#slider-next1',
                prevSelector: '#slider-prev1',
                nextText: '&#xf105;',
                prevText: '&#xf104;',
            })

            //$('.slider-gallery2').bxSlider({
            //    auto: true,
            //    slideWidth: 200,
            //    slideMargin: $(window).width() > 767 ? 30 : 0,
            //    pager: false,
            //    minSlides: $(window).width() > 767 ? 8 : 1,
            //    maxSlides: $(window).width() > 767 ? 8 : 1,
            //    moveSlides: 1,
            //    nextSelector: '#slider-next2',
            //    prevSelector: '#slider-prev2',
            //    nextText: '&#xf105;',
            //    prevText: '&#xf104;',
            //})

            //$('.main-slider ul').bxSlider({
            //    auto: true,
            //    pager: false,
            //    nextText: '&#xf105;',
            //    prevText: '&#xf104;',
            //})

            $(".fancybox").fancybox();
            // $(".fancybox1").fancybox();


        })


        //$(function () {
        //    $('.slider-gallery').bxSlider({
        //        auto: true,
        //        slideWidth: 370,
        //        slideMargin: $(window).width() > 767 ? 30 : 0,
        //        pager: false,
        //        minSlides: $(window).width() > 767 ? 3 : 1,
        //        maxSlides: $(window).width() > 767 ? 3 : 1,
        //        moveSlides: 1,
        //        nextSelector: '#slider-next',
        //        prevSelector: '#slider-prev',
        //        nextText: '&#xf105;',
        //        prevText: '&#xf104;',
        //    })
        //    $('.main-slider ul').bxSlider({
        //        auto: true,
        //        pager: false,
        //        nextText: '&#xf105;',
        //        prevText: '&#xf104;',
        //    })

        //    $(".fancybox").fancybox();
        //})

    </script>
</asp:Content>
