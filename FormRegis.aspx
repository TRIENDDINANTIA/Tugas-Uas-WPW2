<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FormRegis.aspx.vb" Inherits="FormRegis" %>

<html lang="en"><head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="img/logo/logo.png" rel="icon">
  <title>RuangAdmin - Login</title>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/ruang-admin.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-login">
  <!-- Login Content -->
  <div class="container-login">
    <div class="row justify-content-center">
      <div class="col-xl-6 col-lg-12 col-md-9">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Masuk</h1>
                  </div>
                  <form ID="form1" runat="server">
                    <div class="form-group">
                      <asp:TextBox ID="nama" runat="server" class="form-control"  aria-describedby="emailHelp" placeholder="Nama Pengguna"></asp:TextBox> 
                    </div>
                    <div class="form-group">
                      <asp:TextBox ID="katasandi" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox> 
                    </div>
                     <div class="form-group">
                         <asp:Label ID="Label1" runat="server" Text="Tipe Pengguna"></asp:Label>
                          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="186px">
                            <asp:ListItem>admin</asp:ListItem>
                            <asp:ListItem>pasien</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                      <asp:Button ID="Button1" runat="server" Text="Masuk" class="btn btn-primary btn-block"/>
                    </div>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="font-weight-bold small" href="Register.aspx">Tambah Akun!</a>
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
  <!-- Login Content -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="js/ruang-admin.min.js"></script>


</body></html>