<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManagementWpopup.aspx.cs" Inherits="Hansa.Web.ManagementWpopup" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="PopUpASPNETSR/jquery-1.10.3-ui.css" rel="stylesheet" />
    <script src="PopUpASPNETSR/jquery-1.11.3.js"></script>
    <script src="PopUpASPNETSR/jquery.1.10.3-ui.js"></script>

    <script type="text/javascript">

        //alert("ufu");

        $(function () {
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

            

<%--            $('#<%=testbtn1.ClientID%>').click(function () {
                $("#ChiefExecutiveProfilePopUpdivsix").dialog({
                    title: "T-T-T",
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
            });--%>

        })

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

            <div class="page-section aboutus-section">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                <div class="panel">
                                    <div class="panel-heading" role="tab" id="headingOne">
                                        <h4 class="panel-title">
                                            <a class="" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">CHAIRMAN
                                        <span class="fa toggle-icon"></span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div style="" aria-expanded="true" id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                        <div class="panel-body">



                                            <div class="row" id="ChairmanProfilePopUpdiv" title="CHAIRPERSION" style="display: none">
                                                <div class="col-lg-10">
                                                    <p><strong>PROFILE</strong></p>

                                                    <p>MS. Salina Ali, Chairperson, Unique Group </p>

                                                </div>
                                                <div class="col-lg-1" style="margin-top: 07px;">
                                                    <img src="Content/assets/images/PageImage/Chairman.png" alt="" />
                                                </div>
                                            </div>

                                            <div class="row" id="ChairmanMessagePopUpdiv" title="CHAIRPERSION" style="display: none">

                                                <div class="col-lg-12">
                                                    <p><strong>MESSAGE</strong></p>

                                                    <p>
                                                        A person leading the way by enabling greater results. As a pragmatic entrepreneur, she leads Unique Group towards sustainability and achieving every single success for its business, society and human kind. Her visionary guidance is always a perennial source of inspiration for the group and its associates
                                                    </p>

                                                </div>
                                            </div>

                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnChairmanProfilePopUp" runat="server" Text="PROFILE" /></span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnChairmanMessagePopUp" runat="server" Text="MESSAGE" />
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading" role="tab" id="headingTwo">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">MANAGING DIRECTOR
                                        <span class="fa toggle-icon"></span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div style="height: 0px;" aria-expanded="false" id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                        <div class="panel-body">


                                            <div class="row" id="ManagingDirectorProfilePopUpdiv" title="MANAGING DIRECTOR" style="display: none">
                                                <div class="col-lg-10">
                                                    <p><strong>PROFILE</strong></p>

                                                    <p>Mr. Mohd. Noor Ali, Managing Director, Unique Group </p>

                                                </div>
                                                <div class="col-lg-1" style="margin-top: 07px;">
                                                    <img src="Content/assets/images/PageImage/ManagingDirector.png" alt="" />
                                                </div>
                                            </div>

                                            <div class="row" id="ManagingDirectorMessagePopUpdiv" title="MANAGING DIRECTOR" style="display: none">

                                                <div class="col-lg-12">
                                                    <p><strong>MESSAGE</strong></p>

                                                    <p>
                                                        Mr. Mohd Noor Ali is one of the best-known entrepreneurs in Bangladesh. He is well recognized among the business community for his responsibility towards the company’s stable strategy. He aggressively broadened the company’s range of products, and wherever UG has achieved a dominant position he vigorously contributed towards its growth. Being a conglomerate, UG has achieved the heights recognition from the community by having the first self owned five-star hotel, The Westin Dhaka. Despite the odds Mr. Ali has also been involved in diverse business entities and  his most remarkable achievement is he is a self-made person.
Today, Mr. Ali is the Managing Director of more than twenty different business concerns. Mr. Ali is a former President of BAIRA, Chairman of Eastern Bank Ltd, as well as Shareholder Directorship of different financial institutions and a number of business bodies. Being a freedom fighter and a philanthropist Mr. Ali’s contribution towards development of the country is truly significant.
                                                    </p>
                                                </div>
                                            </div>

                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnManagingDirectorProfilePopUp" runat="server" Text="PROFILE" /></span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnManagingDirectorMessagePopUp" runat="server" Text="MESSAGE" /></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading" role="tab" id="headingThree">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">BOARD OF DIRECTORS
                                        <span class="fa toggle-icon"></span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div aria-expanded="false" id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                        <div class="panel-body">
                                            <div class="row" id="BoardOfDirectorProfilePopUpdiv" title="BOARD OF DIRECTORS" style="display: none">
                                                <div class="col-lg-11">

                                                    <img src="Content/assets/images/PageImage/BoardOfDirectors.png" alt="" />
                                                    <img src="Content/assets/images/PageImage/BoardOfDirectors.png" alt="" />
                                                    <img src="Content/assets/images/PageImage/BoardOfDirectors.png" alt="" />
                                                    <img src="Content/assets/images/PageImage/BoardOfDirectors.png" alt="" />
                                                    <img src="Content/assets/images/PageImage/BoardOfDirectors.png" alt="" />
                                                    <img src="Content/assets/images/PageImage/BoardOfDirectors.png" alt="" />
                                                    <img src="Content/assets/images/PageImage/BoardOfDirectors.png" alt="" />
                                                </div>
                                            </div>
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnBoardOfDirectorProfilePopUp" runat="server" Text="PROFILE" /></span>
                                        </div>
                                    </div>
                                </div>


                                <%-- <div style="height: 35px; margin-bottom: 20px;">
                                <asp:LinkButton ID="btnCheifExecutiveOfficer" runat="server" ForeColor="black" CssClass="bx-controls" Text="CHIEF EXECUTIVE OFFICER" OnClick="btnCheifExecutiveOfficer_Click" />
                            </div>--%>


                                <div class="panel">
                                    <div class="panel-heading" role="tab" id="headingFour">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">CHIEF ADVISOR
                           
                                        <span class="fa toggle-icon"></span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div aria-expanded="false" id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                        <div class="panel-body">
                                            <div class="row" id="ChiefAdvisorProfilePopUpdiv" title="BOARD OF DIRECTORS" style="display: none">
                                                <div class="col-lg-11">
                                                    <img src="Content/assets/images/PageImage/ChiefAdvisor.png" alt="" />

                                                </div>
                                            </div>
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnChiefAdvisorProfilePopUp" runat="server" Text="PROFILE" /></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel">
                                    <div class="panel-heading" role="tab" id="headingFive">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                                CHIEF EXECUTIVE OFFICER
                           
                                        <span class="fa toggle-icon"></span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div aria-expanded="false" id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                        <div class="panel-body">
                                            <div class="row" id="ChiefExecutiveProfilePopUpdiv" title="CHIEF EXECUTIVE OFFICER" style="display: none">
                                                <div class="col-lg-11">
                                                    <img src="Content/assets/images/PageImage/BoardOfDirectors.png" alt="" />

                                                </div>
                                            </div>
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnChiefExecutiveProfilePopUp" runat="server" Text="PROFILE" /></span>
                                        </div>
                                    </div>
                                </div>


                               <%-- <%--Test--%>



                               <%-- <div class="panel">
                                    <div class="panel-heading" role="tab" id="headingSix">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                                TESTP1
                           
                                        <span class="fa toggle-icon"></span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div aria-expanded="false" id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                                        <div class="panel-body">
                                           

                                            <div class="panel-heading" role="tab" id="headingSeven">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                                TESTP2
                           
                                        <span class="fa toggle-icon"></span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div aria-expanded="false" id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
                                        <div class="panel-body">
                                            <div class="row" id="ChiefExecutiveProfilePopUpdivsix" title="TEST1" style="display: none">
                                                <div class="col-lg-11">
                                                    
                                                    TESTP3
                                                </div>
                                            </div>
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="testbtn1" runat="server" Text="TESTP3btn" /></span>
                                        </div>
                                    </div>


                                        </div>
                                    </div>
                                </div>--%>



                                <%--Test--%>





                            </div>
                        </div>
                        <div class="col-sm-6">
                            <img src="Content/assets/images/PageImage/Management.png" alt="" />
                        </div>
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
                            <img src="Content/assets/images/portfolio1.jpg" alt="">
                            <div class="overlay-data top">
                                <div class="overlay-inner">
                                    <div>
                                        <h4>Work Title Here</h4>
                                    </div>
                                </div>
                                <a href="Content/assets/images/portfolio1.jpg" title="" class="zoom fancybox" rel="group1a"><span class="fa fa-plus"></span>

                                </a>
                            </div>
                        </li>
                        <li class="template">
                            <img src="Content/assets/images/portfolio2.jpg" alt="">
                            <div class="overlay-data right">
                                <div class="overlay-inner">
                                    <div>
                                        <h4>Work Title Here</h4>
                                    </div>
                                </div>
                                <a href="Content/assets/images/portfolio2.jpg" title="" class="zoom fancybox" rel="group2"><span class="fa fa-plus"></span>

                                </a>
                            </div>
                        </li>
                        <li class="business">
                            <img src="Content/assets/images/portfolio3.jpg" alt="">
                            <div class="overlay-data bottom">
                                <div class="overlay-inner">
                                    <div>
                                        <h4>Work Title Here</h4>
                                    </div>
                                </div>
                                <a href="Content/assets/images/portfolio3.jpg" title="" class="zoom fancybox" rel="group3"><span class="fa fa-plus"></span>

                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- /.container -->


            <%--      <div class="page-section aboutus-section">
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




                                            <%--  <asp:Button ID="btnBACKGROUND" runat="server" Text="BACKGROUND" OnClick="btnBACKGROUND_onclick" />
                                            <asp:Button ID="btnManagement" runat="server" Text="MANAGEMENT" OnClick="btnManagement_onclick" />




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
            --%>
        </ContentTemplate>
    </asp:UpdatePanel>



</asp:Content>
