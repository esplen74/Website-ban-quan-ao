<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagelogin.aspx.cs" Inherits="QUANLYBANHANG.QUANTRI.pagelogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>ADmin LuXuBu Shop</title>
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
      <link href="assets/css/main-style.css" rel="stylesheet" />
   
    <style type="text/css">
        .auto-style1 {
            height: 195px;
        }
    </style>
   
    </head>
<body class="body-Login-back" >
    <table background="./IMAGES/cat_eyes_blue_143433_3844x2400.jpg" width="100%" height="550px">
        <tr>
            <td>
                <div class="container">

                    <div class="row">
                        <div class="col-md-4 col-md-offset-4 text-center logo-margin ">
                            <img src="IMAGES/LOGOTRANGDAI.png" alt="" width="220"/>
                        </div>
                        <div class="col-md-4 col-md-offset-4">
                            <div class="login-panel panel panel-default">
                                <div class="panel-heading">
                                    <h4>Vui lòng đăng nhập!!</h4>
                                </div>
                                <div class="panel-body">
                                    <form id="form1" runat="server" class="auto-style1">
                                        <fieldset>
                                            <div class="form-group">
                                                <asp:TextBox ID="txtUser" runat="server" placeholder="E-mail" name="email" Height="34px" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <asp:TextBox ID="txtPass" runat="server"  placeholder="Password" name="password" type="password" Height="34px" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input name="remember" type="checkbox" value="Remember Me" />Tự động đăng nhập
                                                </label>
                                            </div>
                                        </fieldset>

                                        <asp:Button ID="btnLogin" class="btn btn-lg btn-danger btn-block" runat="server" Height="48px" Text="Đăng Nhập" Width="326px" OnClick="btnLogin_Click" />
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Core Scripts - Include with every page -->
                <script src="assets/plugins/jquery-1.10.2.js"></script>
                <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
                <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
            </td>
        </tr>
    </table>
</body>
</html>
