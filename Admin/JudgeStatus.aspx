<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="JudgeStatus.aspx.cs" Inherits="Admin_JudgeStatus" Title="Judge Status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="mvStatus" runat="server" ActiveViewIndex="0">
        <asp:View ID="vAll" runat="server">
            <div style="float: left; width: 10%">
            </div>
            <div style="float: left; width: 90%">
                <table style="margin-left: 20px;">
                    <tbody>
                        <asp:Repeater ID="rptSolutions" runat="server" OnItemDataBound="rptSolutions_ItemDataBound">
                            <ItemTemplate>
                                <tr>
                                    <asp:Literal ID="ltlSolution" runat="server"></asp:Literal>
                                    <td style="width: 100px;">
                                        <asp:LinkButton ID="lbReJudge" runat="server" CommandName="ReJudge" OnCommand="btnJudge_Command">Rejudge</asp:LinkButton>
                                    </td>
                                    <td style="width: 100px;">
                                        <asp:LinkButton ID="lbShow" runat="server" CommandName="Show" OnCommand="btnJudge_Command">Show</asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </asp:View>
        <asp:View ID="vShow" runat="server">
            <asp:ListBox ID="listbJudge" runat="server" Width="450px" Height="500px" AutoPostBack="true"
                OnSelectedIndexChanged="listbJudge_SelectedIndexChanged"></asp:ListBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ListBox ID="listbSolver" runat="server" Width="450px" Height="500px" AutoPostBack="true"
                OnSelectedIndexChanged="listbSolver_SelectedIndexChanged"></asp:ListBox>
            <br />
            <asp:LinkButton ID="lbCancle" runat="server" CommandName="Cancle" OnCommand="btnJudge_Command">Cancle</asp:LinkButton>
        </asp:View>
    </asp:MultiView>
</asp:Content>
