<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="New Password : "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="200" TextMode="Password"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Change" onclick="Button1_Click" />
</asp:Content>

