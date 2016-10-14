<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="SoftServicesWithSecondMaster.aspx.cs" Inherits="Hansa.Web.SoftServicesWithSecondMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="PopUpASPNETSR/jquery-1.10.3-ui.css" rel="stylesheet" />
    <script src="PopUpASPNETSR/jquery-1.11.3.js"></script>
    <script src="PopUpASPNETSR/jquery.1.10.3-ui.js"></script>



    <script type="text/javascript">

        $(document).ready(function () {

            $('#hsForMainSliders').hide();
            $('#hsForOngoingProjects').hide();
            $('#hsForUpCommingProjects').hide();

            // start for click event to modal show

            $("#SecuritySurveillance_newspost").click(function () {

                $("#SecuritySurveillanceModal").modal('show');
                //alert('sdfsd');
            });

            $("#cleanNhousekeeping_newspost").click(function () {

                $("#cleanNhousekeepingModal").modal('show');
                //alert('sdfsd');
            });

            $("#garbageDisManage_newspost").click(function () {

                $("#garbageDisManageModal").modal('show');
                //alert('sdfsd');
            });

            $("#landscaping_newspost").click(function () {

                $("#landscapingModal").modal('show');
                //alert('sdfsd');
            });

            $("#pestControl_newspost").click(function () {

                $("#PestControlModal").modal('show');
                //alert('sdfsd');
            });

            // end for click event to modal show


            
            $("#SecuritySurveillance_newspost").hover(function () {

                //$(this).tooltip();
                $(this).attr('title', 'Click here to show details.');
                // $(this).css("background-color", "yellow");
                $(this).css('cursor', 'pointer');
            });


            $("#cleanNhousekeeping_newspost").hover(function () {

                //$(this).tooltip();
                $(this).attr('title', 'Click here to show details.');
                // $(this).css("background-color", "yellow");
                $(this).css('cursor', 'pointer');
            });

            $("#garbageDisManage_newspost").hover(function () {

                //$(this).tooltip();
                $(this).attr('title', 'Click here to show details.');
                // $(this).css("background-color", "yellow");
                $(this).css('cursor', 'pointer');
            });

            $("#landscaping_newspost").hover(function () {

                //$(this).tooltip();
                $(this).attr('title', 'Click here to show details.');
                // $(this).css("background-color", "yellow");
                $(this).css('cursor', 'pointer');
            });


            $("#pestControl_newspost").hover(function () {

                //$(this).tooltip();
                $(this).attr('title', 'Click here to show details.');
                // $(this).css("background-color", "yellow");
                $(this).css('cursor', 'pointer');
            });

            //start for hover to  show  modal//

            //$("#SecuritySurveillance").hover(function () {
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
            //    $(this).attr("data-target", "#SecuritySurveillanceModal");

            //    $(this).click();

            //}, function () {
            //    // $(this).css("background-color", "pink");

            //    // if want to close when hover out
            //    //data-dismiss="modal"
            //    // $(this).attr("data-dismiss", "modal")
            //});

            //$("#cleanNhousekeeping").hover(function () {
            //    // $(this).css("background-color", "yellow");

            //    $(this).attr("data-toggle", "modal");
            //    $(this).attr("data-target", "#cleanNhousekeepingModal");

            //    $(this).click();

            //}, function () {
            //    // $(this).css("background-color", "pink");

            //});

            //$('#garbageDisManage').hover(function () {
            //    // $(this).css("background-color", "yellow");

            //    $(this).attr("data-toggle", "modal");
            //    $(this).attr("data-target", "#garbageDisManageModal");

            //    $(this).click();

            //}, function () {
            //    // $(this).css("background-color", "pink");

            //});



            //$('#landscaping').hover(function () {
            //    // $(this).css("background-color", "yellow");

            //    $(this).attr("data-toggle", "modal");
            //    $(this).attr("data-target", "#landscapingModal");

            //    $(this).click();

            //}, function () {
            //    //  $(this).css("background-color", "pink");

            //});




            //$('#pestControl').hover(function () {
            //    //  $(this).css("background-color", "yellow");

            //    $(this).attr("data-toggle", "modal");
            //    $(this).attr("data-target", "#PestControlModal");

            //    $(this).click();

            //}, function () {
            //    // $(this).css("background-color", "pink");

            //});



        });


        //alert("ufu");

        $(function () {
            <%--   $('#<%=btnSecurityNSurveillancePopUp.ClientID%>').click(function () {
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
            });--%>

            <%--$('#<%=btnGarbageDisposalNManagementPopUp.ClientID%>').click(function () {
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
            });--%>

            <%--    $('#<%=btnPestControlPopUp.ClientID%>').click(function () {
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
            });--%>

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

        <div>
            <%--<div class="page-section">--%>
            <div class="row">
                <div class="col-lg-12" style="text-align: center">
                    <h2 style="font-weight: bold;"><span>Soft Services</span></h2>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-3">
                    <div class="news-post" id="SecuritySurveillance_newspost" data-toggle="modal" data-target="SecuritySurveillanceModal">
                        <div id="SecuritySurveillance" class="post-thumbnail">

                            <img src="Content/assets/images/PageImage/security_surveilence(1).png" alt="" />

                        </div>

                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                <%-- Housekeeping / Cleaning--%>
                                Security & Surveillance


                            </p>
                        </div>

                    </div>
                </div>


                <%--                            <div class="row" id="SecurityNSurveillancePopUpdiv" title="Security & Surveillance" style="display: none">
                                <div class="col-lg-8">
                                    <p><strong>Security & Surveillance</strong></p>

                                    <p></p>

                                </div>
                                <div class="col-lg-2" style="margin-top: 07px;">
                                    <img src="Content/assets/images/PageImage/SecurityNServillance.png" alt="" />
                                </div>
                            </div>--%>

                <!-- Modal -->
                <div class="modal fade" id="SecuritySurveillanceModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"><strong>Security & Surveillance</strong></h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                       

                                        <p style="text-align:justify">
                                            We maintain and ensure a safe and secure environment for valued customers by patrolling and monitoring premises and personnel.
                                             An experienced, skilled (retd. defense) person is provided to supervise the total security system of a premise.<br />
                                        </p>
                                        <p><strong>I.Security plan for the open car parking spaces. </strong></p>

                                    </div>
                                    <div class="col-lg-6">
                                        <!--  <img src="Content/assets/images/PageImage/Chairman.png" alt="" />-->
                                        <img src="Content/assets/images/ServicesPopUpImages/security4.png" alt="" width="280px" height="200px" />
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                         

                                        <p style="text-align: justify">
                                          <%--  We maintain and ensure a safe and secure environment for valued customers by
                                             patrolling and monitoring premises and personnel. An experienced and skilled (retd. defense) person is deployed
                                             sticker system for resident cars and other vehicles is being arranged. 
                                            Car calling from car parking through P/A system will be in place and 
                                            it will be maintained and controlled from reception. Tracking system for entrance and
                                             exit of cars and other vehicles can be arranged if clients desire.--%>
                                            Sticker system for cars and other vehicles of the inmates’ of a complex is being arranged by HANSA.
                                             Car calling system from car parking is being arranged through P/A system and it is maintained and controlled from the reception.
                                             Access control system for entrance and exit of the cars and other vehicles can be arranged as per clients’ desire. 
                                        </p>
                                        <p><strong>II. PABX operation</strong></p>

                                        <p style="text-align: justify">
                                            Smart and experienced person will be provided to operate PABX for attending the guests/visitors of the residents/tenants.
                                             Guest or concerned Visitors' entry will be allowed after getting permission from the resident/tenants. 
                                            Duty roster will be prepared & maintained by security officer. Body checking system at the time of entrance 
                                            can be deployed according to client’s desire. 
                                        </p>

                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>III. Plan to control Existing Labors/Workers  </strong></p>

                                        <p style="text-align: justify">
                                            A register will be maintained regarding entry of daily laborers & workers and check them physically
                                             while getting in and out. Appropriate visitor passes system will be maintained. 
                                        </p>

                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>IV. Plan to control outsiders.  </strong></p>

                                        <p style="text-align: justify">
                                            For the sake of security it will be good if a particular time in a day is fixed to allow the outsiders like 
                                            to make sure security in the premise to allow the outsiders like hawkers, cable operators, milkmen, garbage collectors, maids and other outsiders or 
                                            service providers. This can be done in two shifts. 
                                                a)	   At day Shift: 10.30 am - 1.30 pm
                                                b)	At the evening Shift: 4.30 pm - 7.00 pm 
                                            However this will depend on client's desire.
                                        </p>

                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>V.CCTV Controlling</strong></p>

                                        <p style="text-align: justify">
                                            Well trained experienced operator will be provided to operate the CCTV cameras. The recording is being checked by security officer every day and recording will be
                                             preserved for a certain period of time. A register for this purpose will be maintained.
                                        </p>

                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>VI. How to face public Hazard management plans </strong></p>

                                        <p style="text-align: justify">
                                            Security officer or premise in charge keeps and preserve all emergency contact numbers including nearest Police Station, Fire Service, Ambulance,
                                             Police Control Room etc. If any occurrence happen the security in charge will inform the respective Authority then and there. A roster Manual will be maintained.  
                                        </p>

                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>VII.Plan regarding Goods & Material entry and Exit  </strong></p>

                                        <p style="text-align: justify">
                                            A register will be maintained and gate pass system for each and every kind of goods material exit and entry follow above system.  
                                        </p>

                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>VIII. Security equipments </strong></p>

                                        <p style="text-align: justify">
                                            Equipment i.e. baton, Security checking system device, metal detector, CCTV, Duty torch, Traffic Vest,
                                             Umbrella, Rain Coat, Winter Jacket, Wacky talky, UVS Mirror, Baton Stick will be provided by us.
                                             As per existing government rules Private Security Company’s Guards are not allowed to carry arms/gun.
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
                    <div class="news-post" id="cleanNhousekeeping_newspost" data-toggle="modal" data-target="cleanNhousekeepingModal">
                        <div id="cleanNhousekeeping" class="post-thumbnail">

                            <img src="Content/assets/images/PageImage/CleaningHousekeeping.jpg" alt="" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                <%--Security--%>
                                Cleaning & Housekeeping

                            </p>

                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>


                <!-- Modal with sliders-->
                <div class="modal fade" id="cleanNhousekeepingModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"><strong>Cleaning & Housekeeping</strong></h4>
                            </div>
                            <div class="modal-body">



                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>Operating an Effective Cleaning Service </strong></p>
                                        <img src="Content/assets/images/ServicesPopUpImages/cleaning1.png" alt="" />
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-5">
                                        <p style="text-align: justify">
                                            We provide important services to our valued customers by keeping their living environment sanitary and healthy.
                                        HANSA Cleaning Service offers customized service plans at reasonable rates. We are dedicated to the high quality cleaning service that will ensure full satisfaction.
                                        </p>
                                    </div>

                                    <div class="col-lg-7" width="280px" height="200px">
                                        <img src="Content/assets/images/ServicesPopUpImages/cleaning4.png" alt="" />
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>Dusting Tips and Tricks </strong></p>

                                        <p style="text-align: justify">
                                            Dust is the main problem in keeping your premise clean. Not only that it carries a lot of germs which are harmful for health. We have an expert team to keep your premises clean residential or commercial.
 

                                        </p>
                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-lg-12">


                                        <p style="text-align: justify">
                                            Cleaners to ensure that premises are kept clean and fully staffed at all times, keep the premise in clean and orderly condition.
