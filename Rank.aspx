<%@ Page Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true"
    CodeFile="Rank.aspx.cs" Inherits="Rank" Title="Ranks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta http-equiv="refresh" content="30;url=Rank.aspx" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <table>
        <tbody>
            <tr>
                <asp:Literal ID="ltlProblemName" runat="server"></asp:Literal>
            </tr>
            <asp:Repeater ID="rptProblems" runat="server" OnItemDataBound="rptProblems_ItemDataBound">
                <ItemTemplate>
                    <tr>
                        <asp:Literal ID="ltluser" runat="server"></asp:Literal>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
