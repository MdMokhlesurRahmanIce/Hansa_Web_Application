<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="Career.aspx.cs" Inherits="Hansa.Web.Career" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="PopUpASPNETSR/jquery-1.10.3-ui.css" rel="stylesheet" />
    <script src="PopUpASPNETSR/jquery-1.11.3.js"></script>
    <script src="PopUpASPNETSR/jquery.1.10.3-ui.js"></script>

    <script type="text/javascript">

        $(document).ready(function () {

            $('#hsForMainSliders').hide();
            $('#hsForOngoingProjects').hide();
            $('#hsForUpCommingProjects').hide();
        });

        //alert("ufu"); 

    </script>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="page-section"> <%--<div class="page-section aboutus-section">--%>
                <div class="container"> 
                        <h2>   <%--<h2 class="with-borderline">--%>
                            <span id="backgrnd" runat="server">CAREER</span>
                            <em></em>
                        </h2>

                        <div class="row">
                            <div class="col-sm-12">
                                <%--<h4 class="with-icon"><span class="fa fa-rocket"></span>Easy To Launch</h4>--%>
                                <p  style="text-align: justify;">
                                    Unique Group aims to be an equal opportunity employer and is determined to ensure that no applicant or employee receives less favourable treatment on the grounds of gender,
                                     age, disability, religion, belief, marital status, race, or is disadvantaged by conditions or requirements which cannot be shown to be justifiable.
                                     Candidates meet the requirement will be gone through the screening procedures as per company rule and shortlisted candidates will go through the company recruitment procedures.
                                     Job vacancies will be posted in Unique Group website with the requiremnts and apply instructions.
                                     Please visit for the job openings and apply for your suitable positions accordingly.
                                    <br />
                                   Interested candidates please send your CV to <a href="hr@uniquegroupbd.com" style="color:blue;">hr@uniquegroupbd.com </a>.
                                    </p>
                                </div>
                            </div>


                      <div class="row">
                        <div class="col-lg-12">
                         <iframe src="https://docs.google.com/forms/d/1AtqQ_cwljSTulv-83x2K7xa4jVd0U0ToOxZEcmyOEI4/viewform?embedded=true" width="100%" height="3500px" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>
                        </div>
                    </div>

                    </div>
         </div>
         

</asp:Content>
