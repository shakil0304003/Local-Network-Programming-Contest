<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="ProblemSet.aspx.cs" Inherits="Admin_ProblemSet" Title="Problem Set" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                                        <asp:LinkButton ID="lbDelete" runat="server" CommandName="Delete" OnCommand="btnProblems_Command"
                                            OnClientClick="return confirm('Are you sure to delete?');">Delete</asp:LinkButton>
                                    </td>
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
                Number :
                <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtNumber" ID="RequiredFieldValidator1"
                    runat="server" ErrorMessage="*" ValidationGroup="Create"></asp:RequiredFieldValidator>
                <div class="clear">
                </div>
                Name :
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtName" ID="RequiredFieldValidator2"
                    runat="server" ErrorMessage="*" ValidationGroup="Create"></asp:RequiredFieldValidator>
                <div class="clear">
                </div>
                Statement :
                <br />
                <FCKeditorV2:FCKeditor ID="fckEntryContent" runat="server" BasePath="~/Controls/fckeditor/"
                    Height="400px">
                </FCKeditorV2:FCKeditor>
                <div class="clear">
                </div>
                Contest :
                <asp:DropDownList ID="ddlSelectContest" runat="server">
                </asp:DropDownList>
                <div class="clear">
                </div>
                Time :
                <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtTime" ID="RequiredFieldValidator4"
                    runat="server" ErrorMessage="*" ValidationGroup="Create"></asp:RequiredFieldValidator>
                <div class="clear">
                </div>
                Input File :
                <asp:TextBox ID="txtInput" runat="server" ReadOnly="true"></asp:TextBox>
                <asp:FileUpload ID="fuInput" runat="server" />
                <div class="clear">
                </div>
                Output File :
                <asp:TextBox ID="txtOutput" runat="server" ReadOnly="true"></asp:TextBox>
                <asp:FileUpload ID="fuOutput" runat="server" />
                <div class="clear">
                </div>
                <asp:LinkButton ID="lbSave" runat="server" CommandName="Save" ValidationGroup="Create"
                    OnCommand="btnProblems_Command">Save</asp:LinkButton>
                <asp:LinkButton ID="lbCancle" runat="server" CommandName="Cancle" OnCommand="btnProblems_Command">Cancle</asp:LinkButton>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
