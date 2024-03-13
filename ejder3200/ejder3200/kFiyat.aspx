<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="kFiyat.aspx.cs" Inherits="ejder3200.kFiyat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h2 {
            color: white;
        }

        .auto-style1 {
            font-size: large;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
        <br />
        <br />
        <h2>KAYAK KİRALAMA ÜCRETLERİMİZ</h2>
        <br />
        <h2>OUR SKI RENTAL PRICE LIST</h2>
        <br />
        <h2>НАШИ СТОИМОСТИ ПРОКАТА ЛЫЖ</h2>
        <br />
        <br />

        <asp:GridView ID="GridView1" Style="margin-left: 320px; margin-bottom: 40px;" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style1">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="ad" HeaderText="ÜRÜN" SortExpression="ad">
                    <FooterStyle BackColor="#003366" />
                    <HeaderStyle BackColor="#003366" />
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="PRODUCT" SortExpression="name">
                    <FooterStyle BackColor="#003366" />
                    <HeaderStyle BackColor="#003366" />
                </asp:BoundField>
                <asp:BoundField DataField="rus" HeaderText="цена" SortExpression="rus">
                    <HeaderStyle BackColor="#003366" />
                </asp:BoundField>
                <asp:BoundField DataField="fiyat" HeaderText="FİYAT / PRİCE" SortExpression="fiyat">
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vt %>" SelectCommand="SELECT [ad], [name], [rus], [fiyat] FROM [kÜcret]"></asp:SqlDataSource>
    </div>
</asp:Content>
