<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="olim17.aspx.cs" Inherits="ejder3200.olim17" %>
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
   
        <img  src="img/EYOF1.jpeg" alt="" style="width:100%;height:500px; margin:10px" />
        <h2 style="color:white"><strong>2017 EYOF AVRUPA GENÇLİK KIŞ OLİMPİK FESTİVALİ</strong></h2>
        <p style="color:white">
            Yaz ve Kış Avrupa Gençlik Olimpik Festivali, 14-18 yaşları arasıdaki genç sporcular için en üst düzey
 olan etkinliği temsil etmektedir. Bu etkinlikler her iki senede bir, Association of European Olympic 
Committees (EOC) girişimleriyle oluşturulmaktadır. Avrupa, gençler için böyle önemli bir etkinlik 
kurarak, diğer kıtalardaki gelenekleri sürdürmeye devam etmiştir. (Asya ve Panama oyunları gibi) Yaz
 ve kış oyunlarının ikisi de böyle prestijli bir etkinlik olmanın gururunu taşımaktadır. Bunun sebebi ise 
her ikisinde de açılış ve kapanış seramonilerinin olması, tüm festival sürecinde olimpiyat meşalesinin 
yanması, sporcu ve hakemlerin ant içmeleri, kazanan en iyi sporcuların ulusal marşlarının çalınası ve 
madalya kazanan ülke bayraklarının göndere çekilmesi gibi önemli etmenlerdir. Yaz oyunları için 
yaklaşık 2500, kış oyunları içinse 1300 civarı sporcu katılırken, önemli temsilci ve politikacılar da bu 
organizasyonların düzenli konukları haline gelmektedir.  

        </p>
</div>
    <div id="iconContainer" class="icon-container" runat="server"></div>

</asp:Content>
