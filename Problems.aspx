<%@ Page Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true"
    CodeFile="Problems.aspx.cs" Inherits="Problems" Title="Problems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <div style="width: 15%; float: left;">
        <asp:Repeater ID="rptProblems" runat="server" OnItemDataBound="rptProblems_ItemDataBound">
            <ItemTemplate>
                <li><strong><a id="aProblem" runat="server" href="#">
                    <asp:Literal ID="ltlProblemName" runat="server"></asp:Literal></a></strong>
                    <br />
                    <asp:Literal ID="ltlYourStatus" runat="server"></asp:Literal>
                    <br />
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div style="width: 70%; float: left;">
        <div style="text-align: center;">
            <asp:Literal ID="ltlUpper" runat="server"></asp:Literal>
            <asp:Literal ID="ltlProblemTitle" runat="server"></asp:Literal>
        </div>
        <asp:Literal ID="ltlProblemStatement" runat="server"></asp:Literal>
        <br />
        <br />
        <div id="divSubmit" runat="server">
            Exe : &nbsp;&nbsp;&nbsp;<asp:FileUpload ID="fuSubmit" runat="server" /><br/>
            Code : <asp:FileUpload ID="fuCode" runat="server" />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"
                ValidationGroup="submit" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*You have to select an exe file."
                ControlToValidate="fuSubmit" ValidationGroup="submit" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*You have to select a code file."
                ControlToValidate="fuCode" ValidationGroup="submit" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:Literal ID="ltlErrorMessage" runat="server"></asp:Literal>
        </div>
    </div>
    <div style="width: 15%; float: left;">
        <asp:Repeater ID="rptResults" runat="server" OnItemDataBound="rptResults_ItemDataBound">
            <ItemTemplate>
                <li>
                    <asp:Literal ID="ltlResult" runat="server"></asp:Literal>
                    <br />
                    <br />
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
