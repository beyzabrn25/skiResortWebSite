<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="ejder3200.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        h3,p,h2{
            color:white
        }
        h3{
            text-align:center;
        }
        

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <h3>BIZEMLE İLETIŞIME GEÇIN</h3>
    <h3> Size Nasıl Yardımcı Olabiliriz?</h3><br /><br />
    <div style="display: flex; justify-content: space-around;"> 

        <div>
            <p>
                <strong>İletişim Bilgileri</strong> <br />
                info@ejder3200.com<br />
                Palandöken Kayak Merkezi - Ejder A.Ş. : +90 442 315 68 41<br />
                Snowdora Otel : +90 442 317 08 04<br />
                Satış Pazarlama ve Org. : +90 533 014 40 24<br />
                Konaklı Otel : +90 442 353 20 60<br />
                Gölet Otel ve Mesire Alanı : +90 532 651 25 84<br />
                Bilet Ofisi : +90 533 014 40 19<br />
                Konaklı Kayak Kiralama : +90 442 353 20 60<br />
                Fanus Kafe : +90 533 014 40 26<br />
                Küre Restorant : +90 533 014 40 18<br />
            </p>
        </div>
        <div>
            <p>
            Address<br />
            Yunus Emre Mahallesi Küme Evler Palandöken Kayak Merkezi
        </p>
        </div>

    </div>

    <div style="margin-left:600px;">
        <h2>BİZE YAZIN </h2><br />
        <asp:Label ID="Label1" runat="server" Text="Adınız" ForeColor="White"></asp:Label><br />
    <asp:TextBox ID="TextBox1" runat="server" Width="212px"></asp:TextBox><br />
         <asp:Label ID="Label2" runat="server" Text="Emailiniz" ForeColor="White"></asp:Label><br />
    <asp:TextBox ID="TextBox2" runat="server" Width="212px"></asp:TextBox><br />
         <asp:Label ID="Label3" runat="server" Text="Telefon Numaranız" ForeColor="White"></asp:Label><br />
    <asp:TextBox ID="TextBox3" runat="server" Width="212px"></asp:TextBox><br />
         <asp:Label ID="Label4" runat="server" Text="Mesajınız" ForeColor="White"></asp:Label><br />
    <asp:TextBox ID="TextBox4" runat="server" Height="77px" Width="212px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Mesajını Gönder" OnClick="Button1_Click" />
        <br /><br />



    </div>

</asp:Content>
