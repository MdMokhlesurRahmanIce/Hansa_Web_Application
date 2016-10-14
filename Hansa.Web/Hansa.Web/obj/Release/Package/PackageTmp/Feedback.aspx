<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Hansa.Web.Feedback" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        $(document).ready(function () {

            $('#hsForMainSliders').hide();
            $('#hsForOngoingProjects').hide();
            $('#hsForUpCommingProjects').hide();

            $('#ContentPlaceHolder1_btnSave').click(function () {

               // alert('You are not Registered.');

               // return false;
            });

        })


    </script>

    <style type="text/css">
        .Star {
            background-image: url(Content/assets/ImagesForRatings/staredImage80.jpg);
            height: 77px;
            width: 73px;
        }

        .WaitingStar {
            background-image: url(Content/assets/ImagesForRatings/waitImage80.jpg);
            height: 77px;
            width: 73px;
        }

        .FilledStar {
            background-image: url(Content/assets/ImagesForRatings/FilleddImage80.jpg);
            height: 77px;
            width: 73px;
        }


        .StarGV2 {
            background-image: url(Content/assets/ImagesForRatings/Star.gif);
            height: 17px;
            width: 17px;
        }

        .WaitingStarGV2 {
            background-image: url(Content/assets/ImagesForRatings/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }

        .FilledStarGV2 {
            background-image: url(Content/assets/ImagesForRatings/FilledStar.gif);
            height: 17px;
            width: 17px;
        }
        .commentsWidth {
            width:370px;
            height:120px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:ScriptManager ID="scrpMngr1" runat="server"></asp:ScriptManager>--%>
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <asp:UpdatePanel ID="updatePanelUserSetup" runat="server" UpdateMode="Conditional">
        <ContentTemplate>

            <div class="container">
                <div class="section-header">
                    <h2>User Feedback</h2>
                </div>
                <%--7dc217--%>
                <div class="row">

                    <div class="col-lg-4" style="text-align: right;">
                        <%--Rating--%>
                        <h1><asp:Literal ID="ltMessage" runat="server" /></h1> 
                    </div>
                    <div class="col-lg-8" style="text-align: left;">


                        <cc1:Rating ID="Rating1" AutoPostBack="true" OnChanged="OnRatingChanged" runat="server"
                            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
                            FilledStarCssClass="FilledStar">
                        </cc1:Rating>

                    </div>

                    <%--<div class="col-lg-1">
                    </div>--%>
                </div>
                <div class="row">
                    <br />
                    
                </div>


                <div class="row">

                    <div class="col-lg-3">
                        <br />
                    </div>
                    <div class="col-lg-1" style="margin-top:45px;">
                        Comments
                    </div>
                    <div class="col-lg-8" style="text-align: left">

                        <asp:TextBox runat="server" ID="txtComments" TextMode="MultiLine" class="commentsWidth">

                        </asp:TextBox>
                    </div>

                   <%-- <div class="col-lg-3">
                    </div>--%>
                </div>

                <div class="row">
                    <br />
                   
                </div>


                <%-- <div class="row">
                    <div class="col-lg-5">

                    </div>
                    <div class="col-lg-6">
                        <asp:Button runat="server" ID="btnSaveRatings" Text="Submit" OnClick="btnSubmit_Click" />
                    </div>
                    <div class="col-lg-1">

                    </div>
                </div>--%>

                <div class="row">
                    <div class="col-lg-4">
                        <br />
                    </div>
                    <div class="col-lg-4" style="text-align:center">

                        <asp:Button ID="btnSave" runat="server" Text="Save" Width="70px" OnClick="btnSave_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="70px" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnRefresh" runat="server" Text="Refresh" Width="70px" OnClick="btnRefresh_Click" />
                    </div>
                    <div class="col-lg-4">
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <br />
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-2">
                        <asp:HiddenField runat="server" ID="hfID" Value="" />
                        <asp:HiddenField runat="server" ID="hfUserID" Value="" />
                    </div>
                    <div class="col-lg-8">

                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server"
                                AutoGenerateColumns="false" GridLines="None" ForeColor="#333333" AllowPaging="true" ShowFooter="true">
                                <Columns>
                                    <asp:TemplateField ItemStyle-Width="150px" HeaderText="">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkSelect" runat="server" Text="Select" OnClick="Select"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>

<%--                                      <asp:TemplateField HeaderText="Rating" ItemStyle-Width="500px">
                                        <ItemTemplate>
                                            <cc1:Rating ID="Rating2"   runat="server"
                                                StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
                                                FilledStarCssClass="FilledStar" CurrentRating='<%# Eval("Rating") %>'>
                                                </cc1:Rating>
                                                    </itemtemplate>
                                          </asp:TemplateField>--%>

                                 

                                    <asp:BoundField DataField="ID" HeaderText="ID" HtmlEncode="true" ItemStyle-Width="150px" />
                                    <asp:BoundField DataField="UserID" HeaderText="User ID" HtmlEncode="true" ItemStyle-Width="150px" />
                              

                                    <asp:BoundField DataField="Comments" HeaderText="Comments" HtmlEncode="true" ItemStyle-Width="400px" /> 

                                </Columns>

                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <EditRowStyle BackColor="#999999" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <PagerSettings PageButtonCount="5" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
                        </div>

                    </div>

                    <div class="col-lg-2">
                    </div>
                </div>

                 <div class="row">
                   
                    <div class="col-lg-12">

                        <div class="table-responsive">
                            <asp:GridView ID="gvForNotAdmin" runat="server" 
                                AutoGenerateColumns="false" GridLines="None" ForeColor="#333333" AllowPaging="true" ShowFooter="true" >
                                <Columns>
                                   <asp:BoundField DataField="UserID" HeaderText="User Name" HtmlEncode="true" ItemStyle-Width="250px" ItemStyle-Height="100px"  />

                                      <asp:TemplateField HeaderText="Rating" ItemStyle-Width="400px" ItemStyle-Height="100px"  >
                                        <ItemTemplate>
                                            <cc1:Rating ID="Rating2"   runat="server"
                                                StarCssClass="StarGV2" WaitingStarCssClass="WaitingStarGV2" EmptyStarCssClass="StarGV2"
                                                FilledStarCssClass="FilledStarGV2" CurrentRating='<%# Eval("Rating") %>'>
                                                </cc1:Rating>
                                                    </itemtemplate>
                                          </asp:TemplateField> 
                                    
                                 <%--   <asp:TemplateField HeaderText="Fruit Ratings">
                                        <ItemTemplate>
                                            <cc1:Rating ID="Rating1" AutoPostBack="true" OnChanged="OnRatingChanged" runat="server"
                                                StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
                                                FilledStarCssClass="FilledStar" CurrentRating='<%# Eval("Rating") %>'>
                                                </cc1:Rating>
                                                    </itemtemplate> 
                                   </asp:TemplateField>--%>

                                    <asp:BoundField DataField="Comments" HeaderText="Comments" HtmlEncode="true" ItemStyle-Width="500px" ItemStyle-Height="100px"  /> 

                                </Columns>

                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <EditRowStyle BackColor="#999999" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <PagerSettings PageButtonCount="5" />
                                <PagerStyle BackColor="#284775" ForeColor="White"  />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
                        </div>

                    </div>

                    <div class="col-lg-2">
                    </div>
                </div>

            </div>



            <%--  <asp:ObjectDataSource ID="odsDivision" runat="server" SelectMethod="GetAllDivision"
                TypeName="SecurityModule.BusinessLogic.UserProvider"></asp:ObjectDataSource>--%>
</ContentTemplate>
    </asp:UpdatePanel>


</asp:Content>
