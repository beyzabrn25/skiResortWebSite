 <%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="ana.aspx.cs" Inherits="ejder3200.ana" %>
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
   
        <img  src="img/A1.jpeg" alt="" style="width:100%;height:500px; margin:10px" />
        <h2 style="color:white"><strong>PALANDÖKEN KAYAK MERKEZİ</strong></h2>
        <p style="color:white">
            Palandöken Kayak Merkezi pistleri, 2000 ile 3176 metre yükseklikler arasında konumlanıyor. 
            3 bin metrenin üzerindeki zirve aynı zamanda Ejder Tepesi olarak da anılırken; pistlerde “toz kar” mevcut. 
            Bu kar tipi, kaymak için oldukça elverişli sayılabilir. 10 telesiyej, 2 teleski ve 2 baby liftin bulunduğu Palandöken Kayak Merkezi’nde aynı zamanda bir de gondol lift var. 
            Gondol lift ile  Ejder Tepesi’ne ulaşım sağlanabilir. 
            Türkiye’nin en uzun pistine sahip Palandöken kayak merkezi 12 kilometrelik piste ev sahipliği yapıyor. 
            Palandöken’de yer alan toplam  pist sayısı ise 24 adedi buluyor. 
            Palandöken Kayak Merkezi pistleri zorluk seviyeleri ise şöyledir: 4 doğal pist, 8 başlangıç seviyesi pist, 9 orta düzey pist, 3 usta kayakçı pisti  
            Dünyaca ünlü pistlerdeki zorluk seviyeleri de, her seviyeden kayak sporcularına hitap edecek cinsten. 
            Çocuklar ve henüz acemi olanlar kolay seviyedeki pistlerden faydalanabilirken; 
            eğer kayak sporunda tecrübeliyseniz orta ve üzeri zorluktaki pistlerde kendinizi deneyebilirsiniz.
            Kayak sporuna dair birebir ya da grup eğitimleri de yine hem özel eğitim pistlerinde hem de kolay seviye pistlerde gerçekleştiriliyor. 
            Pistlerin çoğunda yapay kar sistemi de bulunduğundan kesintisiz kayak keyfi yapılabiliyor. 
            Yine Türkiye’deki diğer pistlerden farklı olarak; 5.6 km aydınlatılmış pist ile gece kayağı yapılabilir.
        </p>
</div>
    <div id="iconContainer" class="icon-container" runat="server"></div>
</asp:Content>


