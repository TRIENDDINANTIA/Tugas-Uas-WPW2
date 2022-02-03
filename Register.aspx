<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="img/logo/logo.png" rel="icon">
  <title>Rumah Sakit Sakinah - Daftar Akun</title>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/ruang-admin.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-login">
  <!-- Register Content -->
  <div class="container-login">
    <div class="row justify-content-center">
      <div class="col-xl-10 col-lg-12 col-md-9">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Daftar Akun</h1>
                  </div>
                  <form id="form1" runat="server">
                    <div class="form-group">
                      <label>Nama</label>
                        <asp:TextBox ID="nama" runat="server" class="form-control" placeholder="Nama"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label>Email</label>
                     <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label>Kata Sandi</label>
                      <asp:TextBox ID="katasandi" runat="server" class="form-control" placeholder="Kata Sandi"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <asp:Button ID="Button1" runat="server" Text="Tambah Akun" class="btn btn-primary btn-block"/>
                    </div>
                    <hr>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="font-weight-bold small" href="FormRegis.aspx">Sudah Punya Akun ?</a>
                  </div>
                  <div class="text-center">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Register Content -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="js/ruang-admin.min.js"></script>
</body>

</html>