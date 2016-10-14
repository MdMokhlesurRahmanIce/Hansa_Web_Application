<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="UserRoleAssaign.aspx.cs" Inherits="Hansa.Web.UserRoleAssaign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        $(document).ready(function () {

            $('#hsForMainSliders').hide();
            $('#hsForOngoingProjects').hide();
            $('#hsForUpCommingProjects').hide();

        })


        function findRole() {
            //   alert('hjd');
            var rt = "";

            $.ajax({
                async: true,
                type: "POST",
                url: "UserRoleAssaign.aspx/findRoleDetails",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify({ rt: rt }),

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

     <style type="text/css">
        .ForAllTextBoxsize {
            width:250px;
        }
         .ForBtn {
             width:100px;
         }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">
            <br /> 
        </div>

        <div class="row">
            <div class="col-lg-12" style="text-align: center">
                <h2>User Role Assign</h2>
            </div>
        </div>


        <div class="row">
            <br />
        </div>





        <div class="row">
            <div class="col-lg-5" style="text-align: right">

                <asp:LinkButton ID="btnFind" runat="server" type="button" class="btn btn-info btn-lg" OnClientClick="findRole()" data-toggle="modal" data-target="#myModal"><span class="fa fa-search"></span></asp:LinkButton>

            </div>
            <div class="col-lg-7">

                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Role Details</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="table-responsive">
                                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" GridLines="None" ForeColor="#333333" AllowPaging="true" ShowFooter="true">
                                                <Columns>
                                                    <asp:BoundField DataField="GroupCode" HeaderText="Group Code" HtmlEncode="true" />
                                                    <asp:BoundField DataField="GroupName" HeaderText="Group Name" HtmlEncode="true" />
                                                    <asp:BoundField DataField="Description" HeaderText="Description" HtmlEncode="true" />
                                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkSelect" runat="server" Text="Select" OnClick="Select"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
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

                                <div class="row">
                                    <div class="col-lg-12">

                                        <asp:Label ID="lblPopUpData" runat="server" Text=""></asp:Label>
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

        <div id="lblMsg" class="row" runat="server">
        </div>
        <div id="SeachBlock" class="row" runat="server"></div>
        <div class="row">
            <asp:HiddenField ID="hfID" runat="server" Value="" />
        </div>

        <div class="row">
            <div class="col-lg-5" style="text-align: right">
                <asp:Label ID="lblGroupName" runat="server" Text="Group Name"></asp:Label>
            </div>
            <div class="col-lg-3" style="text-align: left">
                <asp:TextBox ID="txtGroupName" runat="server"  CssClass="ForAllTextBoxsize" ></asp:TextBox>
            </div>
            <div class="col-lg-4">
                <br />
            </div>
        </div>


        <div class="row">
            <div class="col-lg-5" style="text-align: right">
                <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
            </div>
            <div class="col-lg-3" style="text-align: left">
                <asp:TextBox ID="txtDescription" runat="server"  CssClass="ForAllTextBoxsize" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="col-lg-4">
                <br />
            </div>
        </div>


        <div class="row">
            <br />
        </div>

        <div class="row">
            <div class="col-lg-6" style="text-align: left">
                <div class="table-responsive">

                    <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False" Width="95%"
                        Caption="User List" GridLines="None" ForeColor="#333333" ShowFooter="true" CaptionAlign="top">
                        <Columns>
                            <asp:TemplateField HeaderText="Select">
                                <%--<HeaderStyle HorizontalAlign="Left" Width="20%" VerticalAlign="Middle" />--%>
                                <ItemTemplate>
                                    <asp:CheckBox ID="ChkUser" runat="server" CssClass="mycheckbox" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ID">
                                <%--<HeaderStyle HorizontalAlign="Left" Width="5%" VerticalAlign="Middle" />--%>
                                <ItemTemplate>
                                    <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User ID">
                                <%--<HeaderStyle HorizontalAlign="Right" Width="20px" VerticalAlign="Middle" />--%>
                                <ItemTemplate>
                                    <asp:Label ID="lblUserID" runat="server" Text='<%# Eval("UserID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
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
            <div class="col-lg-6" style="text-align: left">

                <div class="table-responsive">
                    <asp:GridView ID="gvRole" runat="server" AutoGenerateColumns="False"
                        Caption="Role List" Width="95%" GridLines="None" ForeColor="#333333" AllowPaging="true" ShowFooter="true">
                        <Columns>
                            <asp:TemplateField HeaderText="Select">
                                <ItemTemplate>
                                    <asp:CheckBox ID="ChkRole" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Role Code">
                                <ItemTemplate>
                                    <asp:Label ID="lblRoleCode" runat="server" Text='<%# Eval("RoleCode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Role Name">
                                <ItemTemplate>
                                    <asp:Label ID="lblRoleName" runat="server" Text='<%# Eval("RoleName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
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

        <div class="row">
            <br />
        </div>

        <div class="row">
             <div class="col-lg-5">
                <br />
            </div>
            <div class="col-lg-4" style="text-align: left">
                <asp:Button ID="btnSave" runat="server" Text="Save" ValidationGroup="Save"
                    OnClick="btnSave_Click" CssClass="ForBtn" />
            
                <asp:Button ID="btnClear" runat="server" Text="Refresh" OnClick="btnClear_Click"  CssClass="ForBtn"/>
            </div>
            <div class="col-lg-3">
                <br />
            </div>
        </div>

    </div>
    <asp:HiddenField ID="hfUserCode" runat="server" />


</asp:Content>
