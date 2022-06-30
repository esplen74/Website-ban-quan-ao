<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageLogin.aspx.cs" Inherits="QUANLYBANHANG.pageLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login Web xem phim</title>
   
    <link href="QUANTRI/assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="QUANTRI/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="QUANTRI/assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="QUANTRI/assets/css/style.css" rel="stylesheet" />
      <link href="QUANTRI/assets/css/main-style.css" rel="stylesheet" />
   
    <style type="text/css">
        .auto-style1 {
            height: 195px;
        }
    </style>
</head>
<body>
<body class="body-Login-back" >
    <table background="QUANTRI/IMAGES/cat_eyes_blue_143433_3844x2400.jpg" width="100%" height="550px">
        <tr>
            <td>
                <div class="container">

                    <div class="row">
                        <div class="col-md-4 col-md-offset-4 text-center logo-margin ">
                            <%--<img src="QUANTRI/IMAGES/LOGOTRANGDAI.png" alt="" width="220"/>--%>
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
                                                <asp:TextBox ID="txtUser" runat="server" placeholder="Tên đăng nhập" name="email" Height="34px" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <asp:TextBox ID="txtPass" runat="server"  placeholder="Mật khẩu" name="password" type="password" Height="34px" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input name="remember" type="checkbox" value="Remember Me" />Tự động đăng nhập
                                                </label>
                                            </div>
                                        </fieldset>

                                        <asp:Button ID="btnLogin" class="btn btn-lg btn-danger btn-block" runat="server" Height="48px" Text="Đăng Nhập" Width="326px" OnClick="btnLogin_Click" />
                                        <div class="text-center p-t-20">
                            <a class="txt1" href="resetpassword.html">
                                Quên mật khẩu?
                            </a>
                            <a class="txt1" href="pageRegister.aspx">
                                &nbsp;&nbsp;&nbsp;Đăng kí?
                            </a>
                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Core Scripts - Include with every page -->
                <script src="QUANTRI/assets/plugins/jquery-1.10.2.js"></script>
                <script src="QUANTRI/assets/plugins/bootstrap/bootstrap.min.js"></script>
                <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
            </td>
        </tr>
    </table>
</body>
</html>
