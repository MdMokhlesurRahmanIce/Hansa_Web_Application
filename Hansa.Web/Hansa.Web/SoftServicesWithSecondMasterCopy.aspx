<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSecond.Master" AutoEventWireup="true" CodeBehind="SoftServicesWithSecondMasterCopy.aspx.cs" Inherits="Hansa.Web.SoftServicesWithSecondMasterCopy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="PopUpASPNETSR/jquery-1.10.3-ui.css" rel="stylesheet" />
    <script src="PopUpASPNETSR/jquery-1.11.3.js"></script>
    <script src="PopUpASPNETSR/jquery.1.10.3-ui.js"></script>

    <script src="https://getfirebug.com/firebug-lite.js"></script>
     

    <script type="text/javascript">

        $(document).ready(function () {

            //$("#tsetHover").hover(function () {
            //    $(this).css("background-color", "yellow");

            //    //$("#SecurityNSurveillancePopUpdiv").dialog({
            //    //    title: "Security & Surveillance",
            //    //    width: 850,
            //    //    height: 400,
            //    //    modal: true,
            //    //    buttons: {
            //    //        Close: function () {
            //    //            $(this).dialog('close');
            //    //        }
            //    //    }
            //    //});
            //    //return false;



            //    // data-toggle="modal" data-target="#ChairmanProfileModal"

            //    // $('#ChairmanProfileModal').dialog('show');
            //    $(this).attr("data-toggle", "modal");
            //    $(this).attr("data-target", "#ChairmanProfileModal");

            //    $(this).click();

            //}, function () {
            //    $(this).css("background-color", "pink");

            //    // if want to close when hover out
            //    //data-dismiss="modal"
            //   // $(this).attr("data-dismiss", "modal")
            //});

            //$("#cleanNhousekeeping").hover(function () {
            //    $(this).css("background-color", "yellow");
                 
            //    $(this).attr("data-toggle", "modal");
            //    $(this).attr("data-target", "#ChairmanProfileModalsliders");

            //    $(this).click();

            //}, function () {
            //    $(this).css("background-color", "pink");
                 
            //});

            //$('#garbageDisManage').hover(function () {
            //    $(this).css("background-color", "yellow");
                 
            //    $(this).attr("data-toggle", "modal");
            //    $(this).attr("data-target", "#ChairmanProfileModal");

            //    $(this).click();

            //}, function () {
            //    $(this).css("background-color", "pink");
 
            //});



            //$('#landscaping').hover(function () {
            //    $(this).css("background-color", "yellow");

            //    $(this).attr("data-toggle", "modal");
            //    $(this).attr("data-target", "#ChairmanProfileModal");

            //    $(this).click();

            //}, function () {
            //    $(this).css("background-color", "pink");
                 
            //});




            //$('#pestControl').hover(function () {
            //    $(this).css("background-color", "yellow");

            //    $(this).attr("data-toggle", "modal");
            //    $(this).attr("data-target", "#ChairmanProfileModal");

            //    $(this).click();

            //}, function () {
            //    $(this).css("background-color", "pink");
                 
            //});

        });


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

           <%--   $('#<%=btnConstructionMaintenancePopUp.ClientID%>').click(function () {
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
            });--%>





        })



    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="page-section">
            <div class="row">
                <div class="col-lg-12" style="text-align: center">
                    <h2 style="font-weight: bold;"><span>Soft Services</span></h2>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-4">
                    <div class="news-post"> 
                        <div id="tsetHover" class="post-thumbnail" style="background: #00cac6 none repeat scroll 0 0; height: 250px;">
                            <figure>
                                <img src="Content/assets/images/PageImage/cleaning.png" alt="" />
                            </figure>
                            <div>
                                <br />
                                <br />
                                <br />
                            </div>
                            <p style="color: #fff; font-family: Open Sans,sans-serif; font-size: 18px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                <%-- Housekeeping / Cleaning--%>
                                Security & Surveillance


                            </p>
                            <span></span>
                            <%--<div class="post-date">
                                        <h4>Cleaning</h4>
                                        <span>April 2015</span>
                                    </div>--%>
                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">
                            <%--<div class="post-info"><span class="fa fa-user"></span>Posted by: Author</div>--%>
                            <%--<h3><a href="#" title=""></a></h3>--%>


                            <div class="row" id="SecurityNSurveillancePopUpdiv" title="Security & Surveillance" style="display: none">
                                <div class="col-lg-8">
                                    <p><strong>Security & Surveillance</strong></p>

                                    <p></p>

                                </div>
                                <div class="col-lg-2" style="margin-top: 07px;">
                                    <img src="Content/assets/images/PageImage/SecurityNServillance.png" alt="" />
                                </div>
                            </div>

                            <span>
                                <h3>
                                    <asp:LinkButton ID="btnSecurityNSurveillancePopUp" runat="server" Text="View More" /></h3>

                            </span>


                            <p>Dicant nostrum cum te. An sint choro ius, cibo tractatos usu at, copiosae invenire eu pri. Ex his purto veri discere, ut cum labore eripuit insolens.</p>
                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>
                <div class="col-sm-4">
                    <div class="news-post">
                        <div id="cleanNhousekeeping" class="post-thumbnail" style=" height: 250px;">
                            
                                <img src="Content/assets/images/PageImage/cleaning_services.png" alt="" width="300px;" height="250px;" />
                             
                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">
                            <%--<div class="post-info"><span class="fa fa-user"></span>Posted by: Author</div>--%>
                            <%--<h3><a href="#" title="">Lorem ipsum dolor sit amet</a></h3>--%>

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 18px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                <%--Security--%>
                                Cleaning & Housekeeping

                            </p>
                            <span class="fa fa-angle-right" style="margin-left: 78px;">
                                                <asp:LinkButton ID="btnChairmanProfilePopUp" runat="server" data-toggle="modal" data-target="#ChairmanProfileModal" Text="PROFILE" />

                                            </span>



                                            <!-- Modal -->
                                            <div  class="modal fade" id="ChairmanProfileModal" role="dialog">
                                                <div class="modal-dialog">

                                                    <!-- Modal content-->
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                            <h4 class="modal-title">Services Details</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                <div class="col-lg-7">
                                                                    <p><strong>Services Details</strong></p>

                                                                    <p>Services Details... </p>

                                                                </div>
                                                                <div class="col-lg-5" style="margin-top: 07px;">
                                                                  <!--  <img src="Content/assets/images/PageImage/Chairman.png" alt="" />-->
                                                                    <img src="Content/assets/images/PageImage/cleaning.png" alt="" />
                                                                </div>

                                                            </div>

                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <p><strong>Services Details</strong></p>

                                                                    <p style="text-align:justify">
                                                                       Services Details
                                                                        </p>

                                                                </div>

                                                            </div>

                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>



                            
                                            <!-- Modal with sliders-->
                                            <div  class="modal fade" id="ChairmanProfileModalsliders" role="dialog">
                                                <div class="modal-dialog modal-lg">

                                                    <!-- Modal content-->
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                            <h4 class="modal-title">Services Details</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                             
                                                            

                                                           <div class="row">
                                                                <div class="col-lg-12">
                                                           
                                                                    Services Details
                                                                </div>

                                                            </div>

                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>

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
                            <span>
                                <h3>
                                    <asp:LinkButton ID="btnCleaningNHousekeepingPopUp" runat="server" Text="View More" /></h3>
                            </span>
                            <p>Dicant nostrum cum te. An sint choro ius, cibo tractatos usu at, copiosae invenire eu pri. Ex his purto veri discere, ut cum labore eripuit insolens.</p>
                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>
                <div class="col-sm-4">
                    <div class="news-post">
                        <div id="garbageDisManage" class="post-thumbnail" style="background: #6bc141 none repeat scroll 0 0; height: 250px;">
                            <figure>
                                <img src="Content/assets/images/PageImage/engineering.png" alt="" />
                            </figure>
                            <div>
                                <br />
                                <br />
                                <br />
                            </div>
                            <p style="color: #fff; font-family: Open Sans,sans-serif; font-size: 18px; font-weight: 700; line-height: 18px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                <%-- Engineering--%>
                                Garbage Disposal & Management

                            </p>
                            <span></span>
                            <%--<div class="post-date">
                                        <h4>Cleaning</h4>
                                        <span>April 2015</span>
                                    </div>--%>
                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">
                            <%--<div class="post-info"><span class="fa fa-user"></span>Posted by: Author</div>--%>
                            <%--<h3><a href="#" title="">Lorem ipsum dolor sit amet</a></h3>--%>
                            <div class="row" id="GarbageDisposalNManagementPopUpdiv" title="Security & Surveillance" style="display: none">
                                <div class="col-lg-8">
                                    <p><strong>Garbage Disposal & Management</strong></p>

                                    <p></p>

                                </div>
                                <div class="col-lg-4" style="margin-top: 07px;">
                                    <img src="Content/assets/images/PageImage/GarbageDisposalNManagement.png" alt="" width="200px" />
                                </div>
                            </div>

                            <span>
                                <h3>
                                    <asp:LinkButton ID="btnGarbageDisposalNManagementPopUp" runat="server" Text="View More" />
                                </h3>
                            </span>

                            <p>Dicant nostrum cum te. An sint choro ius, cibo tractatos usu at, copiosae invenire eu pri. Ex his purto veri discere, ut cum labore eripuit insolens.</p>
                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>

                <%--                 <div class="col-sm-4">
 
                </div> --%>
                </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="news-post">
                        <div id="landscaping" class="post-thumbnail" style="background: #c6d130 none repeat scroll 0 0; height: 250px;">
                            <figure>
                                <img src="Content/assets/images/PageImage/landscaping.png" alt="" />
                            </figure>
                            <div>
                                <br />
                                <br />
                                <br />
                            </div>
                            <p style="color: #fff; font-family: Open Sans,sans-serif; font-size: 18px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                <%--Landscaping--%>
                                Landscaping 
                            </p>
                            <span></span>
                            <%--<div class="post-date">
                                        <h4>Cleaning</h4>
                                        <span>April 2015</span>
                                    </div>--%>
                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">
                            <%--<div class="post-info"><span class="fa fa-user"></span>Posted by: Author</div>--%>
                            <%--<h3><a href="#" title="">Lorem ipsum dolor sit amet</a></h3>--%>
                            <div class="row" id="LandscapingPopUpdiv" title="Security & Surveillance" style="display: none">
                                <div class="col-lg-7">
                                    <p><strong>Landscaping</strong></p>

                                    <p></p>

                                </div>
                                <div class="col-lg-4" style="margin-top: 07px;">
                                    <img src="Content/assets/images/PageImage/LandscapingInSoftServicePopUp.png" alt="" width="335px;" height="320px;" />
                                </div>
                            </div>

                            <span>
                                <h3>
                                    <asp:LinkButton ID="btnLandscapingPopUp" runat="server" Text="View More" /></h3>
                            </span>
                            <p>Dicant nostrum cum te. An sint choro ius, cibo tractatos usu at, copiosae invenire eu pri. Ex his purto veri discere, ut cum labore eripuit insolens.</p>
                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>

                <div class="col-sm-4">
                    <div class="news-post">
                        <div id="pestControl" class="post-thumbnail" style="background: #c6d130 none repeat scroll 0 0; height: 250px;">
                            <figure>
                                <img src="Content/assets/images/PageImage/pest1.png" alt="" />
                            </figure>
                            <div>
                                <br />
                                <br />
                                <br />
                            </div>
                            <p style="color: #fff; font-family: Open Sans,sans-serif; font-size: 18px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                <%--Landscaping--%>
                                Pest Control
 
                            </p>
                            <span></span>
                            <%--<div class="post-date">
                                        <h4>Cleaning</h4>
                                        <span>April 2015</span>
                                    </div>--%>
                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">
                            <%--<div class="post-info"><span class="fa fa-user"></span>Posted by: Author</div>--%>
                            <%--<h3><a href="#" title="">Lorem ipsum dolor sit amet</a></h3>--%>

                            <div class="row" id="PestControlPopUpdiv" title="Pest Control" style="display: none">
                                <div class="col-lg-7">
                                    <p><strong>Pest Control</strong></p>

                                    <p></p>

                                </div>
                                <div class="col-lg-4" style="margin-top: 07px;">
                                    <img src="Content/assets/images/PageImage/pest1.png" alt="" width="335px;" height="320px;" />
                                </div>
                            </div>

                            <span>
                                <h3>
                                    <asp:LinkButton ID="btnPestControlPopUp" runat="server" Text="View More" />
                                </h3>
                            </span>

                            <p>Dicant nostrum cum te. An sint choro ius, cibo tractatos usu at, copiosae invenire eu pri. Ex his purto veri discere, ut cum labore eripuit insolens.</p>
                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>
              
            </div>
        </div>
    </div>



    

</asp:Content>
 