Duties may include performing routine maintenance activities as below
                                            <br />
                                            • 	Clean building floors by sweeping, mopping, or vacuuming those.<br />
                                            • 	Clean and polish stairs railing and fixtures.<br />
                                            • 	Clean windows, glass partitions, and mirrors by using cleaning materials like Mr. Brasso, Mr. Clean etc.

     Keep clean Entrance, Lobby, Common space, Reception, Parking<br />

                                            • 	Clean Guard House, Maintenance Area, and other facilities Areas which are available in the premise.
                                            <br />
                                            • 	Collect all refuse and take to the central collection point.<br />
                                            • 	Spray insecticides to prevent insect and rodent.<br />
                                            • 	Dust mopping from all equipments and furniture.<br />
                                            • 	Clean entrance door, door glasses, and front show windows glass.<br />
                                            • 	Damp mopping all floor areas.<br />
                                            • 	Remove dust from walls, furniture, machines and equipments.<br />
                                            • 	Mix water and detergent or acids in containers to prepare cleaning solutions.<br />
                                            • 	Make an adjustment and mirror repair to heating, cooling, ventilating, plumbing, and electrical system.<br />
                                            • 	Clean connecting pipe.<br />
                                            • 	Clean surrounding areas including car parking three times in a day.<br />
                                            • 	Thoroughly mop all floor area.<br />
                                            • 	Clean sanitary fittings.<br />
                                            • 	Clean lift.<br />
                                            • 	Sweep stairways, collect & remove all refuse and remove dust from handrails.<br />
                                            • 	Clean dustbin.
                                            <br />
                                            • 	Clean common space, ground floor, lobby and rooftop.<br />
                                            • 	Wipe and polish the front of premise.<br />
                                            • 	Make co-relation with security department and pest control department.<br />
                                            • 	Notifying management of need for repairs and cleaning.<br />
                                            • 	Sign in daily register khata.<br />
                                            • 	Handover duty to the next person.<br />
                                            • 	Receive instruction from supervisor.<br />
                                            • 	Collection and disposal of Garbage of all the allottees in a clean and disciplined manner.<br />

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
                    <div class="news-post" id="garbageDisManage_newspost" data-toggle="modal" data-target="garbageDisManageModal">
                        <div id="garbageDisManage" class="post-thumbnail">

                            <img src="Content/assets/images/PageImage/garbage_dispsoe.jpg" alt="" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                <%--Security--%>
                               Garbage Disposal & Management

                            </p>

                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>

                <!-- Modal with sliders-->
                <div class="modal fade" id="garbageDisManageModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"><strong>Garbage Disposal & Management</strong></h4>
                            </div>
                            <div class="modal-body">



                                <div class="row">
                                    <div class="col-lg-12">


                                        <p style="text-align: justify">
                                            •	The process consists of collection of garbage from every individual unit of the occupants,
                                             carrying towards the Ground floor and finally disposes those to the garbage containing Vans of the city corporation.<br />
                                            •	Cleaner of the complex will collect the garbage everyday at a specific time from each unit.<br />
                                            •	They will carry the garbage through two wheeler garbage containing buckets those are covered at the top end<br />
                                            •	After collecting the garbage from every individual unit are stored at the designated space of the ground floor of each complex.<br />
                                            •	Finally the garbage is given to the garbage containing van of the city corporation for the final disposal.<br />

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
                    <div class="news-post" id="landscaping_newspost" data-toggle="modal" data-target="landscapingModal">

                        <div id="landscaping" class="post-thumbnail">

                            <img src="Content/assets/images/PageImage/Landscaping-1.png" alt="" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                <%--Security--%>
                               Landscaping

                            </p>

                        </div>

                    </div>
                    <!-- /.news-post -->
                </div>

                <!-- Modal with sliders-->
                <div class="modal fade" id="landscapingModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"><strong>Landscaping</strong></h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>Activities of HANSA Landscaping & Gardeners are as below </strong></p>

                                        <p style="text-align: justify">
                                            •	Residential gardening – Its takes place near the home.<br />
                                            •	Indoor Gardening - It’s a house plants with in a residence.<br />
                                            •	Native plant gardening – Its plants with or without the intent of creating wildlife habitat.<br />
                                            •	Water gardening - Its plants adapted pools and ponds.<br />

                                            Activities of HANSA Gardeners are as below<br />

                                            •	Gardener plants, water, and trim plants and flowers<br />
                                            •	Cultivation of soil, digging, and forking, mulching, watering, raking, weeding, edging, pruning, seed sowing, bed preparation and planting.<br />
                                            •	Gardener plants, water, and trim plants and flowers.<br />
                                            •	Pulling out dead grasses and debris from garden beds.<br />
                                            •	Lay fertilizers and other chemicals to flowers and plants.<br />
                                            •	Maintain the cleanliness in the garden by sweeping trashes and pulling out dead plants.<br />
                                            •	The use and maintenance of hand tools and basic light machinery and plant.<br />

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



            </div>
            <div class="row">


                <div class="col-sm-3">
                    <div class="news-post" id="pestControl_newspost" data-toggle="modal" data-target="PestControlModal">
                        <div id="pestControl" class="post-thumbnail">

                            <img src="Content/assets/images/PageImage/pest1.png" alt="" />
                        </div>



                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">
                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                <%--Landscaping--%>
                                Pest Control
 
                            </p>


                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>


                <!-- Modal with sliders-->
                <div class="modal fade" id="PestControlModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"><strong>Pest Control</strong></h4>
                            </div>
                            <div class="modal-body">



                                <div class="row">
                                    <div class="col-lg-6">
                                        <p style="text-align: justify">
                                            Highly effective and reliable, our services are rendered as per the specific requirements of our clients.

                                        </p>
                                        <p><strong>Pest Specialist </strong></p>

                                        <p style="text-align: justify">
                                            HANSA is also a reliable pest control, fumigation and hygiene services provider. 

                                        </p>
                                    </div>

                                    <div class="col-lg-6">
                                        <img src="Content/assets/images/ServicesPopUpImages/pestControl1.png" alt="" width="280px" height="200px" />
                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-lg-12">
                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>Pest Control, Termite Control & Fumigation Services </strong></p>

                                        <p style="text-align: justify">
                                            Presence of Pests, Rodent & Termite such as flies, bugs, ants, roaches, and mice in premises can cause a lot of problems for you. It creates unhealthy environment around you and cause the infections and diseases. So, you must do something in order to get rid of such type of unpleasant atmosphere. Termite treatment should be done on most priorities manner as it’s destroy the thing slowly and build up their own space. To abolish pests from your space, one of the best options is to call us to provide services in this regards. We will take care by following: 

                                        </p>
                                    </div>

                                </div>

                                <div class="row">

                                    <div class="col-lg-12">

                                        <p style="text-align: justify">
                                            •	Rodent Trappers.<br />
                                            •	Gum Stickers.<br />
                                            •	Drilling injecting chemicals into it.<br />
                                            •	The control measures will be effective against pests like cockroaches, silverfish, black ants, red ants, spiders, crickets, rodents, mice & termite etc.<br />
                                            •	The process involve in spraying the entire drainage and surrounding area with special reference to pantries, canteen, cupboards, stores, main holes and toilets etc.<br />
                                            •	Dry chemicals along with foods stuff are keeps on required spots in eating them and rats get dragged which give them a necessary warning and they run away.<br />

                                        </p>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <p><strong>GENERAL SPRAY (OUT SITE AND CORRIDOOR AREA) FOR COCKROACH. MOSQUITO. FLY AND OTHER PEST: </strong></p>

                                        <p><strong>1) FLY MANAGEMENT </strong></p>
                                        <p style="text-align: justify">
                                            Being whimsical in behavior and unable to distinguish between food and filth, these flies are associated with more than 100 disease-causing organisms, which can be transmitted to humans and animals through fasces, regurgitation while feeding and contaminated body parts. Some of the major disease thus transmitted by them includes cholera, Typhoid, Amoebic dysentery, eye disease, infectious hepatitis, enteric infections etc.
