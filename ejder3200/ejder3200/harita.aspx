<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="harita.aspx.cs" Inherits="ejder3200.harita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
         h2{
       color:white;
        font-weight: bold;
        margin:20px;
        text-align:center;
   } 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2> PALANDÖKEN KAYAK HARİTASI</h2>
     <img  src="img/ejder3200_harita.png" alt="" style="width:100%;height:650px; margin:5px" />
</asp:Content>
