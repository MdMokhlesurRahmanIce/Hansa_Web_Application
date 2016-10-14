<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="RegisterUI.aspx.cs" Inherits="Hansa.Web.RegisterUI" %>

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
    <asp:ScriptManager ID="scrpMngr1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="updatePanelUserSetup" runat="server" UpdateMode="Conditional">
        <ContentTemplate>

            <div class="container">
                <div class="section-header">
                    <h2>Registration</h2>
                </div>
                <%--7dc217--%>



                <div class="row">
                    <div class="col-lg-4" style="text-align: right">
                        First Name 
                    </div>
                    <div class="col-lg-6" style="text-align: left">
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtFirstName"  runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4" style="text-align: right">
                        Last Name 
                    </div>
                    <div class="col-lg-6" style="text-align: left">
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtLastName"  runat="server" />
                    </div>
                </div>
                 <div class="row">
                    <div class="col-lg-4" style="text-align: right"> <%-- userID for user  table--%>
                        E-mail
                    </div>
                    <div class="col-lg-6" style="text-align: left">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtEmail" runat="server" />
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4" style="text-align: right">
                        Password 
                    </div>
                    <div class="col-lg-6" style="text-align: left">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword" runat="server" />
                    </div>
                </div>
                 <div class="row">
                    <div class="col-lg-4" style="text-align: right">
                       Confirm Password 
                    </div>
                    <div class="col-lg-6" style="text-align: left">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                                    <asp:CompareValidator ErrorMessage="Passwords not match." ForeColor="Red" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword" runat="server" />
                    </div>
                </div>

                 <div class="row">
                    <div class="col-lg-4" style="text-align: right">
                        Security-Question
                    </div>
                    <div class="col-lg-6" style="text-align: left">
                        <asp:TextBox ID="txtSqrtyQ" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtSqrtyQ"
                runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4" style="text-align: right">
                        Answer
                    </div>
                    <div class="col-lg-6" style="text-align: left">
                        <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtAnswer"
                runat="server" />
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4" style="text-align: right">
                        Phone 
                    </div>
                    <div class="col-lg-6" style="text-align: left">
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                    </div>
                    
                </div>

                <div class="row">
                    <div class="col-lg-4" style="text-align: right">
                        Address 
                    </div>
                    <div class="col-lg-6" style="text-align: left">
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                    </div>
                    
                </div>

                <div class="row">
                    <div class="col-lg-4" style="text-align: right">
                        Company Name 
                    </div>
                    <div class="col-lg-6" style="text-align: left">
                        <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                    </div>
                    
                </div>
               
                <div class="row">
                    <br />
                </div>

                <div class="row">
                    <div class="col-lg-4">
                    </div>
                    <div class="col-lg-4">

                        <asp:Button ID="btnSave" runat="server" Text="Save" Width="70px" OnClick="btnSave_Click" />
<%--                        <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="70px" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnRefresh" runat="server" Text="Refresh" Width="70px" OnClick="btnRefresh_Click" />--%>
                    </div>
                    <div class="col-lg-4">
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <br />
                    </div>
                </div>

                <%--<div class="row">
                    <div class="col-lg-2">
                        <asp:HiddenField runat="server" ID="hfID" Value="" />
                    </div>
                    <div class="col-lg-8">

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

                    <div class="col-lg-2">
                    </div>
                </div>--%>

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>


</asp:Content>
