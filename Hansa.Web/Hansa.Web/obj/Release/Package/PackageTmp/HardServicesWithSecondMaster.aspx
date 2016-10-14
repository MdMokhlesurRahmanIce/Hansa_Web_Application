<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="HardServicesWithSecondMaster.aspx.cs" Inherits="Hansa.Web.HardServicesWithSecondMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="PopUpASPNETSR/jquery-1.10.3-ui.css" rel="stylesheet" />
    <script src="PopUpASPNETSR/jquery-1.11.3.js"></script>
    <script src="PopUpASPNETSR/jquery.1.10.3-ui.js"></script>

    <script type="text/javascript">

        $(document).ready(function () {

            $('#hsForMainSliders').hide();
            $('#hsForOngoingProjects').hide();
            $('#hsForUpCommingProjects').hide();

            //start click for show modal


            // start for click event to modal show

            $("#ConstructionMaintenance_newspost").click(function () {

                $("#ConstructionMaintenanceModal").modal('show');
                //alert('sdfsd');
            });

            $("#mepNeme_newspost").click(function () {

                $("#mepNemeModal").modal('show');
                //alert('sdfsd');
            });

          //  $("#RenovationInteriorSolution_newspost").click(function () {

          //      $("#RenovationInteriorSolutionModal").modal('show');
                //alert('sdfsd');
          //  });

            $("#FacadeCleaning_newspost").click(function () {

                $("#FacadeCleaningModal").modal('show');
                //alert('sdfsd');
            });

         

            // end for click event to modal show

            $("#ConstructionMaintenance_newspost").hover(function () {

                //$(this).tooltip();
                $(this).attr('title', 'Click here to show details.');
                 $(this).css("color", "yellow");
                $(this).css('cursor', 'pointer');
            });


            $("#mepNeme_newspost").hover(function () {

                //$(this).tooltip();
                $(this).attr('title', 'Click here to show details.');
                // $(this).css("background-color", "yellow");
                $(this).css('cursor', 'pointer');
            });

          //  $("#RenovationInteriorSolution_newspost").hover(function () {

                //$(this).tooltip();
           //     $(this).attr('title', 'Click here to show details.');
                // $(this).css("background-color", "yellow");
           //     $(this).css('cursor', 'pointer');
         //   });

            $("#FacadeCleaning_newspost").hover(function () {

                //$(this).tooltip();
                $(this).attr('title', 'Click here to show details.');
                // $(this).css("background-color", "yellow");
                $(this).css('cursor', 'pointer');
            });

 




            // start hover for show modal 

            //$("#ConstructionMaintenance").hover(function () {
            //    // $(this).css("background-color", "yellow");

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
            //    $(this).attr("data-target", "#ConstructionMaintenanceModal");

            //    $(this).click();

            //}, function () {
            //    // $(this).css("background-color", "pink");

            //    // if want to close when hover out
            //    //data-dismiss="modal"
            //    // $(this).attr("data-dismiss", "modal")
            //});

            //$("#mepNeme").hover(function () {
            //    // $(this).css("background-color", "yellow");

            //    $(this).attr("data-toggle", "modal");
            //    $(this).attr("data-target", "#mepNemeModal");

            //    $(this).click();

            //}, function () {
            //    // $(this).css("background-color", "pink");

            //});

            //$('#RenovationInteriorSolution').hover(function () {
            //    // $(this).css("background-color", "yellow");

            //    $(this).attr("data-toggle", "modal");
            //    $(this).attr("data-target", "#RenovationInteriorSolutionModal");

            //    $(this).click();

            //}, function () {
            //    // $(this).css("background-color", "pink");

            //});



            //$('#FacadeCleaning').hover(function () {
            //    // $(this).css("background-color", "yellow");

            //    $(this).attr("data-toggle", "modal");
            //    $(this).attr("data-target", "#FacadeCleaningModal");

            //    $(this).click();

            //}, function () {
            //    //  $(this).css("background-color", "pink");

            //});

            // end for hover to show modal

        });

        //alert("ufu");

        $(function () {



            <%--  $('#<%=btnConstructionMaintenancePopUp.ClientID%>').click(function () {
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
            });--%>


            <%--  $('#<%=btnSafetyPopUp.ClientID%>').click(function () {
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

        <div>
            <%--<div class="page-section">--%>
            <div class="row">
                <div class="col-lg-12" style="text-align: center">
                    <h2 style="font-weight: bold;"><span>Hard Services</span></h2>
                </div>
            </div>
            <div class="row">
                <%-- <div class="col-sm-3">
                    <div class="news-post">
                        <div class="post-thumbnail" style="background: #00cac6 none repeat scroll 0 0; height: 250px;">
                            <figure>
                                <img src="Content/assets/images/PageImage/cleaning.png" alt="" />
                            </figure>
                            <div>
                                <br />
                                <br />
                                <br />
                            </div>
                            <p style="color: #fff; font-family: Open Sans,sans-serif; font-size: 18px; font-weight: 700; line-height: 18px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                 
                                Construction Maintenance
                                 
                            </p>
                            <span></span>
                    
                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;"> 

                            <div class="row" id="ConstructionMaintenancePopUpdiv" title="Construction Maintenance" style="display: none">
                                <div class="col-lg-7">
                                    <p><strong>Construction Maintenance</strong></p> 
                                </div>
                                <div class="col-lg-5" style="margin-top: 07px;">
                                    <img src="Content/assets/images/PageImage/ConstructionMaintanance.png" alt="" width="335px" />
                                </div>
                            </div>

                            <span>
                                <h3>
                                    <asp:LinkButton ID="btnConstructionMaintenancePopUp" runat="server" Text="View More" />
                                </h3>
                            </span>




                            <p>Dicant nostrum cum te. An sint choro ius, cibo tractatos usu at, copiosae invenire eu pri. Ex his purto veri discere, ut cum labore eripuit insolens.</p>
                        </div>
                    </div>
                   
                </div>
                <div class="col-sm-3">
                    <div class="news-post">
                        <div class="post-thumbnail" style="background: #56bedf none repeat scroll 0 0; height: 250px;">
                            <figure>
                                <img src="Content/assets/images/PageImage/security.png" alt="" />
                            </figure>
                            <div>
                                <br />
                                <br />
                                <br />
                            </div>
                            <p style="color: #fff; font-family: Open Sans,sans-serif; font-size: 18px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                
                                MEP/EME

                            </p>
                            <span></span>
                            
                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;"> 

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

                            <span>
                                <h3>
                                    <asp:LinkButton ID="btnMEPEMEPopUp" runat="server" Text="View More" />
                                </h3>

                            </span>

                            <p>Dicant nostrum cum te. An sint choro ius, cibo tractatos usu at, copiosae invenire eu pri. Ex his purto veri discere, ut cum labore eripuit insolens.</p>
                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>
                <div class="col-sm-3">
                    <div class="news-post">
                        <div class="post-thumbnail" style="background: #6bc141 none repeat scroll 0 0; height: 250px;">
                            <figure>
                                <img src="Content/assets/images/PageImage/engineering.png" alt="" />
                            </figure>
                            <div>
                                <br />
                                <br />
                                <br />
                            </div>
                            <p style="color: #fff; font-family: Open Sans,sans-serif; font-size: 18px; font-weight: 700; line-height: 18px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                
                               Renovation & Interior Solution

                            </p>
                            <span></span>
                             
                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;"> 
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

                            <span>
                                <h3>
                                    <asp:LinkButton ID="btnRenovationNInteriorSolutionPopUp" runat="server" Text="View More" /></h3>
                            </span>

                            <p>Dicant nostrum cum te. An sint choro ius, cibo tractatos usu at, copiosae invenire eu pri. Ex his purto veri discere, ut cum labore eripuit insolens.</p>
                        </div>
                    </div>
                    <!-- /.news-post -->
                </div> 
                <div class="col-sm-3">
                    <div class="news-post">
                        <div class="post-thumbnail" style="background: #c6d130 none repeat scroll 0 0; height: 250px;">
                            <figure>
                                <img src="Content/assets/images/PageImage/landscaping.png" alt="" />
                            </figure>
                            <div>
                                <br />
                                <br />
                                <br />
                            </div>
                            <p style="color: #fff; font-family: Open Sans,sans-serif; font-size: 18px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                
                                Façade Cleaning 
                            </p>
                            <span></span> 
                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;"> 
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

                            <span>
                                <h3>
                                    <asp:LinkButton ID="btnFaçadeCleaningPopUp" runat="server" Text="View More" />
                                </h3>
                            </span>

                            <p>Dicant nostrum cum te. An sint choro ius, cibo tractatos usu at, copiosae invenire eu pri. Ex his purto veri discere, ut cum labore eripuit insolens.</p>
                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>--%>

                <div class="col-sm-3">
                    <div class="news-post" style="width: 270px; height: 320px;" id="ConstructionMaintenance_newspost" data-toggle="modal" data-target="ConstructionMaintenanceModal">
                        <div id="ConstructionMaintenance" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/constraction_maintenance.jpg" alt="" width="270px;" height="265px;" />

                        </div>

                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                Construction Maintenance


                            </p>
                        </div>

                    </div>
                </div>

                <!-- Modal -->
                <div class="modal fade" id="ConstructionMaintenanceModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"><strong>Construction Maintenance Services</strong></h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p style="text-align: justify">
                                            Since we know, as per the law of the country as well as the standard practice of Unique Group the warranty period for all kinds of
                                             maintenance works resultant of construction faults is twenty four months with effect from the date of Project readiness declaration 
                                            from Borak Real Estate (BRE). Requirement of any such maintenance work should however arise and relate solely to proven defective workmanship 
                                            (if any) of BRE and at no stage the warranty covers damages caused by users’ fault or improper usage by clients/ end users. Cost of all maintenance
                                             works during the warranty period and within the declared scope of maintenance policy shall be borne by BRE. Cost of all maintenance works on expiry of 
                                            the warranty period and beyond the scope of the maintenance policy are to be borne by the client and for such cases, HANSA’s involvement will be 
                                            restricted to arranging and providing the necessary technical support only. Cost estimation for such cases includes (but not limited to) prices of 
                                            materials or equipments, labour cost and material / equipment transportation cost.
                                        </p>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>Maintenance work under warranty period: </strong></p>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12">

                                        <p style="text-align: justify">
                                            As per company declaration The Facilities Management Services of HANSA will perform all types of minor / major maintenance work 
                                            within the service and scope of the declared warranty without charging any cost from the clients, but in case of any kind of 
                                            damages occurred by the usage of clients HANSA will provide only technical supports to the clients, but the total cost of these 
                                            type of works are to be borne by the clients.
                                        </p>

                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-lg-12">

                                        <p style="text-align: justify">
                                            1.	Nature of maintenance works during the warranty period covers only those type of works which arise and relate solely due to proven defective workmanship of BRE, such as
                                            <br />
                                            •	Leakage in Plumbing Lines,
                                            <br />
                                            •	Wall Dampness,
                                            <br />
                                            •	Painting defects,
                                            <br />
                                            •	Wall cracks (nominal hair line cracks on the exterior surfaces are excluded) etc.
                                            <br />

                                        </p>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">

                                        <p style="text-align: justify">
                                            2.	Replacement/repair of the following things after taking the final possession will not be covered by Warranty Policy.
                                            <br />
                                            •	Scratched, Chipped, Cracked or Broken problems of tiles, Marble & Granite.
                                            <br />
                                            •	Scratched, Chipped, Cracked or Broken problems of Commode, Basin, Bathtub/Shower Tray/Jacuzzi.<br />
                                            •	Scratched or Broken problems of Switches & Sockets.<br />
                                            •	Scratched or Broken problems of Thai Aluminium& Glass works.<br />
                                            •	Scratched, Cracked, Shrinkage or Broken problems of Door Shutters & Frames.<br />
                                            •	Missing complain of any CP & Sanitary Accessories or Electrical Switches & Sockets.<br />
                                            •	Any Damp/Damage occurs due the interior works by the Allottees.<br />

                                            3.	Perfect match of size, shape & color shades of Marble & tiles with those of selected samples are often difficult to 
                                            ensure because of natural & manufacturing problem, such minor variances are to be acceptable to the client.<br />
                                            4.	Certain maintenance works within the warranty period, such as removal of waste water line jam, correction of operating problem 
                                            of door shutter & Thai sliding section etc. works will be done only for once.<br />
                                            5.	If any problem arises due the changes done as per client’s modification on own arrangement like;<br />
                                            •	Toilet shifting/omitting,
                                            <br />
                                            •	Downwash line shifting/omitting.
                                            <br />
                                            •	Any plumbing line shifting/omitting.<br />
                                            •	Shifting of Electrical line/Fixtures.<br />
                                            •	Construction of additional false ceiling.
                                            <br />
                                            •	Omitting/dismantling of existing false ceiling.<br />
                                            •	Interior decoration works etc.
                                            <br />
                                            HANSA’s warranty period will not be applicable for the resulting maintenance works requirements.<br />
                                            6.	The Warranty period for all EME equipments like,Lifts, Generators, Substation, Transformers, Water pumps, 
                                            Air Conditioners, CCTV& Camera,Fire detection & protection system, AVR, IPS, Solar Panels, 
                                            Inverters, Batteries, Ventilation systems, Geysers,Swimming Pool equipments, Steam & Sauna equipments, 
                                            Jacuzzi equipments, Gymnasium  equipments etc. will only be considered as the warranty coverage given by 
                                            
                                            the specific vendors/suppliers. 
                                        </p>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>Maintenance works performing Procedure: </strong></p>

                                        <p style="text-align: justify">
                                            •	Client will submit complaint in written form to the respective Facility Manager of the Complex appointed by HANSA asking for the required maintenance Services.<br />
                                            •	After receiving the complaints from client, maintenance team of HANSA will visit the respective apartment/space as soon as possible at mutually agreed convenient time for necessary inspection. During such inspection, the Client/authorized representative must be personally present.<br />
                                            •	Client will have to provide at least a period of10 days to start maintenance work in regular case for budget estimation and manpower arrangement as well as for material collection. (If urgent HANSA will try to solve the problem within shortest possible time). HANSA maintenance team will provide a working schedule as per convenient time of both parties.<br />
                                            •	After completion of the maintenance work, client needs to put his/her signature on the work completion form with observation (if any), on quality of work done.<br />
                                            •	Total operational activities including tentative deadline will be sent to the allottees/occupants by HANSA before commencement of work.<br />

                                        </p>

                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>To be noted: </strong></p>

                                        <p style="text-align: justify">
                                            •	After commencement of maintenance work, respective allottee / client will have to provide uninterrupted support to the maintenance team to ensure utilization of full working hour. In case of any non-cooperation by any client that may impede planned performance of maintenance works, HANSA reserves the right to postponed or even cancel any maintenance work agreed.<br />
                                            •	End result of some Maintenance works may not be of same nature and finishing quality to match previous state of the work, like paint & Polish work, tiles fixing work etc.<br />
                                            •	The root cause of some maintenance / repair requirement is often difficult to identify at first sight that may warrant intervention more than once for the same maintenance work. Client should consider this matter positively.<br />
                                            •	If any supporting equipment or replacement material is readily available with the client, he/she should share with these with the maintenance personnel of HANSA that will not only lead to cost reduction but also expedite work progress.<br />
                                            •	Working hour of every maintenance work will be started at 9.30 am. & will be going on continuously up to 5.30 pm.<br />

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

                <div class="col-sm-3">
                    <div class="news-post" style="width: 270px; height: 320px;" id="mepNeme_newspost" data-toggle="modal" data-target="mepNemeModal">
                        <div id="mepNeme" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/mepNeme.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                mep/eme

                            </p>

                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>

                <!-- Modal -->
                <div class="modal fade" id="mepNemeModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"><strong>MEP/EME</strong></h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>Electricians:</strong></p>
                                        <p style="text-align: justify">
                                            •	The electrician is responsible to make sure that everything is installed in a safe manner.<br />
                                            •	Electrician makes connection of wires to circuit breakers, transformers or other components.<br />
                                            •	When the work has been completed the electrician then must inspect electrical systems, equipments and components to identify hazards or defects.<br />
                                            •	Do an adjustment or repair if it is required in accordance with code.<br />
                                            •	Advise management if any hazardous conditions are found.<br />
                                            •	Electrician tests electrical systems and continuity of circuits, and electrical wiring.<br />
                                            •	Operates power hand tools and other specialized electrical equipment.<br />
                                            •	Constructs and maintains service equipment.<br />
                                            •	Reads electrical circuit diagrams.<br />
                                            •	 Regular check of all electrical equipment and electrical lines.<br />
                                            •	Ensure timely fuel for generator.<br />
                                            •	 Come up with solution during emergency case.<br />
                                            •	Regular checking of Photo copier, Scanner, PABX, UPS, AC, PC, Printer and Generator.<br />
                                            •	 Installs conductors, splices cable, builds terminations and does necessary hook-up for Primary power lines.<br />
                                            •	Sets poles, strings overhead lines and does overhead line maintenance.<br />
                                            •	 Plans, installs, modifies, troubleshoots and repairs a variety of complete systems as well as any  parts of these systems .<br />
                                            •	Interprets and applies the National Electrical Code, local codes, building plans, blueprints, wiring, diagrams and engineering drawings.<br />
                                            •	 Uses hand tools and power tools such as cable pullers, hydraulic benders, and pipe threading machines.<br />
                                            •	Recognizes parts such as resistors, capacitors and transistors.<br />
                                            •	Operates test equipment such as signal generators, signal tracers and oscilloscopes.<br />
                                            •	Reads schematics of uncomplicated assemblies to determine location of defective parts. 
                                        </p>
                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>PABX OPERATOR:</strong></p>
                                        <p style="text-align: justify">
                                            Provide telephone calls services support.<br />

                                            •	Ensure all calls transfer are appropriately routed to the requested destination.<br />
                                            •	To handle phone traffic.<br />
                                            •	Operate manually connected each call as it came in or went out.<br />
                                            •	The operator must handle and direct incoming calls, route these incoming calls to the correct individuals or send to message system.<br />
                                            •	Corrects and updates posted information as needed & assists with the maintenance of directories on-call list, etc.<br />
                                            •	Accurately utilizes the features of the PBX consoles, headsets, telephones and other related equipment.<br />
                                            •	Assist with maintaining cleanliness, safety and security of the PBX area.<br />
                                            •	Answers multiple incoming telephone lines.<br />
                                            •	Provides information to callers as appropriate.<br />
                                            •	 Maintains confidentiality, security and integrity of patient and organizational data.<br />
                                            •	Ensures release of information is consistent with all privacy policies.<br />
                                            •	 Monitors all alarms located in PBX and notifies appropriate personnel as required.<br />
                                            •	Responds quickly and accurately to disaster and emergency situations as required, remaining calm.<br />


                                        </p>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>LIFT OPERATOR: </strong></p>
                                        <p style="text-align: justify">
                                            •	Ensure the safe and efficient uphill transport of residents and guests.<br />
                                            •	Assist and inform residents whenever in proper use of lifts.<br />
                                            •	If any problem arise inform the facility manager.<br />
                                            •	Assist in emergencies as required i.e. lift evacuations, avalanche rescue, etc.<br />
                                            •	The work is to be done with people in a cheerful courteous manner.
                                            <br />
                                            •	Execute the proper, efficient, and courteous loading and unloading of guests.<br />
                                            •	 Inspect, record, and report the condition of a lift machinery, and maintain proper and safe levels of snow   throughout the entire lift station.<br />
                                            •	 Foster excellent guest relations through positive interaction with guests.<br />
                                            •	Able to knowledge about fire fighter in emergency Case.<br />
                                            •	Other lift operation duties as assigned.<br />
                                            •	Successfully handle with all conditions associated with this position.<br />
                                            •	Identify potential hazards and report them immediately. 
                                        </p>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>PLUMBER </strong></p>
                                        <p style="text-align: justify">
                                            •	Main activities / job description of plumber.<br />
                                            •	Assemble, install and repairs pipes, fittings and fixtures of heating, water, and drainage system.<br />
                                            •	Assemble pipe sections, tubing and fittings, using couplings, clamps, screws, bolts, cement, plastic.<br />
                                            •	Solvents, caulking, or soldering, brazing and welding equipments.<br />
                                            •	Fill pipes or plumbing fixtures with water or air and observe pressure gauges to detect and locate leaks.<br />
                                            •	Review and maintain building codes and specifications to determine works details and procedures.<br />
                                            •	To inspect water reservoir is in full brim.<br />
                                            •	To ensure operation of all pumps working normal.<br />
                                            •	To clean the water reservoir periodically.<br />
                                            •	Periodically dismantle the pump and check the tightness of all connections and fittings and clean as required.<br />
                                            •	Keep records of works reports.<br />
                                            •	Locate and mark the position of pipes installations, connections, passage holes and fixtures in structures, using measuring instruments.<br />
                                            •	Repair and maintain all kinds of fittings and fixtures at the premise and replacing defective washers, replacing or mending broken pipes, and 
                                            opening clogged drains (on call at additional cost basis).<br />
                                            •	Install sanitary and water piping systems and extend piping to connect fixtures and plumbing to these systems.<br />
                                            •	Maintain swimming pool as per standard operating procedure provided by HANSA.<br />
                                            •	Fulfill any other requirement as and when required.<br />

                                        </p>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>METER READER </strong></p>
                                        <p style="text-align: justify">
                                            •	Read all respective meters in the premise.<br />
                                            •	Keeps record of reading in a the register khata.
                                            <br />
                                            •	Make an adjustment and check the reading with the bills given by the respective authorities. If any discrepancy show between the bill and 
                                            the meter reading, take an initiative to solve the problem with discussing with respective person of the authorities.<br />
                                            •	Turns service off for nonpayment of charges in vacant premises.<br />
                                            •	During any kinds of party before &after reads electric, gas, water, consumption meters and records volume used by residential Party hall
                                             user & his or her apartment individually.<br />
                                            •	Collects bills in arrears.<br />
                                            •	Returns route book to business office for billing purposes.<br />
                                            •	 May be designated according to type of meter read as Electric-Meter Reader; Gas-Meter Reader; Steam-Meter Reader; Water-Meter Reader.<br />
                                            •	 Report to facility manager.<br />

                                            •	Inspects meters and connections for defects, damage, and unauthorized connections. 
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

           <%--     <div class="col-sm-3">
                    <div class="news-post" style="width: 270px; height: 320px;" id="RenovationInteriorSolution_newspost" data-toggle="modal" data-target="RenovationInteriorSolutionModal">
                        <div id="RenovationInteriorSolution" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/renovation.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                Renovation & Interior Solution

                            </p>

                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>--%>


                <!-- Modal -->
                <div class="modal fade" id="RenovationInteriorSolutionModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"><strong>Renovation & Interior Solution</strong></h4>
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


                <div class="col-sm-3">
                    <div class="news-post" style="width: 270px; height: 320px;" id="FacadeCleaning_newspost" data-toggle="modal" data-target="FacadeCleaningModal">
                        <div id="FacadeCleaning" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/facade_cleaning.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                Facade Cleaning

                            </p>

                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>


                <!-- Modal -->
                <div class="modal fade" id="FacadeCleaningModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"><strong>Facade Cleaning</strong></h4>
                            </div>
                            <div class="modal-body">

                                <div class="row">
                                    <div class="col-lg-12">
                                        <p style="text-align: justify">
                                            A clean building presents a more hospitable front - & therefore a more attractive real estate prospect - to the public.
Another key motivation behind facade cleaning is the effort to remove damaging pollutants (Sulfar& Nitrogen oxides) who serve to accelerate facade detoriation.
The company undertakes facade cleaning contracts for high performance buildings having glass facade or structural glazing.
                                        </p>

                                    </div>



                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>PROPOSE CLEANING METHODS:-</strong></p>

                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>1.Water cleaning method.</strong></p>
                                        
                                        <p style="text-align: justify">
                                            <strong>A]</strong> Water soaking: - A slow steady stream of water is use to loosen dirt & wash it away, a very effective 
                                           method as dirt becomes swollen & soft. Hand scrubbing with brush or rinsing with 400 psi water spray may follow the water soaking. 
                                           The method is very effective in lime stone glaze brick.
                                        </p>
                                       
                                         
                                        <p style="text-align: justify">
                                           <strong>B]</strong> Pressure washing: - Pressurize water, measure in pounds per square inch, blasts contaminants away from the facade. The procedure is effective on stone,
     masonry & concrete for the removal of light to moderate atmospheric & organic staining.
                                        </p>
                                       


                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>2.Chemical cleaning method.</strong></p>
                                        
                                        <p style="text-align: justify">
                                            Chemical products work by dissolving the stains, allowing them to be rinsed away.<br />
                                            Four categories of chemical agent: -<br />
                                            Acidic cleaners, alkaline cleaners, organic solvent, detergent. The procedure is effective to conquer tough facade stains. 
                                        </p>

                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>3.Abrasive cleaning</strong></p>
                                        
                                        <p style="text-align: justify">
                                            It is very low on capital cost & on the cleaning cost, besides it is safe & operative friendly.
                                        </p>

                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-lg-6">
                                        <p><strong>SPIDERMAN SERVICE: </strong></p>
                                        
                                        <p style="text-align: justify">
                                            Design to completely remove the outer portion of substrate on which the stain sits, 
                                            rather than merely dissolving & washing away stain. Effective for stone, masonry & concrete.
                                        </p>

                                    </div>

                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FacadeCleaning1.png" alt="" width="200px;" height="140px;" />
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>Components of the system: </strong></p>
                                        
                                        
                                        <p style="text-align: justify"><strong>A]</strong> Rope Access method with Nylon Ropes: The ropes which are parachute guide, are capable of withstanding one ton of load & useful for 1000 hrs of working.</p>
                                      
                                         
                                        <p>
                                           <strong>B]</strong> Ascending &Descending system (Spiderman kit):

                                        </p>

                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>Key features are:</strong></p>
                                        
                                        <p style="text-align: justify">
                                            Portable & light weight.<br />
                                            One man operation.<br />
                                            Fail safe capability.<br />
                                            One is to two pulley ratio.<br />
                                             
                                        </p>

                                    </div>

                                </div>



                                 <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>Equipments to be used by HANSA in providing FM Services at the complexes </strong></p>
                                         
                                    </div>

                                </div>

                                
                                 <div class="row">
                                    
                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FMCLN_1.png" alt="" width="260px;" height="150px;" />
                                    </div>
 

                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FMCLN_2.png" alt="" width="260px;" height="150px;" />
                                    </div> 
                                </div>
                                <br />
                                <div class="row">
                                    
                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FMCLN_3.png" alt="" width="260px;" height="150px;" />
                                    </div>
 

                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FMCLN_4.png" alt="" width="260px;" height="150px;" />
                                    </div> 
                                </div>
                                <br />
                                <div class="row">
                                    
                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FMCLN_5.png" alt="" width="260px;" height="150px;" />
                                    </div>
 

                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FMCLN_6.png" alt="" width="260px;" height="150px;" />
                                    </div> 
                                </div>
                                <br />
                                <div class="row">
                                    
                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FMCLN_7.png" alt="" width="260px;" height="150px;" />
                                    </div>
 

                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FMCLN_8.png" alt="" width="260px;" height="150px;" />
                                    </div> 
                                </div>
                                <br />
                                <div class="row">
                                    
                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FMCLN_9.png" alt="" width="260px;" height="150px;" />
                                    </div>
 

                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FMCLN_10.png" alt="" width="260px;" height="150px;" />
                                    </div> 
                                </div>
                                <br />
                                <div class="row">
                                    
                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FMCLN_11.png" alt="" width="260px;" height="150px;" />
                                    </div>
 

                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FMCLN_12.png" alt="" width="260px;" height="150px;" />
                                    </div> 
                                </div>
                                <br />

                                <div class="row">
                                    
                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FMCLN_13.png" alt="" width="260px;" height="150px;" />
                                    </div>
 

                                    <div class="col-lg-6">
                                        
                                        <img src="Content/assets/images/ServicesPopUpImages/FMCLN_14.png" alt="" width="260px;" height="150px;" />
                                    </div> 
                                </div> 

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>

                    </div>
                </div> 
            </div>
        </div>
    </div>

</asp:Content>
