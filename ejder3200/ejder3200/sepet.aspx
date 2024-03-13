<%@ Page Title="" Language="C#" MasterPageFile="~/store.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="ejder3200.sepet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display:flex; justify-content:center;align-items:center; width:100%;height:100%; margin:35px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
         <asp:BoundField DataField="id" HeaderText="ID" />
        <asp:BoundField DataField="ad" HeaderText="ÜRÜN ADI" />
        <asp:TemplateField HeaderText="ÜRÜN RESMİ">
            <ItemTemplate>
                <asp:Image ID="imgUrun" runat="server" ImageUrl='<%# Eval("r1") %>' Width="100" Height="100" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="fiyat" HeaderText="FİYAT" />
        <asp:BoundField DataField="adet" HeaderText="KAÇ ADET" />
        <asp:BoundField DataField="tfiyat" HeaderText="TOPLAM FİYAT" />
        <asp:CommandField ShowDeleteButton="True" />
       </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        <asp:Button ID="Button1" style="margin:25px;" runat="server" Text="Sipariş Sayfasına Git" ForeColor="#0066FF" OnClick="Button1_Click" />
        </div>
</asp:Content>
