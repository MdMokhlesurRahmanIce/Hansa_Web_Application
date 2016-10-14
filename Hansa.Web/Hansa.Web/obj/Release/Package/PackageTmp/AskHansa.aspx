<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="AskHansa.aspx.cs" Inherits="Hansa.Web.AskHansa" %>

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

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="updatePnl" runat="server">
        <ContentTemplate>
            <div class="container" style="background-color: whitesmoke;">

                <div class="card card-container">
                    <div id="Form1" class="form-signin" runat="server">

                        <div class="row">
                            <br />
                        </div>

                        <div class="row">
                            <div class="col-lg-4">
                                <br />
                            </div>

                            <div class="col-lg-4">
                                <input type="email" id="txtEmail" class="form-control" placeholder="Email"
                                    required="required" runat="server" />
                            </div>

                            <div class="col-lg-4">
                                <br />
                            </div>

                        </div>

                        <div class="row">
                            <br />
                        </div>

                        <div class="row">
                            <div class="col-lg-4">
                                <br />
                            </div>

                            <div class="col-lg-4">
                                <textarea id="txtComments" class="form-control" placeholder="Comment" aria-multiline="true"
                                    required="required" runat="server" />
                            </div>

                            <div class="col-lg-4">
                                <br />
                            </div>

                        </div>

                        <div class="row">
                            <br />
                        </div>

                        <div class="row">
                            <div class="col-lg-4">
                                <br />
                            </div>

                            <div class="col-lg-4" style="text-align: center">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-lg btn-primary btn-block btn-signin"
                                    OnClick="btnSubmit_Click" Text="Submit" />
                            </div>

                            <div class="col-lg-4">
                                <br />
                            </div>

                        </div>

                        <div class="row">
                            <br />
                        </div>



                        <div class="row">
                            <div class="col-sm-4">
                                <br />
                            </div>
                            <div class="col-sm-4">

                                <div class="input-group input-group-lg subscription-form">
                                    <p style="font-style:italic">Please allow us 48 hours to  revert you back.</p>
                                </div>

                            </div>
                            <div class="col-sm-4">
                                <br />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="page-section">

                    <%-- <div class="row" style="background-color:whitesmoke;">
                <div class="col-lg-12" style="text-align: center">
                    <h2 style="font-weight: bold;"><span>FAQ</span></h2>
                </div>
            </div>
            <div class="row">

                <div class="col-lg-12">
                    <input type="text" class="" runat="server" id="txtEmail" placeholder="E-Mail" required="required" />

                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <input id="txtComments" runat="server" placeholder="Comments" aria-multiline="true" type="text" required="required" />

                </div> 
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <button id="btnSubmit" runat="server"  type="button"> Submit</button>

                </div> 
            </div>--%>

                    <%-- <div class="row">
                <div class="col-sm-4">

                    </div>
                <div class="col-sm-4">
                   
                     <div class="header-bar"><h2>FAQ</h2></div> 
                    <div class="input-group input-group-lg subscription-form">
                        <input type="text" id="txtEmail" class="form-control" placeholder="Email" required="required" runat="server" autofocus="autofocus">
                    
                    </div>

                </div>
                <div class="col-sm-4">
                    </div>
            </div>

           <div class="row">
                <br />
            </div>

             <div class="row">
                <div class="col-sm-4">

                    </div>
                <div class="col-sm-4">
                    
                    <div class="input-group input-group-lg subscription-form">
                        <input type="text" id="txtComments" class="form-control" placeholder="Comments" aria-multiline="true" required="required">
                         
                    </div>

                </div>
                <div class="col-sm-4">
                    </div>
            </div>
            <div class="row">
                <br />
            </div>

            <div class="row">
                <div class="col-sm-4">

                    </div>
                <div class="col-sm-4"> 
                    <div class="input-group input-group-lg subscription-form" style="width:200px; height:100px;">
 
                            <button id="btnCommentSave"  type="button" onclick="CommentSave();" value="Submit"></button>
                        
                    </div>

                </div>
                <div class="col-sm-4">
                    </div>
            </div>--%>
                </div>



            </div>
        </ContentTemplate>

    </asp:UpdatePanel>

</asp:Content>
