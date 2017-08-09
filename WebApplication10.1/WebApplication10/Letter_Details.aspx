<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Letter_Details.aspx.cs" Inherits="WebApplication10.Letter_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
        <table class="nav-justified" style="font-size: medium; width: 109%; margin-right: 53px; height: 536px;">
            <tr>
                <td style="width: 270px; font-size: x-large; height: 34px;">Letter ID<br />
                </td>
                <td style="width: 280px; height: 34px;">
                    <asp:Label ID="Lbl_Lid" runat="server" Text="Label"></asp:Label>
                </td>
                <td rowspan="8">                   
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#2B3E50" BorderColor="#2B3E50" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Letter_Number" DataSourceID="SqlDataSource1" ForeColor="#CCFFFF" GridLines="Vertical" Height="255px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-top: 0px; margin-left: 21px;" Width="671px" AllowCustomPaging="True" HorizontalAlign="Justify" CssClass="active" ShowFooter="True">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="Letter_Number" HeaderText="Letter_Number" ReadOnly="True" SortExpression="Letter_Number" />
                            <asp:BoundField DataField="B_No" HeaderText="B_No" SortExpression="B_No" />
                            <asp:BoundField DataField="Registration_Number" HeaderText="Registration_Number" SortExpression="Registration_Number" FooterStyle-HorizontalAlign="Center" FooterStyle-VerticalAlign="Top" >
                            </asp:BoundField>
                            <asp:BoundField DataField="Receiver" HeaderText="Receiver" SortExpression="Receiver" />
                            <asp:BoundField DataField="Recive_Date" HeaderText="Recive_Date" SortExpression="Recive_Date" DataFormatString="{0:d}"/>
                            <asp:BoundField DataField="Sender" HeaderText="Sender" SortExpression="Sender" />
                            <asp:BoundField DataField="Send_Date" HeaderText="Send_Date" SortExpression="Send_Date" DataFormatString="{0:d}"/>
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="#2B3E50" Font-Bold="True" ForeColor="#33CCFF" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>               
            </tr>
            <tr>
                <td style="width: 270px; font-size: x-large;">Registration Number<br />
                </td>
                <td style="width: 280px">
                    <asp:TextBox ID="Txt_RegNo" runat="server" Height="28px" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 270px; font-size: x-large;">Recevier<br />
                </td>
                <td style="width: 280px">
                    <asp:TextBox ID="Txt_Rec" runat="server" Height="28px" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 270px; font-size: x-large;">Receving Date<br />
                </td>
                <td style="width: 280px">
                    <asp:TextBox ID="Txt_RecDate" runat="server" Width="185px" Height="28px"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="TextBox8_CalendarExtender" runat="server" TargetControlID="Txt_RecDate" />
                </td>
            </tr>
            <tr>
                <td style="height: 5px; width: 270px; font-size: x-large;">Sender<br />
                </td>
                <td style="height: 5px; width: 280px">
                    <asp:TextBox ID="Txt_Sen" runat="server" Width="185px" Height="28px" OnTextChanged="Txt_Sen_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 270px; font-size: x-large;">Send Date<br />
                </td>
                <td style="width: 280px">
                    <asp:TextBox ID="Txt_SenDate" runat="server" Width="185px" Height ="28px"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="TextBox10_CalendarExtender" runat="server" TargetControlID="Txt_SenDate" />
                </td>
            </tr>
            <tr>
                <td style="width: 270px; height: 78px; font-size: x-large;">Description</td>
                <td style="width: 280px; height: 78px;">
                    <asp:TextBox ID="Txt_Des" runat="server" Height="85px" TextMode="MultiLine" Width="186px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 270px">&nbsp;</td>
                <td style="width: 280px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 270px; height: 55px;">
                    <asp:Button ID="Btn_Upl" runat="server" CssClass="alert-success" Height="40px" Text="Upload" Width="130px" OnClick="Btn_Upl_Click" />
                </td>
                <td style="width: 280px; height: 55px;">
                    <asp:Button ID="Btn_Clr" runat="server" CssClass="alert-danger" Text="Clear" Width="130px" Height="40px" OnClick="Btn_Clr_Click" />
                </td>
                <td style="height: 55px">
                    <asp:Button ID="Btn_Ex" runat="server" CssClass="alert-warning" Text="Exit" Width="130px" Height="40px" OnClick="Btn_Ex_Click" />
                </td>
            </tr>
            <tr>
                <td style="height: 20px; width: 270px">&nbsp;</td>
                <td style="height: 20px; width: 280px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Mails_FisheriesConnectionString %>" SelectCommand="SELECT [Letter Number] AS Letter_Number, [B_No], [Registration Number] AS Registration_Number, [Receiver], [Recive Date] AS Recive_Date, [Sender], [Send Date] AS Send_Date, [Description] FROM [Letter_Detail]"></asp:SqlDataSource>
                </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px; " class="text-center" colspan="3">&nbsp;</td>
            </tr>
        </table>

</asp:Content>
