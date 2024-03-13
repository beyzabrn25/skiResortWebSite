<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="sFiyat.aspx.cs" Inherits="ejder3200.sFiyat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
    h2{
        color:white;
    }
        .auto-style1 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">
    <br /><br />
    <h2>SKİPASS ÜCRETLERİMİZ</h2><br />
    <h2>OUR SKIPASS PRICE LIST</h2><br />
    <h2>НАШ ПРЕЙСКУРАНТ НА ​​СКИПАСС</h2><br /><br />
    <asp:GridView ID="GridView1" runat="server" style="margin-left:350px;margin-bottom:50px;"  AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" CssClass="auto-style1" Height="562px" Width="620px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="ad" HeaderText="ÜRÜN" SortExpression="ad" >
            <HeaderStyle BackColor="#003366" />
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="PRODUCT" SortExpression="name" >
            <HeaderStyle BackColor="#003366" />
            </asp:BoundField>
            <asp:BoundField DataField="fiyat" HeaderText="PRİCE" SortExpression="fiyat" >
            <HeaderStyle BackColor="#003366" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vt %>" SelectCommand="SELECT [ad], [name], [fiyat] FROM [sÜcret]"></asp:SqlDataSource>
</div>
</asp:Content>
