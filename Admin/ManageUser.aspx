<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="Admin_ManageUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:MultiView ID="mvProblem" runat="server" ActiveViewIndex="0">
        <asp:View ID="vAll" runat="server">
            <div style="padding-left: 460px;">
                <asp:LinkButton ID="lbAdd" runat="server" CommandName="Add" OnCommand="btnProblems_Command">Add</asp:LinkButton>
            </div>
            <div class="clear">
            </div>
            <div style="float: left; width: 10%;">
                &nbsp;
            </div>
            <div style="float: left; width: 80%">
                <table>
                    <tbody>
                        <asp:Repeater ID="rptProblems" runat="server" OnItemDataBound="rptProblems_ItemDataBound">
                            <ItemTemplate>
                                <tr>
                                    <asp:Literal ID="ltlProblems" runat="server"></asp:Literal>
                                    <td style="width: 100px;">
                                        <asp:LinkButton ID="lbShow" runat="server" CommandName="Edit" OnCommand="btnProblems_Command">Edit</asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </asp:View>
        <asp:View ID="vShow" runat="server">
            <div style="padding-left: 20px;">
                
                Name :
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtName" ID="RequiredFieldValidator2"
                    runat="server" ErrorMessage="*" ValidationGroup="Create"></asp:RequiredFieldValidator>
                <div class="clear">
                </div>
                
                IP Address :
                <asp:TextBox ID="txtIPAddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtIPAddress" ID="RequiredFieldValidator1"
                    runat="server" ErrorMessage="*" ValidationGroup="Create"></asp:RequiredFieldValidator>
                <div class="clear">
                </div>
                

                Contest :
                <asp:DropDownList ID="ddlSelectContest" runat="server" AutoPostBack="true" 
                    onselectedindexchanged="ddlSelectContest_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="IsPerticipent" />
                <div class="clear">
                </div>

                <asp:LinkButton ID="lbSave" runat="server" CommandName="Save" ValidationGroup="Create"
                    OnCommand="btnProblems_Command">Save</asp:LinkButton>
                <asp:LinkButton ID="lbCancle" runat="server" CommandName="Cancle" OnCommand="btnProblems_Command">Cancle</asp:LinkButton>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>

