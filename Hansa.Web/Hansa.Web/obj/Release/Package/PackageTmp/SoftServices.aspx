<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SoftServices.aspx.cs" Inherits="Hansa.Web.SoftServices" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="PopUpASPNETSR/jquery-1.10.3-ui.css" rel="stylesheet" />
    <script src="PopUpASPNETSR/jquery-1.11.3.js"></script>
    <script src="PopUpASPNETSR/jquery.1.10.3-ui.js"></script>

    <script type="text/javascript">

        //alert("ufu");

        $(function () {
            $('#<%=btnSecurityNSurveillancePopUp.ClientID%>').click(function () {
                $("#SecurityNSurveillancePopUpdiv").dialog({
                    title: "Security & Surveillance",
                    width: 850,
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


            $('#<%=btnCleaningNHousekeepingPopUp.ClientID%>').click(function () {
                $("#CleaningNHousekeepingPopUpdiv").dialog({
                    title: "Cleaning Housekeeping",
                    width: 850,
                    height: 550,
                    modal: true,
                    buttons: {
                        Close: function () {
                            $(this).dialog('close');
                        }
                    }
                });
                return false;
            });

            $('#<%=btnGarbageDisposalNManagementPopUp.ClientID%>').click(function () {
                $("#GarbageDisposalNManagementPopUpdiv").dialog({
                    title: "Garbage Disposal & Management",
                    width: 850,
                    height: 550,
                    modal: true,
                    buttons: {
                        Close: function () {
                            $(this).dialog('close');
                        }
                    }
                });
                return false;
            });

            $('#<%=btnLandscapingPopUp.ClientID%>').click(function () {
                $("#LandscapingPopUpdiv").dialog({
                    title: "Landscaping",
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

            $('#<%=btnPestControlPopUp.ClientID%>').click(function () {
                $("#PestControlPopUpdiv").dialog({
                    title: "Pest Control",
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

            $('#<%=btnConstructionMaintenancePopUp.ClientID%>').click(function () {
                $("#ConstructionMaintenancePopUpdiv").dialog({
                    title: "Construction Maintenance",
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

            $('#<%=btnMEPEMEPopUp.ClientID%>').click(function () {
                $("#MEPEMEPopUpdiv").dialog({
                    title: "MEP/EME",
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

            

           $('#<%=btnRenovationNInteriorSolutionPopUp.ClientID%>').click(function () {
               $("#RenovationNInteriorSolutionPopUpdiv").dialog({
                   title: "Renovation & Interior Solution",
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

            $('#<%=btnFaçadeCleaningPopUp.ClientID%>').click(function () {
                $("#FaçadeCleaningPopUpdiv").dialog({
                    title: "Façade Cleaning",
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


            $('#<%=btnSafetyPopUp.ClientID%>').click(function () {
                $("#SafetyPopUpdiv").dialog({
                    title: "Safety",
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

            $('#<%=btnInsuranceManagementPopUp.ClientID%>').click(function () {
                $("#InsuranceManagementPopUpdiv").dialog({
                    title: "Insurance Management",
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

            $('#<%=btnDisasterManagementPopUp.ClientID%>').click(function () {
                $("#DisasterManagementPopUpdiv").dialog({
                    title: "Disaster Management",
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


            $('#<%=softServiceHead.ClientID%>').click(function () {

                //alert('working');
                $('#<%=imgSoftServices.ClientID%>').show();
                $('#<%=imgHardServices.ClientID%>').hide();
                $('#<%=imgPayPerUse.ClientID%>').hide();
                $('#<%=imgRiskManagement.ClientID%>').hide();
            });

            $('#<%=hardServiceHead.ClientID%>').click(function () {

               // alert('working');
                $('#<%=imgSoftServices.ClientID%>').hide();
                $('#<%=imgHardServices.ClientID%>').show();
                $('#<%=imgPayPerUse.ClientID%>').hide();
                $('#<%=imgRiskManagement.ClientID%>').hide();
            });

            $('#<%=payPerUseHead.ClientID%>').click(function () {

                //alert('working');
                $('#<%=imgSoftServices.ClientID%>').hide();
                $('#<%=imgHardServices.ClientID%>').hide();
                $('#<%=imgPayPerUse.ClientID%>').show();
                $('#<%=imgRiskManagement.ClientID%>').hide();
            });

            $('#<%=riskManagementHead.ClientID%>').click(function () {

                //alert('working');
                $('#<%=imgSoftServices.ClientID%>').hide();
                $('#<%=imgHardServices.ClientID%>').hide();
                $('#<%=imgPayPerUse.ClientID%>').hide();
                $('#<%=imgRiskManagement.ClientID%>').show();
            });





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
                        <h2>SERVICES</h2>
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
                                            <a class="" data-toggle="collapse" id="softServiceHead" runat="server" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">SOFT SERVICES
                                        <span class="fa toggle-icon"></span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div style="" aria-expanded="true" id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                        <div class="panel-body">



                                            <div class="row" id="SecurityNSurveillancePopUpdiv" title="Security & Surveillance" style="display: none">
                                                <div class="col-lg-8">
                                                    <p><strong>Security & Surveillance</strong></p>

                                                    <p></p>

                                                </div>
                                                <div class="col-lg-2" style="margin-top: 07px;">
                                                    <img src="Content/assets/images/PageImage/SecurityNServillance.png" alt="" />
                                                </div>
                                            </div>

                                              <div class="row" id="CleaningNHousekeepingPopUpdiv" title="Security & Surveillance" style="display: none">
                                                <div class="col-lg-6">
                                                    <p><strong>Cleaning & Housekeeping</strong></p>

                                                    <p></p>

                                                </div>
                                                <div class="col-lg-6" style="margin-top: 07px;">
                                                    <img src="Content/assets/images/PageImage/CleaningNHouseKeepingUp.png" alt="" />
                                                    <img src="Content/assets/images/PageImage/CleaningNHouseKeepingDown.png" alt="" />
                                                </div>
                                            </div>

                                            <div class="row" id="GarbageDisposalNManagementPopUpdiv" title="Security & Surveillance" style="display: none">
                                                <div class="col-lg-8">
                                                    <p><strong>Garbage Disposal & Management</strong></p>

                                                    <p></p>

                                                </div>
                                                <div class="col-lg-4" style="margin-top: 07px;">
                                                    <img src="Content/assets/images/PageImage/GarbageDisposalNManagement.png" alt="" width="200px" />
                                                </div>
                                            </div>


                                            <div class="row" id="LandscapingPopUpdiv" title="Security & Surveillance" style="display: none">
                                                <div class="col-lg-7">
                                                    <p><strong>Landscaping</strong></p>

                                                    <p></p>

                                                </div>
                                                <div class="col-lg-4" style="margin-top: 07px;">
                                                    <img src="Content/assets/images/PageImage/LandscapingInSoftServicePopUp.png" alt="" width="335px;" height="320px;" />
                                                </div>
                                            </div>


                                          <div class="row" id="PestControlPopUpdiv" title="Pest Control" style="display: none">
                                                <div class="col-lg-7">
                                                    <p><strong>Pest Control</strong></p>

                                                    <p></p>

                                                </div>
                                                <div class="col-lg-4" style="margin-top: 07px;">
                                                    <img src="Content/assets/images/PageImage/PasteControl.png" alt="" width="335px;" height="320px;" />
                                                </div>
                                            </div>
                                          <%--  <div class="row" id="SecuritySurveillancePopUpdiv" title="CHAIRPERSION" style="display: none">

                                                <div class="col-lg-12">
                                                    <p><strong>MESSAGE</strong></p>

                                                    <p>
                                                        A person leading the way by enabling greater results. As a pragmatic entrepreneur, she leads Unique Group towards sustainability and achieving every single success for its business, society and human kind. Her visionary guidance is always a perennial source of inspiration for the group and its associates
                                                    </p>

                                                </div>
                                            </div>--%>

                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnSecurityNSurveillancePopUp" runat="server" Text="Security & Surveillance" />

                                            </span>
                                            <br />

                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnCleaningNHousekeepingPopUp" runat="server" Text="Cleaning & Housekeeping" />
                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnGarbageDisposalNManagementPopUp" runat="server" Text="Garbage Disposal & Management" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnLandscapingPopUp" runat="server" Text="Landscaping" />
                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnPestControlPopUp" runat="server" Text="Pest Control" />
                                            </span>

                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading" role="tab" id="headingTwo">
                                        <h4 class="panel-title">
                                            <a class="collapsed" id="hardServiceHead" runat="server" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                HARD SERVICES
                                        <span class="fa toggle-icon"></span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div style="height: 0px;" aria-expanded="false" id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                        <div class="panel-body">


                                            <div class="row" id="ConstructionMaintenancePopUpdiv" title="Construction Maintenance" style="display: none">
                                                <div class="col-lg-7">
                                                    <p><strong>Construction Maintenance</strong></p>

                                                  <%--  <p>Mr. Mohd. Noor Ali, Managing Director, Unique Group </p>--%>

                                                </div>
                                                <div class="col-lg-5" style="margin-top: 07px;">
                                                    <img src="Content/assets/images/PageImage/ConstructionMaintanance.png" alt="" width="335px" />
                                                </div>
                                            </div>

                                            <div class="row" id="MEPEMEPopUpdiv" title="MEP/EME" style="display: none">

                                                <div class="col-lg-7">
                                                    <p><strong>MEP/EME</strong></p>

                                                    <p>
                                                        </p>
                                                </div>

                                                <div class="col-lg-5" style="margin-top: 07px;">
                                                    <img src="Content/assets/images/PageImage/MEPOREME.png" alt="" width="335px" height="300px;" />
                                                </div>
                                            </div>

                                             <div class="row" id="RenovationNInteriorSolutionPopUpdiv" title="Renovation & Interior Solution" style="display: none">

                                                <div class="col-lg-7">
                                                    <p><strong>Renovation & Interior Solution</strong></p>

                                                    <p>
                                                        </p>
                                                </div>

                                                <div class="col-lg-5" style="margin-top: 07px;">
                                                    <img src="Content/assets/images/PageImage/RenovationNEnteriorSolution.png" alt="" width="335px" height="300px;" />
                                                </div>
                                            </div>

                                            <div class="row" id="FaçadeCleaningPopUpdiv" title="Façade Cleaning" style="display: none">

                                                <div class="col-lg-7">
                                                    <p><strong>Façade Cleaning</strong></p>

                                                    <p>
                                                        </p>
                                                </div>

                                                <div class="col-lg-5" style="margin-top: 07px;">
                                                    <img src="Content/assets/images/PageImage/FacadeCleaning.png" alt="" width="335px" height="300px;" />
                                                </div>
                                            </div>


                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnConstructionMaintenancePopUp" runat="server" Text="Construction Maintenance" /></span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnMEPEMEPopUp" runat="server" Text="MEP/EME" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnRenovationNInteriorSolutionPopUp" runat="server" Text="Renovation & Interior Solution" /></span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnFaçadeCleaningPopUp" runat="server" Text="Façade Cleaning" />

                                            </span>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading" role="tab" id="headingThree">
                                        <h4 class="panel-title">
                                            <a class="collapsed" id="payPerUseHead" runat="server" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                PAY PER USE
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
                                                <asp:LinkButton ID="btnBoardOfDirectorProfilePopUp" runat="server" Text="Property Sale Rental" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="LinkButton6" runat="server" Text="Car Wash" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="LinkButton7" runat="server" Text="Reserve Fund Management" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="LinkButton8" runat="server" Text="Contract Management" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="LinkButton9" runat="server" Text="Exclusive Cleaning Package" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="LinkButton10" runat="server" Text="Laundry" />

                                            </span>
                                            <br />

                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="LinkButton11" runat="server" Text="Personal Trainer" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="LinkButton12" runat="server" Text="Event Manager" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="LinkButton13" runat="server" Text="Pet Care" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="LinkButton14" runat="server" Text="Baby Sitter" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="LinkButton15" runat="server" Text="Beauty Care" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="LinkButton16" runat="server" Text="Massage" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="LinkButton17" runat="server" Text="Car Mechanic" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="LinkButton18" runat="server" Text="Catering Services" />

                                            </span>
                                            
                                        </div>
                                    </div>
                                </div>


                                <%-- <div style="height: 35px; margin-bottom: 20px;">
                                <asp:LinkButton ID="btnCheifExecutiveOfficer" runat="server" ForeColor="black" CssClass="bx-controls" Text="CHIEF EXECUTIVE OFFICER" OnClick="btnCheifExecutiveOfficer_Click" />
                            </div>--%>


                                <div class="panel">
                                    <div class="panel-heading" role="tab" id="headingFour">
                                        <h4 class="panel-title">
                                            <a class="collapsed" id="riskManagementHead" runat="server" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                                RISK MANAGEMENT
                            
                                        <span class="fa toggle-icon"></span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div aria-expanded="false" id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                        <div class="panel-body">
                                            <div class="row" id="SafetyPopUpdiv" title="Safety" style="display: none">
                                                <div class="col-lg-7">
                                                    <p><strong>Safety</strong></p>

                                                </div>

                                                 <div class="col-lg-5">
                                                    <img src="Content/assets/images/PageImage/Safty.png" alt="" width="335px;" height="300px;" />

                                                </div> 
                                            </div>

                                             <div class="row" id="InsuranceManagementPopUpdiv" title="Insurance Management" style="display: none">
                                                <div class="col-lg-7">
                                                    <p><strong>Insurance Management</strong></p>

                                                </div>

                                                 <div class="col-lg-5">
                                                    <img src="Content/assets/images/PageImage/InsuranceManagement.png" alt="" width="335px;" height="300px;" />

                                                </div> 
                                            </div>

                                            <div class="row" id="DisasterManagementPopUpdiv" title="Disaster Management" style="display: none">
                                                <div class="col-lg-7">
                                                    <p><strong>Disaster Management</strong></p>

                                                </div>

                                                 <div class="col-lg-5">
                                                    <img src="Content/assets/images/PageImage/DisasterManagement.png" alt="" width="335px;" height="300px;" />

                                                </div> 
                                            </div>

                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnSafetyPopUp" runat="server" Text="Safety" />

                                            </span>
                                            <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnInsuranceManagementPopUp" runat="server" Text="Insurance Management" />

                                            </span>
                                             <br />
                                            <span class="fa fa-angle-right">
                                                <asp:LinkButton ID="btnDisasterManagementPopUp" runat="server" Text="Disaster Management" />

                                            </span>
                                              

                                        </div>
                                    </div>
                                </div>
                                 

                            </div>
                        </div>
                        <div class="col-sm-6" id="imgSoftServices" runat="server" style="display:block;">
                            <img src="Content/assets/images/PageImage/SoftServices.png" alt="" width="580px;" height="284px;" />
                        </div>
                        
                        <div class="col-sm-6" id="imgHardServices" runat="server" style="display:none;">
                            <img src="Content/assets/images/PageImage/HardServices.png" alt="" width="580px;" height="284px;" />
                        </div>

                         <div class="col-sm-6" id="imgPayPerUse" runat="server" style="display:none;">
                            <img src="Content/assets/images/PageImage/PayPerUse.png" alt="" width="580px;" height="284px;" />
                        </div>

                         <div class="col-sm-6" id="imgRiskManagement" runat="server" style="display:none;">
                            <img src="Content/assets/images/PageImage/RiskManagement.png" alt="" width="580px;" height="284px;" />
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
