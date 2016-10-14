<%@ Page Title="" Language="C#" MasterPageFile="~/SiteHome.Master" AutoEventWireup="true" CodeBehind="RoleSetup.aspx.cs" Inherits="Hansa.Web.RoleSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        $(document).ready(function () {

            $('#hsForMainSliders').hide();
            $('#hsForOngoingProjects').hide();
            $('#hsForUpCommingProjects').hide();

            //$('#ContentPlaceHolder1_btnFind').click(function () {

            //   // var vP = $('#loginP').text();
            //    //  alert('vP');

            //    var rt = "";

            //    $.ajax({
            //        async: true,
            //        type: "POST",
            //        url: "RoleSetupUI.aspx/findRoleDetails",
            //        contentType: "application/json; charset=utf-8",
            //        data: JSON.stringify({ rt: rt }), 
            //        cash: false,
            //        success: function (msg) {
            //            // alert('in success of getcount');

            //        },
            //        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //            // alert('in failure of getcount');


            //        }
            //    });
            //});
        })

        function findRole() {
            //   alert('hjd');
            var rt = "";

            $.ajax({
                async: true,
                type: "POST",
                url: "RoleSetup.aspx/findRoleDetails",
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
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <br />

        </div>

        <div class="row">
            <div class="col-lg-12" style="text-align: center">
                <h2>Role Setup</h2>
            </div>
        </div> 

        <div class="row">
            <div class="col-lg-5" style="text-align: right">

                <button id="btnFind" runat="server" type="button" class="btn btn-info btn-lg" onclick="findRole()" data-toggle="modal" data-target="#myModal"><span class="fa fa-search"></span></button>

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
                                            <asp:GridView ID="GridView2" runat="server"
                                                AutoGenerateColumns="false" GridLines="None" ForeColor="#333333" AllowPaging="true" ShowFooter="true">
                                                <Columns>
                                                    <asp:BoundField DataField="RoleCode" HeaderText="Role Code" HtmlEncode="true" />
                                                    <asp:BoundField DataField="RoleName" HeaderText="Role Name" HtmlEncode="true" />
                                                    <asp:BoundField DataField="RoleDescription" HeaderText="Role Description" HtmlEncode="true" />
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

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12" id="lblMsg" runat="server">
            </div>
        </div>
        <div class="row">
            <div class="col-lg-5" style="text-align: right">
                <asp:Label ID="lblRoleName" runat="server" Text="Role Name"></asp:Label>
            </div>
            <div class="col-lg-3" style="text-align: left">
                <asp:TextBox ID="roleNameTextBox" runat="server" class="ForAllTextBoxsize"></asp:TextBox>
            </div>
            <div class="col-lg-4">
                <br />
            </div>
        </div>
        <div class="row">
            <div class="col-lg-5" style="text-align: right">
                <asp:Label ID="lblRoleDescription" runat="server" Text="Role Description"></asp:Label>
            </div>
            <div class="col-lg-3" style="text-align: left">
                <asp:TextBox ID="descriptionTextBox" runat="server" TextMode="MultiLine" class="ForAllTextBoxsize"></asp:TextBox>
            </div>
            <div class="col-lg-4">
                <br />
            </div>
        </div>

        <div class="row">
            <div class="col-lg-5" style="text-align: right">
                <asp:Label ID="lblVatRegNo" runat="server" Text="Select Menu Type"></asp:Label>
            </div>
            <div class="col-lg-3" style="text-align: left">
                <asp:DropDownList ID="ddlMenuType" runat="server" OnSelectedIndexChanged="ddlMenuType_OnSelectedIndexChanged" AutoPostBack="True" class="ForAllTextBoxsize">
                </asp:DropDownList>
            </div>
            <div class="col-lg-4">
                <br />
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <br />
            </div>

        </div>


        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-10">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333"
                        GridLines="None" OnRowDataBound="GridView1_RowDataBound"
                        Width="956px" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="20" ShowFooter="true">
                        <Columns>
                            <asp:BoundField DataField="MenuID" HeaderText="ID" SortExpression="MenuID">
                                <HeaderStyle Width="200px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ParentID" HeaderText="ParentID" Visible="False" />
                            <asp:BoundField DataField="Caption" HeaderText="PagesCaption-Name">
                                <ItemStyle Width="400px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Select">
                                <HeaderTemplate>
                                    <asp:CheckBox ID="chkSelectAll" runat="server" AutoPostBack="True"
                                        CssClass="style8" OnCheckedChanged="chkSelectAll_CheckedChanged"
                                        Text="  Select" Width="80px" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkSelect" runat="server" Height="20px" Width="80px" Checked='<%#Bind("CanSelect")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Insert">
                                <HeaderTemplate>
                                    <asp:CheckBox ID="chkInsertAll" runat="server" AutoPostBack="True" OnCheckedChanged="chkInsertAll_CheckedChanged"
                                        Text="  Insert " Width="80px" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkAdd" runat="server" Checked='<%#Bind("CanInsert")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Update">
                                <HeaderTemplate>
                                    <asp:CheckBox ID="chkEditAll" runat="server" AutoPostBack="True"
                                        OnCheckedChanged="chkEditAll_CheckedChanged" Text="  Update" Width="80px" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkEdit" runat="server" Checked='<%#Bind("CanUpdate")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete">
                                <HeaderTemplate>
                                    <asp:CheckBox ID="chkDelateAll" runat="server" AutoPostBack="True" OnCheckedChanged="chkDelateAll_CheckedChanged"
                                        Text="  Delete" Width="80px" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkDelate" runat="server" Checked='<%#Bind("CanDelete")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Send">
                                <HeaderTemplate>
                                    <asp:CheckBox ID="chkSendAll" runat="server" AutoPostBack="True" OnCheckedChanged="chkSendAll_CheckedChanged"
                                        Text="  Send " Width="80px" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkSend" runat="server" Checked='<%#Bind("CanSend")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Check">
                                <HeaderTemplate>
                                    <asp:CheckBox ID="chkCheckAll" runat="server" AutoPostBack="True" OnCheckedChanged="chkCheckAll_CheckedChanged"
                                        Text="  Check " Width="80px" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkCheck" runat="server" Checked='<%#Bind("CanCheck")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Approve">
                                <HeaderTemplate>
                                    <asp:CheckBox ID="chkApproveAll" runat="server" AutoPostBack="True" OnCheckedChanged="chkApproveAll_CheckedChanged"
                                        Text="  Approve " Width="80px" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkApprove" runat="server" Checked='<%#Bind("CanApprove")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Preview">
                                <HeaderTemplate>
                                    <asp:CheckBox ID="chkPreviewAll" runat="server" AutoPostBack="True"
                                        OnCheckedChanged="chkPreviewAll_CheckedChanged" Text="  Preview"
                                        Width="80px" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkPreview" runat="server" Checked='<%#Bind("CanPreview")%>' />
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
            <div class="col-lg-1"></div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <br />
            </div>
        </div>

        <div class="row" style="text-align: center">
            <div class="col-lg-1">
                <asp:HiddenField ID="hfRoleCode" runat="server" />
            </div>
            <div class="col-lg-6" style="text-align: right">
                <asp:Button ID="btnSave" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </div>
            <div class="col-lg-5" style="text-align: left">
                <asp:Button ID="newButton" runat="server" Text="New" OnClick="newButton_Click" Visible="false" />
            </div>
            
        </div>
        <div class="row">
            <div class="col-lg-12">
                <br />
            </div>
        </div>

    </div>

</asp:Content>