With greater public concern for health and hygiene, fly control is an absolute social obligation. The chemical to be used will be synthetic pyrithroid.

                                        </p>
                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-lg-12">

                                        <p><strong>2) INTEGRATED MOSQUITOES MANAGEMENT  </strong></p>
                                        <p style="text-align: justify">
                                            Mosquitoes so annoying, they can also be disease-carrying vector. Mosquitoes play a major role in the transmission of more human disease than any other Arthropods. These included Malaria Filarial, Dengue, hemorrhagic fever, etc. causing high morbidity and mortality. As a result disease is a main reason to maintain control of this flying vector in public health sector. 
Considering the above fact the treatment would be controlling adult mosquito within the premises, taking into the breeding (stagnant water) and their flying capability (2-3 miles from the breeding places). We do not guarantee the total eradication. However, an all-out effort (HANSA Enterprise) would be made to keep the mosquito menace under tolerable limits. 

                                        </p>
                                    </div>
                                </div>



                                <div class="row">
                                    <div class="col-lg-12">

                                        <p><strong>Frequency of Treatment:  </strong></p>
                                        <p style="text-align: justify">
                                            Water base chemical spray shall be carried out once in a week by Pressure sprayer at outside and corridor premises 
   

                                        </p>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12">

                                        <p><strong>Area to be treated:  </strong></p>
                                        <p style="text-align: justify">
                                            all areas in the premise including open space, Garden, reception and line, basement.

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
            </div>
        </div>
    </div>





</asp:Content>
