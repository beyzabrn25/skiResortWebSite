<%@ Page Title="" Language="C#" MasterPageFile="~/store.Master" AutoEventWireup="true" CodeBehind="anaStore.aspx.cs" Inherits="ejder3200.anaStore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="container" style="text-align: center; margin:auto;">
     <br />
     <br />

    
      <h2>Hakkımızda</h2>
         <p style="padding:20px;">
            Ejder Store, kayak tutkunlarının ihtiyaçlarına cevap vermek amacıyla kurulan bir firma olarak 10 yıldan fazla bir süredir hizmet vermekteyiz. 
            Uzman kadromuz ve geniş ürün yelpazemizle, kayakseverlere en kaliteli ekipmanları ve hizmetleri sunmayı hedefliyoruz.
       </p>

<h3> <strong>ÜRÜNLERİMİZ </strong></h3> <br />

    <asp:Repeater ID="rptCards" runat="server">
    <ItemTemplate>
        <%# (Container.ItemIndex % 3 == 0 ? "<div class='row'>" : "") %>
        <div class="col-md-4">
            <div class="card">
                <div class="card-inner">
                    <div class="card-front">
                        
                        <img class="d-block w-100" src='<%# Eval("r1") %>' alt="After" />
                        <%--<h3>AFTER</h3>--%>
                        <div class="additional-info">
                           <h4><%# Eval("ad") %></h4>
                            <h4><%# Eval("fiyat") %></h4><h5>TL</h5>
                            <%--<button class="btn btn-primary">Sepete Ekle</button>--%>
                        </div>
                    </div>
                    <div class="card-back">
                        <img class="d-block w-100" src='<%# Eval("r2") %>' alt="Before" />
                        <%--<h3>BEFORE</h3>--%>
                        <div class="additional-info">
                             <h4><%# Eval("ad") %></h4>
                            <h4><%# Eval("fiyat") %></h4><h5>TL</h5>
                            <%--<button class="btn btn-primary">Sepete Ekle</button>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%# (Container.ItemIndex % 3 == 2 || Container.ItemIndex == rptCards.Items.Count - 1 ? "</div>" : "") %>
    </ItemTemplate>
</asp:Repeater>
<h3> <strong>KATEGORİLERDEN ALIŞVERİŞ YAPABİLİRSİNİZ </strong></h3> <br />
</div>



</asp:Content>
