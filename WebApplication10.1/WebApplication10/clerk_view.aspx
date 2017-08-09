<%@ Page Language="C#" AutoEventWireup="False" CodeBehind="clerk_view.aspx.cs" Inherits="WebApplication10.clerk_view" MasterPageFile="Site.Master" %>
<asp:Content ID="cview" runat="server"  ContentPlaceHolderID="MainContent" >

<table >
    <tr>
        <td>
            <asp:Label ID="lbl_letterid" runat="server" Text="Letter Id"></asp:Label>
            <asp:TextBox ID="txt_lid" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
</table>




</asp:Content>

