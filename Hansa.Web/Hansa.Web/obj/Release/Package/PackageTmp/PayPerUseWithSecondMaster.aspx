<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="PayPerUseWithSecondMaster.aspx.cs" Inherits="Hansa.Web.PayPerUseWithSecondMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script type="text/javascript">

    $(document).ready(function () {

        $('#hsForMainSliders').hide();
        $('#hsForOngoingProjects').hide();
        $('#hsForUpCommingProjects').hide();

    })

</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

               <div>  <%--<div class="page-section">--%>
            <div class="row">
                <div class="col-lg-12" style="text-align: center">
                    <h2 style="font-weight: bold;"><span>Pay Per Use</span></h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                   
                    <!-- /.news-post -->
                      <div class="news-post" style="width: 270px; height: 320px;">
                        <div id="PropertySaleAndRental" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/property_sale_and_rental.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                                 Property Sale and rental

                            </p>

                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                   
                    <!-- /.news-post -->
                    <div class="news-post" style="width: 270px; height: 320px;">
                        <div id="CarWash" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/car_wash.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                               Car Wash

                            </p>

                        </div>
                    </div>
                </div>
                <div class="col-sm-3"> 
                    <div class="news-post" style="width: 270px; height: 320px;">
                        <div id="ReserveFundManagement" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/First-Fund-Management-Swift-Messages.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                              Reserve Fund Management

                            </p>

                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>
                <div class="col-sm-3"> 
                    <div class="news-post" style="width: 270px; height: 320px;">
                        <div id="ContractManagement" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/contract_mngment.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                             Contract Management

                            </p>

                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>


            </div>
            <div class="row">
                <div class="col-sm-3">  
                    <div class="news-post" style="width:270px; height: 320px;">
                        <div id="ExclusiveCleaningPackage" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/exclusive_cleaning.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                             Exclusive Cleaning Package

                            </p>

                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>
                <div class="col-sm-3">
                     <div class="news-post" style="width:270px; height: 320px;">
                        <div id="Laundry" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/laundry.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                             Laundry

                            </p>

                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>
                <div class="col-sm-3">
                      <div class="news-post" style="width:270px; height: 320px;">
                        <div id="PersonalTrainer" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/personal_trainer.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                             Personal Trainer

                            </p>

                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>
          <%--      <div class="col-sm-3">
                   <div class="news-post" style="width:270px; height: 320px;">
                        <div id="PetCare" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/petcare.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                             Pet Care

                            </p>

                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>--%>

                   <div class="col-sm-3"> 
                    <div class="news-post" style="width:270px; height: 320px;">
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
                </div>

            </div>
            <div class="row">

                <div class="col-sm-3">
                    <div class="news-post" style="width:270px; height: 320px;">
                        <div id="BabySitter" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/babysitter.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                             Baby Sitter

                            </p>

                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>
                <div class="col-sm-3"> 
                     <div class="news-post" style="width:270px; height: 320px;">
                        <div id="BeautyCare" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/beauty_care.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                             Beauty Care

                            </p>

                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>
               <%-- <div class="col-sm-3">
                   
                    <!-- /.news-post -->
                     <div class="news-post" style="width:270px; height: 320px;">
                        <div id="Massage" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/massage.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                             Massage

                            </p>

                        </div>
                    </div>
                </div>--%>
                  <div class="col-sm-3"> 
                    <div class="news-post" style="width:270px; height: 320px;">
                        <div id="CateringServices" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/catering_services.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                             Catering Services

                            </p>

                        </div>
                    </div>
                    <!-- /.news-post -->
                </div>


                <div class="col-sm-3">
 
                    <!-- /.news-post -->
                     <div class="news-post" style="width:270px; height: 320px;">
                        <div id="CarMechanic" class="post-thumbnail" style="height: 265px;">

                            <img src="Content/assets/images/PageImage/car_mechanic.jpg" alt="" width="270px;" height="265px;" />

                        </div>
                        <div class="post-caption" style="background: #f8f8f8 none repeat scroll 0 0;">

                            <p style="color: black; font-family: Open Sans,sans-serif; font-size: 12px; font-weight: 700; line-height: 24px; text-align: center; position: relative; text-transform: uppercase; z-index: 1;">
                             Car Mechanic

                            </p>

                        </div>
                    </div>
                </div>

            </div>
           <%-- <div class="row"> 

            </div>--%>


        </div>
    </div>

</asp:Content>
