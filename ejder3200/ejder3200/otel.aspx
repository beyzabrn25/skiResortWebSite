<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="otel.aspx.cs" Inherits="ejder3200.otel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--<div class="container" style="text-align: center; margin:auto;">--%>
    
        <h2 style="margin:20px;text-align: center;font-weight: bold; color:white">KONAKLAMA İÇİN OTEL LİSTESİ</h2>
        
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vt %>" SelectCommand="SELECT * FROM [otel]"></asp:SqlDataSource>
        
    
    <asp:ListView ID="LİstView1" runat="server"  DataSourceID="SqlDataSource1">
        <ItemTemplate>
       <div style="margin:80px; height:700px;  display: flex; justify-content: space-around; color:white"> 
           
           <div> 
            <asp:Image ID="Image1" ImageUrl='<%# Eval("img") %>' style="width:800px;height:600px" runat="server" />
            </div>
           
             <div style="margin-left:40px;"> 
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
            <asp:Label ID="adLabel" runat="server" Text='<%# Bind("ad") %>' Font-Bold="True" style="margin:20px;" CssClass="auto-style1" />
                 <br />
            <br />
                 <p> <a href='<%# "otelDetay.aspx?otel=" + Eval("id") %>'><h4>DETAY</h4> </a> </p>
            </div>
            </div>
    </ItemTemplate>

        </asp:ListView>
        <%--</div>--%>


</asp:Content>
