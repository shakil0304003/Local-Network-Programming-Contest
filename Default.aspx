<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contest</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="divHeader">
        </div>
        <asp:Repeater ID="rptContest" runat="server" OnItemDataBound="rptContest_ItemDataBound">
            <ItemTemplate>
                <li>
                    <div style="width: 80%; margin-left: 10%" id="divMiddle">
                        <div style="width: 20%; float: left;">
                            <asp:Literal ID="ltlName" runat="server"></asp:Literal>
                        </div>
                        <div style="width: 20%; float: left;">
                            <asp:Literal ID="ltlArrangedBy" runat="server"></asp:Literal>
                        </div>
                        <div style="width: 20%; float: left;">
                            <asp:Literal ID="ltlStartTime" runat="server"></asp:Literal>
                        </div>
                        <div style="width: 20%; float: left;">
                            <asp:Literal ID="ltlEndTime" runat="server"></asp:Literal>
                        </div>
                        <div style="width: 20%; float: left;">
                            <asp:LinkButton ID="lbStart" runat="server" OnCommand="btnStart" Text="Go"></asp:LinkButton>
                        </div>
                    </div>
                </li>
            </ItemTemplate>
        </asp:Repeater>
        <div id="divFooter">
        </div>
    </div>
    </form>
</body>
</html>
