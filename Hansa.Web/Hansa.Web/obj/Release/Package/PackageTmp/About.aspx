<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Hansa.Web.About" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--   <link href="PopUpASPNETSR/jquery-1.10.3-ui.css" rel="stylesheet" />
    <script src="PopUpASPNETSR/jquery-1.11.3.js"></script>
    <script src="PopUpASPNETSR/jquery.1.10.3-ui.js"></script>--%>

    <script type="text/javascript">

        $(document).ready(function () {

            $('#hsForMainSliders').show();
            $('#hsForOngoingProjects').hide();
            $('#hsForUpCommingProjects').hide();

            //function setCursor() {
            //    e.preventDefault();
            //    $("body, html").animate({
            //        scrollTop: $($(this).attr('a.editSerialBtn')).offset().top
            //    }, 'slow');
            //}

            // //collapseTwo id="collapseOne" class="panel-collapse collapse in"
            // $('#collapseOne').removeClass("panel-collapse collapse in");
            // $('#collapseOne').addClass("panel-collapse collapse");
            // $('#collapseOne').attr("aria-expanded", "false");
            // $("#headingOne h4 a").attr("aria-expanded", "false");
            // $('#headingOne h4 a').addClass("collapsed");
            //// class="collapsed"

            // $('#collapseTwo').removeClass("panel-collapse collapse");
            // $('#collapseTwo').addClass("panel-collapse collapse in");
            // $('#collapseTwo').attr("aria-expanded", "true");
            // // aria-expanded="true"
            // $('#headingTwo h4 a').removeClass("collapsed");
            // $('#headingTwo h4 a').attr("aria-expanded", "true");
            var tp = $("#bdyhdr").offset().top;
            var topber = $("#topbar").height();
            var headerber = $("#headerbar").height();
            var bdyhdr = $("#bdyhdr").height();
            var hsForMainSliders = $('#hsForMainSliders').height();
            var hsTopMainslider = $('#hsForMainSliders').offset().top*3;
            var viewableOffset = topber + headerber + hsTopMainslider-62;//$('#ContentPlaceHolder1_backgrnd').offset().top + $('#ContentPlaceHolder1_backgrnd').outerHeight(true);//$('#ContentPlaceHolder1_backgrnd').position().top;

           // alert(viewableOffset);

            $('html,body').animate({ scrollTop: viewableOffset }, 'slow');

            // $('html,body').animate({ scrollTop: 700 }, 'slow');

        });


        //function setCSR()
        //{
        //    alert('dfdf');
            
        //}

        //alert("ufu");

        <%--  $(function () {
            $('#<%=btnChairmanProfilePopUp.ClientID%>').click(function () {
                $("#ChairmanProfilePopUpdiv").dialog({
                    title: "Chairman",
                    width: 800,
                    height: 400,
                    modal: true,
                    buttons: {
                        Close: function () {
                            $(this).dialog('close');
                        }
                    }
                });
                return false;
            });


            $('#<%=btnChairmanMessagePopUp.ClientID%>').click(function () {
                $("#ChairmanMessagePopUpdiv").dialog({
                    title: "Chairman",
                    width: 800,
                    height: 400,
                    modal: true,
                    buttons: {
                        Close: function () {
                            $(this).dialog('close');
                        }
                    }
                });
                return false;
            });

            $('#<%=btnManagingDirectorProfilePopUp.ClientID%>').click(function () {
                $("#ManagingDirectorProfilePopUpdiv").dialog({
                    title: "Managing Director",
                    width: 800,
                    height: 400,
                    modal: true,
                    buttons: {
                        Close: function () {
                            $(this).dialog('close');
                        }
                    }
                });
                return false;
            });

            $('#<%=btnManagingDirectorMessagePopUp.ClientID%>').click(function () {
                $("#ManagingDirectorMessagePopUpdiv").dialog({
                    title: "Managing Director",
                    width: 300,
                    height: 400,
                    modal: true,
                    buttons: {
                        Close: function () {
                            $(this).dialog('close');
                        }
                    }
                });
                return false;
            });

            $('#<%=btnBoardOfDirectorProfilePopUp.ClientID%>').click(function () {
                $("#BoardOfDirectorProfilePopUpdiv").dialog({
                    title: "Board Of Directors",
                    width: 850,
                    height: 450,
                    modal: true,
                    buttons: {
                        Close: function () {
                            $(this).dialog('close');
                        }
                    }
                });
                return false;
            });

            $('#<%=btnChiefAdvisorProfilePopUp.ClientID%>').click(function () {
                $("#ChiefAdvisorProfilePopUpdiv").dialog({
                    title: "Chief Advisor",
                    width: 850,
                    height: 450,
                    modal: true,
                    buttons: {
                        Close: function () {
                            $(this).dialog('close');
                        }
                    }
                });
                return false;
            });

            $('#<%=btnChiefExecutiveProfilePopUp.ClientID%>').click(function () {
                $("#ChiefExecutiveProfilePopUpdiv").dialog({
                    title: "Chief Executive Officer",
                    width: 850,
                    height: 450,
                    modal: true,
                    buttons: {
                        Close: function () {
                            $(this).dialog('close');
                        }
                    }
                });
                return false;
            });

            
 

        })--%>

    </script>





