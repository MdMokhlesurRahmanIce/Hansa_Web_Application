<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="UserSetupUI.aspx.cs" Inherits="Hansa.Web.UserSetupUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        $(document).ready(function () {

            $('#hsForMainSliders').hide();
            $('#hsForOngoingProjects').hide();
            $('#hsForUpCommingProjects').hide();

        })

    </script>

    <style type="text/css">
        .ForAllTextBoxsize {
            width:215px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="scrpMngr1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="updatePanelUserSetup" runat="server" UpdateMode="Conditional">
        <ContentTemplate>

            <div class="container">
                <div class="section-header">
                    <h2>User Setup</h2>
                </div>
                <%--7dc217--%>



                <div class="row">
                     
                    <div class="col-lg-5" style="text-align:right;">
                        User 
                    </div>
                    <div class="col-lg-7" style="text-align:left;">
                        <asp:TextBox ID="txtUser" runat="server" CssClass="ForAllTextBoxsize"></asp:TextBox>
                    </div>
 
                </div>
                <div class="row">
                    <div class="col-lg-5" style="text-align: right">
                        Password 
                    </div>
                    <div class="col-lg-7" style="text-align: left">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="ForAllTextBoxsize"></asp:TextBox>
                    </div>
 
                </div>
                <div class="row">
                    <div class="col-lg-5" style="text-align: right">
                        Is-Admin 
                    </div>
                    <div class="col-lg-7" style="text-align: left">
                        <asp:CheckBox ID="chkIsAdmin" runat="server" OnCheckedChanged="chkIsAdmin_OnCheckedChanged" AutoPostBack="true"/>
                    </div> 
                </div>

                 <div class="row">
                    <div class="col-lg-5" style="text-align: right">
                        Is-Common-Viewer 
                    </div>
                    <div class="col-lg-7" style="text-align: left">
                        <asp:CheckBox ID="chkIsCommonViwer" runat="server" OnCheckedChanged="chkIsCommonViwer_OnCheckedChanged" AutoPostBack="true"/>
                    </div> 
                </div>

                <div class="row">
                    <div class="col-lg-5" style="text-align: right">
                        E-mail
                    </div>
                    <div class="col-lg-7" style="text-align: left">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="ForAllTextBoxsize"></asp:TextBox>
                    </div>
                     
                </div>
                <div class="row">
                    <div class="col-lg-5" style="text-align: right">
                        Security-Question
                    </div>
                    <div class="col-lg-7" style="text-align: left">
                        <asp:TextBox ID="txtSqrtyQ" runat="server" CssClass="ForAllTextBoxsize"></asp:TextBox>
                    </div>
                  
                </div>
                <div class="row">
                    <div class="col-lg-5" style="text-align: right">
                        Answer
                    </div>
                    <div class="col-lg-7" style="text-align: left">
                        <asp:TextBox ID="txtAnswer" runat="server" CssClass="ForAllTextBoxsize"></asp:TextBox>
                    </div>
                    
                </div>

                <div class="row">
                    <div class="col-lg-5" style="text-align: right">
                        Status 
                    </div>
                    <div class="col-lg-7" style="text-align: left">
                        <asp:DropDownList ID="ddlStatus" runat="server" CssClass="ForAllTextBoxsize">
                            <asp:ListItem Value="0" Selected="True">---Select---</asp:ListItem>
                            <asp:ListItem Value="1">Active</asp:ListItem>
                            <asp:ListItem Value="2">Inactive</asp:ListItem>

                        </asp:DropDownList>
                    </div> 
                </div>
                <div class="row">
                    <br />
                </div>

                <div class="row">
                    <div class="col-lg-5">
                        <br />
                    </div>
                    <div class="col-lg-4">

                        <asp:Button ID="btnSave" runat="server" Text="Save" Width="70px" OnClick="btnSave_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="70px" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnRefresh" runat="server" Text="Refresh" Width="70px" OnClick="btnRefresh_Click" />
                    </div>
                    <div class="col-lg-3">
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-3">
                        <asp:HiddenField runat="server" ID="hfID" Value="" />
                    </div>
                    <div class="col-lg-9">

                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server"
                                AutoGenerateColumns="false" GridLines="None" ForeColor="#333333" AllowPaging="true" ShowFooter="true">
                                <Columns>
                                    <asp:TemplateField ItemStyle-Width="200px" HeaderText="">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkSelect" runat="server" Text="Select" OnClick="Select"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="ID" HeaderText="ID" HtmlEncode="true" ItemStyle-Width="200px" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" HtmlEncode="true" ItemStyle-Width="200px" />

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
                </div> 
            </div> 
        </ContentTemplate>
    </asp:UpdatePanel>


</asp:Content>
