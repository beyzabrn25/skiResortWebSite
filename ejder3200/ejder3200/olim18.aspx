<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="olim18.aspx.cs" Inherits="ejder3200.olim18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
        /*galeri*/
.icon-container {
    display: flex;
    flex-wrap: wrap;
}

.icon-card {
    width: 420px;
    margin: 10px;
    padding: 5px;
    text-align: center;
}
.icon-card:hover {
    background-color:white;
    border-radius:40px;
}
    .icon-img {
    width: 370px;
    height: 340px;
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
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="text-align: center;">
 
        <img  src="img/SNOW1.jpeg" alt="" style="width:100%;height:500px; margin:10px" />
        <h2 style="color:white"><strong>2018 SNOWBOARD DÜNYA KUPASI</strong></h2>
        <p style="color:white">
            19-20-21 Ocak 2018 tarihinde Türkiye’de ilk kez Erzurum Palandöken Kayak Merkezinde FIS 
Snowboard SBX Dünya Kupası yarışları organizasyonu yapıldı.   Yarışmaya 21 ülkeden 66 erkek, 31 
kadın toplamda 97 sporcunun katılımıyla TRT Spor ve Eurosport kanallarında 80 ayrı ülkede canlı 
yayınla düzenlendi.

        </p>
</div>
    <div id="iconContainer" class="icon-container" runat="server"></div>

</asp:Content>