</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <%--<div class="page-section">
                <div class="container">
                    <div class="section-header">
                        <h2>MANAGEMENT</h2>
                    </div>
 
                </div>


            </div>--%>

            <div class="page-section"> <%--<div class="page-section aboutus-section">--%>
                <div class="container"> 
                        <h2>   <%--<h2 class="with-borderline">--%>
                            <span id="backgrnd" runat="server">BACKGROUND</span>
                            <em></em>
                        </h2>

                        <div class="row" id="backgroundTxt">
                            <div class="col-sm-12" style="text-align: justify;">
                                <%--<h4 class="with-icon"><span class="fa fa-rocket"></span>Easy To Launch</h4>--%>
                                <p>
                                    Reflection of the economical upsurge of Bangladesh is clearly visible in the life-styles and living standards of individuals. 
                                The people are considered as international customers, even sometimes as commodity.Social, Industrial, Infrastructural, Technological, 
                                Information-Technological and other Developments lead to global presence of Bangladesh. Property value is one aspect which helps us to assess 
                                such advancement.Property has been considered as the most expensive product in Bangladesh since long. In Dhaka and other major cities of Bangladesh 
                                the escalation is going on day by day. Similarly in other major cities like Chittagong and Sylhet, the people are coming for a better life-style and 
                                facilities. Over 40 million of people are residing in those three cities which is about 25% of the total population of the country. 
                                Obviously the demand in housing is excessively high and the people are ready to sacrifice a significant amount of their earnings to have a shelter. Similarly the 
                                Corporate Business Sector, Healthcare, Hotels and Tourism, Education, FMCG etc. are trying to offer a healthy atmosphere to its employees and customers.
                                Compared to all other developments, the representation of the property is not satisfactory so far. The expectation and customers demand are so 
                                high but the commitment and service standards are not developed up to the desired level. That is very a warning side where millions of
                                amount of money have been invested. To keep the trends of increasing value of the property, the service and the maintenance are very crucial.  
                                As a sequel to the Unique Group (UG) operations, HANSA Management Limited has been formed by UG to offer an international standard Facilities Management (FM) 
                                to ensure an iconic life-style. International Standard FM Service is designed and practiced by HANSA with highest passion and 
                                dedication through integrated services named Total Facilities Management, TFM and Computer Aided Facilities Management, CAFM.

                         
                                </p>
                            </div>

                        </div>
                        <div class="row" id="blnkRow">
                            <br />
                        </div>

                        <div class="row" id="allcolapseblePanel">
                            <div class="col-sm-12">
                                <%--<img src="Content/assets/images/PageImage/Management.png" alt="" />--%>

                                <div class="panel-group" id="accordion1" role="tablist" aria-multiselectable="true">
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingOne1">
                                            <h4 class="panel-title">
                                                <a class="" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1" aria-expanded="true" aria-controls="collapseOne1">OBJECTIVE
                                        <span class="fa toggle-icon"></span>
                                                </a>
                                            </h4>
                                        </div>
                                        <div style="" aria-expanded="true" id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne1">
                                            <div class="panel-body">
                                                <div>
                                                    <p><span>To Ensure a Sustainable FM business home in Bangladesh.</span></p>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingOne2">
                                            <h4 class="panel-title">
                                                <a class="" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne2" aria-expanded="false" aria-controls="collapseOne2">GOALS
                                        <span class="fa toggle-icon"></span>
                                                </a>
                                            </h4>
                                        </div>
                                        <div style="" aria-expanded="false" id="collapseOne2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne2">
                                            <div class="panel-body">
                                                <div>
                                                    <p><span>To establish and sustain an international standard FM  Organization  in Bangladesh.</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingOne3">
                                            <h4 class="panel-title">
                                                <a class="" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne3" aria-expanded="false" aria-controls="collapseOne3">VISION
                                        <span class="fa toggle-icon"></span>
                                                </a>
                                            </h4>
                                        </div>
                                        <div style="" aria-expanded="false" id="collapseOne3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne3">
                                            <div class="panel-body">

                                                <div>
                                                    <p><span>To represent the organization with its brand image and commitment.</span></p>
                                                </div>


                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingOne4">
                                            <h4 class="panel-title">
                                                <a class="" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne4" aria-expanded="false" aria-controls="collapseOne4">MISSION
                                        <span class="fa toggle-icon"></span>
                                                </a>
                                            </h4>
                                        </div>
                                        <div style="" aria-expanded="false" id="collapseOne4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne4">
                                            <div class="panel-body">

                                                <div>
                                                    <p><span>To optimise the use of resources for carrying out the business operation to ensure customer satisfaction.</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <%-- <div class="row" style="background: #fff none repeat scroll 0 0; border-bottom: medium none;">--%>
                        <div class="row">
                            <div class="col-lg-4">

                                <img src="Content/assets/images/PageImage/CSR2.jpg" height="200px;" width="350px;" />
                            </div>
                            <div class="col-lg-4" style="background: #fff none repeat scroll 0 0; border-bottom: medium none; height: 200px;">

                                <span><strong>
                                    <h3>CSR</h3>
                                </strong></span>
                                <p style="text-align: justify;">
                                    The environment is our life-long shelter and HANSA will never act anything harmful to the nation and earth.
                                     We are committed to serving our clients through ensuring green environment. HANSA is trying its level best to protect the interest
                                     of its clients and the environment as well. HANSA is created for helping others and the philosophy will remain as long as HANSA exists. 
                                </p> 
                            </div>
                            <div class="col-lg-4">

                                <img src="Content/assets/images/PageImage/CSR1.jpg" height="200px;" width="370px;" />
                            </div>

                        </div>
  

                    </div>
                
            </div>

            <!-- /.container -->

        </ContentTemplate>
    </asp:UpdatePanel>



</asp:Content>
