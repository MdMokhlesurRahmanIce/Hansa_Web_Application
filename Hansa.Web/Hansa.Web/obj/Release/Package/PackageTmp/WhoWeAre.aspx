<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="WhoWeAre.aspx.cs" Inherits="Hansa.Web.WhoWeAre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        $(document).ready(function () {

            $('#hsForMainSliders').show();
            $('#hsForOngoingProjects').hide();
            $('#hsForUpCommingProjects').hide();


           // var viewableOffset = $('#hsForMainSliders').offset().top * 3 - 60;// + $("#bdyhdr").height();//$('#ContentPlaceHolder1_backgrnd').offset().top + $('#ContentPlaceHolder1_backgrnd').outerHeight(true);//$('#ContentPlaceHolder1_backgrnd').position().top;

            var tp = $("#bdyhdr").offset().top;
            var topber = $("#topbar").height();
            var headerber = $("#headerbar").height();
            var bdyhdr = $("#bdyhdr").height();
            var hsForMainSliders = $('#hsForMainSliders').height();
            var hsTopMainslider = $('#hsForMainSliders').offset().top * 3;
            var viewableOffset = topber + headerber + hsTopMainslider - 62;//+ $('#ContentPlaceHolder1_backgrnd').height() + $('#backgroundTxt').height() + $('#blnkRow').height();

            // alert(viewableOffset);

            $('html,body').animate({ scrollTop: viewableOffset }, 'slow');
            //$('html,body').animate({ scrollTop: 800 }, 'slow');
        });

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-section"> <%--<div class="page-section aboutus-section">--%>
        <div class="container">
            <h2> <%--<h2 class="with-borderline">--%>
                <span>WHO WE ARE</span>
                <em></em>
            </h2>
            <%--7dc217--%>
            <div class="row">
                <div class="col-sm-9" style="text-align: justify;">
                    <%--<h4 class="with-icon"><span class="fa fa-rocket"></span>Easy To Launch</h4>--%>
                    <p>
                        Unique Group (UG) is one of the largest and foremost diversified business entities in Bangladesh. The journey of UG started in early 1980’s, 
                                and over the years, it has diversified into many new businesses in order to meet the needs of the stakeholders, while contributing significantly
                                to the economy. UG developed a unique business model of creating empowered companies that enjoy the best of entrepreneurial independence and 
                                Group-wise synergies. This principle has led UG to becoming a powerful business portfolio. Today, the span of UG operations is diversified into 
                                more than fifteen different business areas. These include Hospitality, Real Estate,Construction & Infrastructure Development, Telecommunication,
                                Share Management, Bank, Insurance, Financial Institution, Manpower Management, Ceramic Industry,
                                Power Plant, Human Resources Development, International Trade, Media& Publications.


                         
                    </p>
                </div>

                <div class="col-sm-3">
                    <img src="Content/assets/images/PageImage/BackgroundWWare.png" alt="" height="150px;" width="260px" />
                </div>
            </div>

            <div class="row">
                <br />
            </div>

        </div>
    </div>

</asp:Content>
