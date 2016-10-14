<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Hansa.Web.Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {

            //alert('dsdfdfdsdff');
            $('#hsForMainSliders').show();
            $('#hsForOngoingProjects').show();
            $('#hsForUpCommingProjects').show();

        });

        //function setHeightOfContact() {
        //     $('html,body').animate({ scrollTop: 12000 }, 'slow');
        //    //alert("ggg");

        //}

        function sendingMail() {

            var txtEmail = $('#txtEmail').val();

            // alert(txtEmail);
            $.ajax({
                async: true,
                type: "POST",
                url: "Home.aspx/mailSend", //"DocSummary.aspx/GetSummaryByProgramCount",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify({ txtEmail: txtEmail }),
                cash: false,
                success: function (msg) {
                    // alert('in success of getcount');

                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    // alert('in failure of getcount');


                }
            });

        }


    </script>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--       <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <%--add this updatepanel  only popup--%>
        <ContentTemplate>

            <%--<div class="page-section">--%>
                <div class="container">
                    <%-- <div class="section-header">
                        <h2>HANSA MANAGEMENT LIMITED.</h2>
                    </div>--%>
                    <%--7dc217--%>


                    <div class="row">
                        <br />
                    </div>



                    <%--7dc217--%>


                    <h2><%--<h2 class="with-borderline">--%>
                        <span>OUR SERVICES</span>
                        <em></em>
                    </h2>
                    <div class="row">
                        <div class="col-sm-12" style="text-align: justify;">
                            <%--<h4 class="with-icon"><span class="fa fa-rocket"></span>Easy To Launch</h4>--%>
                            <p>
                                Being the most reliable Facilities Management (FM) Service provider HANSA has designed the following services to ensure a complete 
                                solution to the building management system. Based on the requirements of our clients we offer the best 
                                solution which ensures best comfort and best property management.
                         
                            </p>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-sm-3">
                            <div class="news-post" style="width: 270px; height: 320px;">
                                <div id="softservices" class="post-thumbnail" style="height: 265px;">

                                    <img src="Content/assets/images/PageImage/soft_service.jpg" alt="" width="270px;" height="265px;" />

                                </div>
                                <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                                    <p style="color: black; font-family: Open Sans,sans-serif; font-size: 15px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                        <a href="SoftServicesWithSecondMaster.aspx">Soft Services</a>

                                    </p>

                                </div>
                            </div>
                            <!-- /.news-post -->
                        </div>


                        <div class="col-sm-3">
                            <div class="news-post" style="width: 270px; height: 320px;">
                                <div id="hardservices" class="post-thumbnail" style="height: 265px;">

                                    <img src="Content/assets/images/PageImage/hardservice.jpg" alt="" width="270px;" height="265px;" />

                                </div>
                                <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                                    <p style="color: black; font-family: Open Sans,sans-serif; font-size: 15px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                        <a href="HardServicesWithSecondMaster.aspx">Hard Services</a>

                                    </p>

                                </div>
                            </div>
                            <!-- /.news-post -->
                        </div>

                        <div class="col-sm-3">
                            <div class="news-post" style="width: 270px; height: 320px;">
                                <div id="payperuse" class="post-thumbnail" style="height: 265px;">

                                    <img src="Content/assets/images/PageImage/pay_per_use.jpg" alt="" width="270px;" height="265px;" />

                                </div>
                                <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                                    <p style="color: black; font-family: Open Sans,sans-serif; font-size: 15px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                        <a href="PayPerUseWithSecondMaster.aspx">Pay Per Use</a>

                                    </p>

                                </div>
                            </div>
                            <!-- /.news-post -->
                        </div>


                        <div class="col-sm-3">
                            <div class="news-post" style="width: 270px; height: 320px;">
                                <div id="riskmanagement" class="post-thumbnail" style="height: 265px;">

                                    <img src="Content/assets/images/PageImage/riskManagement.jpg" alt="" width="270px;" height="265px;" />

                                </div>
                                <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                                    <p style="color: black; font-family: Open Sans,sans-serif; font-size: 15px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                        <a href="RiskManagementWithSecondMaster.aspx">Risk Management</a>

                                    </p>

                                </div>
                            </div>
                            <!-- /.news-post -->
                        </div>


                    </div>

                </div>
            <%--</div>--%> 

        </ContentTemplate>

    </asp:UpdatePanel>


</asp:Content>
