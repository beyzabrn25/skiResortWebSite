<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="buz.aspx.cs" Inherits="ejder3200.buz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding:20px; color:white; text-align:center">
         <img  src="img/buz_max.jpg" alt="" style="width:100%;height:500px; margin:10px" />
        <br />
        <p>
            <strong>BUZ TIRMANIŞ PARKURU</strong><br />
<br />Türkiye’nin ulaşımı en kolay, 20 metre yüksekliğinde 150 metre enindeki ilk yapay buz tırmanış duvarı Ice Park , Türk Dağcı Tunç Fındık tarafından rota açılışı yapıldığı günden beri çeşitli organizasyonlara ve bu alandaki sporseverlere ev sahipliği yapmaya devam ediyor. Türkiyede pistte bulunan ilk yapay buz duvarı olma özelliği sizlere hem kayak yapma imkanı hem de kayak yaparken buz duvarına tırmanma imkanı vermektedir.
<br />Buz tırmanışı dışarı çıkmanın ve doğanın tadını çıkarmanın başka bir harika yoludur. Eğlencelidir harika bir egzersizdir. Ve sizi konfor alanınızdan çıkarır.
<br />Daha önce hiç buz tırmanışını denemediyseniz bu sezon tüm kayak severlere ve doğa severlere buz duvarı kapıları açılıyor.
<br />Tüm tırmanış ekipmanlarınızı kiralayabilir uzman ekipler tarafından güvenli bir tırmanış yapabilirsiniz.
<br />Öyleyse ne bekliyorsunuz? Farklı bir şey deneyin ve Ice Park’a gelin.
<br /><br />Ne Yapmalıyım
<br />Bireysel ve Gurup Katılımcılar
<br />Uzman ekibimiz tarafından tüm malzeme ve ekipman temin edilir.
<br />Bilet Ofisinden 'Risklerin Kabulü ve Muhafiyet Belgesi' doldurulur
<br />Uzman emniyetçi tarafından bir tırmanış yapılır.
<br />Sporcu ve Kulüpler
<br />Tüm Kulüp ve Sporcular için ücretsizdir.
<br />Tırmaış için gerekli malzemeler ejder3200 tarafından kiralanabilir.
<br />Tırmanış her sporcu ve kulüp için en fazla 3 saattir.
<br />Bilet Ofisinden veya ejder3200 web sitesinden izin belgesi, kulüp dilekçesi(Kulüpler için), Risklerin Kabulü ve Muafiyet belgesi doldurulur.
<br />Tırmanış için türkiye dağcılık federasyonu il temsilcisi onayından geçtikten sonra tırmanış gerçekleşrilebilir.
<br />Tırmanış için türkiye dağcılık federasyonu il temsilcisi onayından geçmeyenler için Uzman Emniyetçi temin edilerek ücreti karşılığında tırmanış gerçekleştirilebilir.
<br />Ön rezervasyon için sitemizde bulunan İzin Yazısı indirilip doldurulduktan sonra info@ejder3200.com adresine göndererek rezervasyon yaptırabilirsiniz.
<br />Tırmanış için türkiye dağcılık federasyonu il temsilcisi onayından geçmeyenler için Uzman Emniyetçi temin edilerek ücreti karşılığında tırmanış gerçekleştirilebilir.
<br />Tırmanış günü Bilet Ofisinden 'Risklerin Kabulü ve Muhafiyet Belgesi' doldurarak tırmanış gerçekleştirilebilir.
        </p>


        <div class="container" style="padding:20px; color:white; text-align:center">
        <div class="col-12 bg-black ">
            <h3 class="text-white">Gerekli Dökümanlar</h3>
        </div>
        <table class="table">
            <thead>
                <tr>
                    <th class="text-white" scope="col">#</th>
                    <th class="text-white" scope="col">Dosya Adı</th>
                    <th class="text-white" scope="col">Dosya</th>
                </tr></thead><tbody>
                <tr>
                    <th class="text-white"scope="row">1</th>
                    <td class="text-white" >İzin Yazısı</td>
                    <td>
                        <a target="_blank" href="doc/izin_yazisi.pdf">
                            <img src="img/pdf.png">
                        </a></td></tr><tr>
                    <th class="text-white" scope="row">2</th>
                    <td class="text-white">Kulüp Dilekçesi</td>
                    <td>
                        <a target="_blank" href="doc/kulup_dilekce.pdf">
                            <img src="img/pdf.png">
                        </a></td></tr><tr>
                    <th class="text-white" scope="row">3</th>
                    <td class="text-white">Risklerin Kabulü ve Muhafiyet Belgesi</td>
                    <td>
                        <a target="_blank" href="doc/GizlilikBeyanive.pdf">
                            <img src="img/pdf.png">
                        </a></td></tr></tbody></table></div>

        <div style="margin-left:350px;">
        <asp:gridview runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" Width="693px">
            <Columns>
                <asp:BoundField DataField="ad" HeaderText="ÜRÜN" SortExpression="ad" />
                <asp:BoundField DataField="fiyat" HeaderText="FİYAT" SortExpression="fiyat" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:gridview>



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vt %>" SelectCommand="SELECT [ad], [fiyat] FROM [bÜcret]"></asp:SqlDataSource>

        </div>

    </div>


</asp:Content>
