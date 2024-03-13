<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="otelDetay.aspx.cs" Inherits="ejder3200.otelDetay" %>

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
                background-color: white;
                border-radius: 40px;
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vt %>" SelectCommand="SELECT * FROM [otel] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="otel" Type="Int16" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div style="margin: 100px; height: 700px; display: flex; justify-content: space-around; color: white">
                <div>
                    <asp:Image ID="Image1" ImageUrl='<%# Eval("img") %>' Style="width: 400px; height: 300px" runat="server" />
                </div>
                <div style="margin-left: 80px;"><br /><br />
                    <asp:Label ID="adLabel" runat="server" Text='<%# Bind("ad") %>' Font-Bold="True" Style="margin: 20px;" CssClass="auto-style1" />
                    <br />
                    <br />
                    <p style="margin: 20px;"><strong>Oda Sayısı </strong></p>
                    <br />
                    <asp:Label ID="Label3" runat="server" Style="margin: 15px;" Text='<%# Bind("oda") %>' /><br />
                    <p style="margin: 20px;"><strong>Havuz Var Mı? </strong></p>
                    <br />
                    <asp:Label ID="fiyatLabel" runat="server" Style="margin: 15px;" Text='<%# Bind("havuzlumu") %>' />
                    <br />
                    <p style="margin: 20px;"><strong>Kayak Odası Var Mı ? </strong></p>
                    <br />
                    <asp:Label ID="Label1" runat="server" Style="margin: 15px;" Text='<%# Bind("kayaklimi") %>' />
                    <br />
                    <p style="margin: 20px;"><strong>Wifi Var Mı ?</strong> </p>
                    <br />
                    <asp:Label ID="Label2" runat="server" Style="margin: 15px;" Text='<%# Bind("wifilimi") %>' /> <br />
                </div>
            </div>
        </ItemTemplate>
    </asp:FormView>
    <br />
    <br />

    <div id="iconContainer" class="icon-container" runat="server"></div>

</asp:Content>
