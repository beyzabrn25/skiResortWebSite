<%@ Page Title="" Language="C#" MasterPageFile="~/store.Master" AutoEventWireup="true" CodeBehind="hStore.aspx.cs" Inherits="ejder3200.hStore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="text-align: center; margin: auto;">

        <h2 style="margin: 20px; text-align: center; font-weight: bold;">EJDER STORE HEDİYELİK EŞYALAR</h2>

        <asp:Repeater ID="rptCards" runat="server" OnItemCommand="rptCards_ItemCommand">
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
                                    <h4><%# Eval("fiyat") %></h4>
                                    <h5>TL</h5>
                                    <button class="btn btn-primary">Sepete Ekle</button>
                                </div>
                            </div>
                            <div class="card-back">
                                <img class="d-block w-100" src='<%# Eval("r2") %>' alt="Before" />
                                <%--<h3>BEFORE</h3>--%>
                                <div class="additional-info">
                                    <p><a href='<%# "esyaDetay.aspx?urun=" + Eval("id") %>'>
                                        <h4><%# Eval("ad") %></h4>
                                    </a></p>
                                    <h4><%# Eval("fiyat") %></h4>
                                    <h5>TL</h5>
                                    <asp:Button ID="btnSepeteEkle" runat="server" Text="Sepete Ekle" CommandName="Ekle" CommandArgument='<%# Eval("id") %>' />

                                </div></div></div></div> </div>
                <%# (Container.ItemIndex % 3 == 2 || Container.ItemIndex == rptCards.Items.Count - 1 ? "</div>" : "") %>
            </ItemTemplate>
        </asp:Repeater>
    </div>


</asp:Content>
