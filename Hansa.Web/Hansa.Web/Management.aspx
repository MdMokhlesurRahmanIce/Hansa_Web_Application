<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="Management.aspx.cs" Inherits="Hansa.Web.Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        $(document).ready(function () {

            $('#hsForMainSliders').show();
            $('#hsForOngoingProjects').hide();
            $('#hsForUpCommingProjects').hide();

            // var viewableOffset = $('#hsForMainSliders').offset().top * 3 - 60;// + $("#bdyhdr").height();//$('#ContentPlaceHolder1_backgrnd').offset().top + $('#ContentPlaceHolder1_backgrnd').outerHeight(true);//$('#ContentPlaceHolder1_backgrnd').position().top;
            var tp = $("#bdyhdr").offset().top;
            var topber = $("#topbar").height();
            var headerber = $("#headerbar").height();
            var bdyhdr = $("#bdyhdr").height();
            var hsForMainSliders = $('#hsForMainSliders').height();
            var hsTopMainslider = $('#hsForMainSliders').offset().top * 3;
            var viewableOffset = topber + headerber + hsTopMainslider - 62;// + $('#ContentPlaceHolder1_backgrnd').height() + $('#backgroundTxt').height() + $('#blnkRow').height();

            // alert(viewableOffset);

            $('html,body').animate({ scrollTop: viewableOffset }, 'slow');
            //$('html,body').animate({ scrollTop: 800 }, 'slow');
        });

    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-section">
        <div class="container">
            <h2><%--<h2 class="with-borderline">--%>
                <span>MANAGEMENT</span>
                <em></em>
            </h2>
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a class="" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">CHAIRPERSON
                                        <span class="fa toggle-icon"></span>
                                    </a>
                                </h4>
                            </div>
                            <div style="" aria-expanded="true" id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">

                                    <div class="row">
                                        <div class="col-lg-10">
                                            <%-- <p><strong>PROFILE</strong></p>--%>

                                            <p style="color: black;">Mrs. Salina Ali</p>

                                            <p style="text-align: justify">
                                                Mrs. Salina Ali is the Chairman of Unique Group, a person leading the way by enabling greater results.
                                                 As a pragmatic entrepreneur, she leads Unique Group towards sustainability and achieving every single success for its business,
                                                 society and human kind. Her visionary guidance is always a perennial source of inspiration for the group and its associates,
                                                 having business interests in real estate, hotel services, ceramic industry, power plant, aviation services, tourism,
                                                 manpower export, banking services, and human resources development.
                                                 A pioneer in setting up the first 5-Star Hotel in private
                                                 sector in the country, she is also the Chairman of Unique Hotels and Resorts Ltd.  She did her Honors and Masters in Sociology
                                                 from the University of Dhaka. 
                                                <br />
                                                <br />
                                                She is also a member of the Executive Committee of the Board of Directors of Eastern Bank Ltd. (EBL)
                                            </p>
                                        </div>
                                        <div class="col-lg-2" style="margin-top: 07px;">
                                            <img src="Content/assets/images/PageImage/Chairman_3.png" alt="" />
                                        </div>

                                    </div>
                                    <%--    <div class="row">
                                        <div class="col-lg-12">
                                            <p><strong>PROFILE</strong></p>

                                            <p style="text-align: justify">
                                                 
                                            </p>

                                        </div>

                                    </div>--%>


                                    <!-- Modal -->
                                    <%--   <div class="modal fade" id="ChairmanProfileModal" role="dialog">
                                                <div class="modal-dialog">

                                                    <!-- Modal content-->
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                            <h4 class="modal-title">CHAIRMAN</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                <div class="col-lg-10">
                                                                    <p><strong>PROFILE</strong></p>

                                                                    <p>MS. Salina Ali, Chairperson, Unique Group </p>

                                                                </div>
                                                                <div class="col-lg-1" style="margin-top: 07px;">
                                                                    <img src="Content/assets/images/PageImage/Chairman.png" alt="" />
                                                                </div>

                                                            </div>

                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <p><strong>MESSAGE</strong></p>

                                                                    <p style="text-align: justify">
                                                                        A person leading the way by enabling greater results. As a pragmatic entrepreneur, she leads Unique Group towards sustainability and achieving every single success for its business, society and human kind. Her visionary guidance is always a perennial source of inspiration for the group and its associates
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
                                    --%>

                                    <br />
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
                                    <div class="row">
                                        <div class="col-lg-10">
                                            <%--<p><strong>PROFILE</strong></p>--%>

                                            <p style="color: black;">Mr Mohd Noor Ali </p>

                                            <p style="text-align: justify">
                                                Mr. Mohd Noor Ali is the  Managing Director of Unique Group. He is one of the best-known entrepreneurs in Bangladesh.
                                                   He is well recognized among the business community for his responsibility towards the company’s stable strategy.
                                                   He aggressively broadened the company’s range of products, and wherever UG has achieved a dominant position he vigorously
                                                   contributed towards its growth.
                                                   
                                            </p>
                                        </div>
                                        <div class="col-lg-2" style="margin-top: 07px;">
                                            <img src="Content/assets/images/PageImage/ManagingDirector.png" alt="" />
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <%--<p><strong>PROFILE</strong></p>--%>
                                            <p style="text-align: justify">
                                                Being a conglomerate, UG has achieved the heighest recognition from the community by having the first self owned five-star
                                                   hotel, The Westin Dhaka. Despite the odds Mr. Ali has also been involved in diverse business entities and  his most
                                                   remarkable achievement is he is a self-made person.Today, Mr. Ali is the Managing Director of more than twenty different
                                                   business concerns. Mr. Ali is a former President of BAIRA, Chairman of Eastern Bank Ltd, as well as Shareholder Directorship
                                                   of different financial institutions and a number of business bodies. Being a freedom fighter and a philanthropist
                                                   Mr. Ali’s contribution towards development of the country is truly significant.
                                            </p>

                                        </div>

                                    </div>

                                    <br />

                                </div>
                            </div>
                        </div>



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


                                    <div class="row">
                                        <div class="col-lg-10">
                                            <%--<p><strong>PROFILE</strong></p>--%>

                                            <p style="color: black;">Mr. Mohammad Mohsin </p>

                                            <p style="text-align: justify">
                                                Mr. Mohammad Mohsin is the Chief Advisor of Unique Group. He joined the Group in December 2010. He was also the Chief Executive Officer of the Group for some time. 
                                                    Earlier, Mr. Mohsin worked for the Government of Bangladesh. He was a permanent secretary to the government until the fag end of 2010. As secretary to the government he held positions like Executive
                                                   Chairman of the Board of Investment (BoI), Secretary, Energy & Mineral Resources Division, Ministry of Power, Energy & Mineral Resources,
                                                 and Member, Privatization Commission, Prime Minister’s Office. Retaining lien with the government Mr. Mohsin in his mid-career worked for
                                                 a development partner, JICA, for six years. 
 
                                            </p>

                                        </div>
                                        <div class="col-lg-2" style="margin-top: 07px;">
                                            <img src="Content/assets/images/PageImage/ChiefAdvisor.png" alt="" />
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <%--<p><strong>PROFILE</strong></p>--%>

                                            <p style="text-align: justify">
   
                                                Mr. Mohsin earned Bachelor of Arts (Hons) and Master of Arts degrees in Economics from Dhaka University and also obtained Master of Science degree in Business Studies
                                                 from Salford University, UK. Mr. Mohsin carries with him a rich experience of both national and international arenas
                                                 and has been making his mark in Unique Group since his joining.

                                            </p>
                                        </div>

                                    </div>


                                </div>
                            </div>
                        </div>

                        <div class="panel">
                            <div class="panel-heading" role="tab" id="headingFive">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">CHIEF EXECUTIVE OFFICER
                           
                                        <span class="fa toggle-icon"></span>
                                    </a>
                                </h4>
                            </div>
                            <div aria-expanded="false" id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                <div class="panel-body">

                                    <div class="row">
                                        <div class="col-lg-10">
                                            <%--<p><strong>PROFILE</strong></p>--%>

                                            <p style="color:black;">Md. Hasan Parvez Ibne Emdad </p>

                                               <p style="text-align: justify">
                                                Md. Hasan Parvez Ibne Emdad is basically a Graduate in Civil Engineering. He also achieved a professional degree in
                                                 Business Administration. Just after completion of his Graduation in Civil Engineering, he started his career in real
                                                    estate industry of our country. Throughout his career, 
                                                    he has performed with his passion and distinguished style in the most reputed real estate organizations in 
                                                    Bangladesh and he had attained huge recognitions from all these organizations. Mr. Parvez attended a
                                                     Certified Training Program on Facilities Management Services in DUBAI which was organized by Middle-East Facilities
                                                     Management Association (MEFMA). 

                                            </p>

                                        </div>
                                        <div class="col-lg-2" style="margin-top: 07px;">
                                            <img src="Content/assets/images/PageImage/Parvez__(2)[2].jpg" alt="" />
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-lg-12">
                                           <%-- <p><strong>PROFILE</strong></p>--%>

                                            <p style="text-align: justify">
                                               Having a huge experience of around 12 years in the field of Customer Services and Facilities Management Services,
                                                 Mr. Parvez has been assigned to lead this new Business Wing of Unique Group named HANSA Management Ltd. 
                                            </p>
                                        </div>

                                    </div>


                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>

    </div>

</asp:Content>
