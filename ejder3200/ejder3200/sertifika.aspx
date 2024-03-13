<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="sertifika.aspx.cs" Inherits="ejder3200.sertifika" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        
        /*galeri*/
.icon-container {
    display: flex;
    flex-wrap: wrap;
}

.icon-card {
    width: 620px;
    height:720px;
    margin: 10px;
    padding: 5px;
    text-align: center;
}
.icon-card:hover {
    background-color:white;
    border-radius:40px;
}
    .icon-img {
    width: 520px;
    height: 700px;
    margin-bottom: 10px;
}

.icon-name {
    font-weight: bold;
}

.icon-description {
    margin-top: 5px;
}

.row {
    clear: both;
}

/*vt galeri*/
   h2{
       color:white;
        font-weight: bold;
        margin:20px;
        text-align:center;
   } 
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <h2> PALANDÖKEN KAYAK MERKEZİNE AİT SERTİFİKALARIMIZ</h2>
    
    <div id="iconContainer" class="icon-container" runat="server"></div>

</asp:Content>
