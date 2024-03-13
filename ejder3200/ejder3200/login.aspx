<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ejder3200.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Palandöken Kayak Merkezi- ERZURUM</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" />
    <link href="Content/css/styles.css" rel="stylesheet" />
    <%--bu hocada uzun bi css--%>
    <link rel="icon" type="image/x-icon" href="Content/assets/img/favicon.png" />
    <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
</head>
<body class="bg-gray-300" style="background-image: url('img/lenze-bg.jpeg')">
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header justify-content-center" style="background-color: white; text-align: center">
                                    <h3 class="font-weight-light my-1">
                                        <img width="50%" src="img/logo.png" /></h3></div>
                                <div class="card-body">
                                    <form id="form2" runat="server">
                                        <div class="form-group ">
                                            <label class="small mb-1" for="KullaniciAdı">Email</label>
                                            <asp:TextBox class="form-control" placeholder="Emailinizi Giriniz" ID="tbAd" Text="" runat="server"></asp:TextBox> </div>
                                        <div class="form-group ">
                                            <label class="small mb-1" for="Sifre">Sifre</label>
                                            <asp:TextBox class="form-control" ID="tbSifre" type="password" placeholder="Şifrenizi Giriniz" Text="" runat="server"></asp:TextBox>
                                            <asp:HyperLink class="small mt-2 mb-1" for="Sifre" ID="HyperLink3" runat="server" NavigateUrl="sifre.aspx">Şifremi Unuttum</asp:HyperLink> </div>
                                        <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                            <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Giriş" OnClick="Button1_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label1" runat="server" ForeColor="#990000"></asp:Label></div>
                                        <div class="form-group mt-3">
                                             <label class="small mb-1">Hesabınız yok mu?</label>
                                            <asp:HyperLink class="small ml-2 mb-1" for="Sifre" ID="HyperLink1" runat="server" NavigateUrl="kayit.aspx">KAYIT OLUN</asp:HyperLink> </div>
                                    </form> </div>
                                <div class="card-footer text-center"></div></div></div></div></div></main></div>
        <div id="layoutAuthentication_footer">
            <footer class="footer mt-auto offset-sm-5 footer-dark">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 small">Copyright &copy; Ejder3200 Sistemi Projesi 2023</div> </div> </div>
            </footer> </div> </div>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="Content/js/scripts.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
