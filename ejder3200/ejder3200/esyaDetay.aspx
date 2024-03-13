<%@ Page Title="" Language="C#" MasterPageFile="~/store.Master" AutoEventWireup="true" CodeBehind="esyaDetay.aspx.cs" Inherits="ejder3200.esyaDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style1 {
            font-size: x-large;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vt %>" SelectCommand="SELECT * FROM [ürün] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="urun" Type="Int16" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            kid:
            <asp:TextBox ID="kidTextBox" runat="server" Text='<%# Bind("kid") %>' />
            <br />
            ad:
            <asp:TextBox ID="adTextBox" runat="server" Text='<%# Bind("ad") %>' />
            <br />
            r1:
            <asp:TextBox ID="r1TextBox" runat="server" Text='<%# Bind("r1") %>' />
            <br />
            r2:
            <asp:TextBox ID="r2TextBox" runat="server" Text='<%# Bind("r2") %>' />
            <br />
            fiyat:
            <asp:TextBox ID="fiyatTextBox" runat="server" Text='<%# Bind("fiyat") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelleştir" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal" />
        </EditItemTemplate>
        <InsertItemTemplate>
            kid:
            <asp:TextBox ID="kidTextBox" runat="server" Text='<%# Bind("kid") %>' />
            <br />
            ad:
            <asp:TextBox ID="adTextBox" runat="server" Text='<%# Bind("ad") %>' />
            <br />
            r1:
            <asp:TextBox ID="r1TextBox" runat="server" Text='<%# Bind("r1") %>' />
            <br />
            r2:
            <asp:TextBox ID="r2TextBox" runat="server" Text='<%# Bind("r2") %>' />
            <br />
            fiyat:
            <asp:TextBox ID="fiyatTextBox" runat="server" Text='<%# Bind("fiyat") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Ekle" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal" />
        </InsertItemTemplate>
       
        <ItemTemplate>
            <div style="margin:100px; height:700px;  display: flex; justify-content: space-around;"> 
           <div> 
            <asp:Image ID="Image1" ImageUrl='<%# Eval("r1") %>' style="width:400px;height:600px" runat="server" />
            </div>
             <div style="margin-left:80px;"> <br /> <br /> <br /><br /><br />
            <asp:Label ID="adLabel" runat="server" Text='<%# Bind("ad") %>' Font-Bold="True" style="margin:20px;" CssClass="auto-style1" />
                 <br /> <br />
           <p style="margin:20px; " ><strong>Fiyatı: </strong> </p><br />
            <asp:Label ID="fiyatLabel" runat="server" style="margin:15px; " Text='<%# Bind("fiyat") %>' />TL
                 <br /> <br />
               <p style="margin:20px;">  <strong> Ürün Açıklaması:</strong> <br /></p>
             <p style="margin-bottom:10px; margin-left:20px; "><%# Eval("aciklama") %> </p>
             <asp:Button ID="Button1"  runat="server" Text="Sepete Ekle" style=" margin:20px; background-color: #5080A8;" ForeColor="White" />
            </div></div>
        </ItemTemplate>

    </asp:FormView>
</asp:Content>
