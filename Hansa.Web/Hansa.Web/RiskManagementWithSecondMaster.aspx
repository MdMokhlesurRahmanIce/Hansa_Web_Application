<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="RiskManagementWithSecondMaster.aspx.cs" Inherits="Hansa.Web.RiskManagementWithSecondMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="PopUpASPNETSR/jquery-1.10.3-ui.css" rel="stylesheet" />
    <script src="PopUpASPNETSR/jquery-1.11.3.js"></script>
    <script src="PopUpASPNETSR/jquery.1.10.3-ui.js"></script>

    <script type="text/javascript">

        //alert("ufu");
        $(document).ready(function () {

            $('#hsForMainSliders').hide();
            $('#hsForOngoingProjects').hide();
            $('#hsForUpCommingProjects').hide();

        });

        $(function () {



            <%--$('#<%=btnSafetyPopUp.ClientID%>').click(function () {
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
            });--%>


            <%--    $('#<%=softServiceHead.ClientID%>').click(function () {

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
            <div class="row">
                <div class="col-lg-12" style="text-align: center">
                    <h2 style="font-weight: bold;"><span>Risk Management</span></h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">

                    <div class="news-post">
                        <div id="Safety" class="post-thumbnail">

                            <img src="Content/assets/images/PageImage/safety_large.jpg" alt="" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                Safety

                            </p>

                        </div>
                    </div>
                </div>
                <div class="col-sm-3">

                    <!-- /.news-post -->
                    <div class="news-post">
                        <div id="InsuranceManagement" class="post-thumbnail">

                            <img src="Content/assets/images/PageImage/insurance_management.jpg" alt=""  />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                Insurance Management

                            </p>

                        </div>
                    </div>
                </div>
                <div class="col-sm-3">

                    <!-- /.news-post -->
                    <div class="news-post">
                        <div id="Disaster Management" class="post-thumbnail">

                            <img src="Content/assets/images/PageImage/disaster-kit.jpg" alt=""/>

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                Disaster Management

                            </p>

                        </div>
                    </div>

                </div>

                
            </div>
        </div> 


    

    </div>

</asp:Content>
