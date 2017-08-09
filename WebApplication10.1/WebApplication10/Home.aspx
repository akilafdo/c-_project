<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication10._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   

    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"  DataKeyNames="Letter_Number" DataSourceID="SqlDataSource1" Height="231px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="821px" style="margin-top: 0px; margin-bottom: 0px" BackColor="#2B3E50" BorderColor="#2B3E50" BorderStyle="Double" ForeColor="#CCFFFF" ShowHeaderWhenEmpty="True" ShowFooter="True" CssClass="active" UseAccessibleHeader="False">
        <Columns>
            <asp:BoundField DataField="Letter_Number" HeaderText="Letter_Number" ReadOnly="True" SortExpression="Letter_Number" />
            <asp:BoundField DataField="Registration_Number" HeaderText="Registration_Number" SortExpression="Registration_Number" />
            <asp:BoundField DataField="Receiver" HeaderText="Receiver" SortExpression="Receiver" />
            <asp:BoundField DataField="Recive_Date" HeaderText="Recive_Date" SortExpression="Recive_Date" DataFormatString="{0:d}" />
            <asp:BoundField DataField="Sender" HeaderText="Sender" SortExpression="Sender" />
            <asp:BoundField DataField="Send_Date" HeaderText="Send_Date" SortExpression="Send_Date" DataFormatString="{0:d}" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
        <HeaderStyle BackColor="#2B3E50" ForeColor="#33CCFF" />
    </asp:GridView>
   
   

    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Mails_FisheriesConnectionString %>" SelectCommand="SELECT [Letter Number] AS Letter_Number, [Registration Number] AS Registration_Number, [Receiver], [Recive Date] AS Recive_Date, [Sender], [Send Date] AS Send_Date, [Description] FROM [Letter_Detail]"></asp:SqlDataSource>
        
   

    

    </asp:Content>
