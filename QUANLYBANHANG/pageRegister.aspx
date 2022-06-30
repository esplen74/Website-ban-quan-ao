<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageRegister.aspx.cs" Inherits="QUANLYBANHANG.pageRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login Web xem phim</title>
    <!-- Core CSS - Include with every page -->
    <link href="QUANTRI/assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="QUANTRI/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="QUANTRI/assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="QUANTRI/assets/css/style.css" rel="stylesheet" />
      <link href="QUANTRI/assets/css/main-style.css" rel="stylesheet" />
   
    <style type="text/css">
        .auto-style1 {
            height: 380px;
        }
    </style>
</head>
<body>
<body class="body-Login-back" >
    <table background="QUANTRI/IMAGES/cat_eyes_blue_143433_3844x2400.jpg" width="100%" height="570px">
        <tr>
            <td>
                <div class="container">

                    <div class="row">
                        <div class="col-md-6 col-md-offset-6 text-center logo-margin ">
                            <%--<img src="QUANTRI/IMAGES/LOGOTRANGDAI.png" alt="" width="220"/>--%>
                        </div>
                        <div class="col-md-4 col-md-offset-4">
                            <div class="login-panel panel panel-default">
                                <div class="panel-heading">
                                    <h4>Đăng ký</h4>
                                </div>
                                <div class="panel-body">
                                    <form id="form1" runat="server" class="auto-style1">
                                       
                                        <div>  
           <asp:TextBox ID="txtFullName" placeholder="Họ Tên" runat="server" Height="34px" Width="100%"></asp:TextBox>  
  
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không được để trống" ControlToValidate="txtFullName" ForeColor="Red"></asp:RequiredFieldValidator>  
  
           <br />  
           <asp:TextBox ID="txtEmail" placeholder="Nhập Email" runat="server" Height="34px" Width="100%"></asp:TextBox>  
  
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email không được để trống" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>  
                <br />  
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không đúng định dạng" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
  
           <br />  
          <asp:TextBox ID="txtUserName" placeholder="Tên Đăng Nhập" runat="server" Height="34px" Width="100%"></asp:TextBox>  
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Tên đăng nhập không được để trống" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>  
          
           <br />  
           <asp:TextBox ID="txtPassWord" placeholder="Mật Khẩu" runat="server" Height="34px" Width="100%"></asp:TextBox>  
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mật khẩu không được để trống" ControlToValidate="txtPassWord" ForeColor="Red"></asp:RequiredFieldValidator>  
           
            <asp:TextBox ID="txtConfirmPassword" placeholder="Nhập lại mật khẩu" runat="server" Height="34px" Width="100%"></asp:TextBox>  
           <br />  
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="không được để trống" ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />  
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Mật khẩu nhập lại không khớp !" ForeColor="Red"></asp:CompareValidator>  
           <br />  
         
           
             <div class="contact100-form-checkbox">
                                            <input class="input-checkbox100" id="ckb1" type="checkbox" name=" I Agree to terms of user ">
                                            <label class="label-checkbox100" for="ckb1">
                                                Tôi đồng ý với các <b>điều khoản người dùng</b>
                                            </label>
                                          </div>
            <asp:Button ID="btnRegister" type="submit"  class="btn btn-lg btn-danger btn-block" runat="server"  Text="Đăng Ký"  OnClick="btnRegister_Click" />
                                        <div class="text-center p-t-20">
       </div>  
                          </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                

                <script>

                </script>
                <script src="QUANTRI/assets/plugins/jquery-1.10.2.js"></script>
                <script src="QUANTRI/assets/plugins/bootstrap/bootstrap.min.js"></script>
                <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
            </td>
        </tr>
    </table>
</body>
</html>

<%-- <fieldset>
                                            <div class="form-group">
                                                <asp:TextBox ID="txtFullName" runat="server" placeholder="Họ & Tên" name="Full Name" Height="34px" Width="100%"></asp:TextBox>  
                                            </div> 
                                             <div class="form-group">
                                                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" name="Email" Height="34px" Width="100%"></asp:TextBox>
                                            </div>
                                            
                                         
                                           
                                             <div class="form-group">
                                                <asp:TextBox ID="txtUserName" runat="server" placeholder="Tên đăng nhập" name="username" Height="34px" Width="100%"></asp:TextBox>
                                            </div> 
                                            

                                             <div class="form-group">
                                                <asp:TextBox ID="txtPassWord" runat="server" placeholder="Mật khẩu" name="password" type="password"  Height="34px" Width="100%"></asp:TextBox>
                                            </div>
                                          

                                             <div class="form-group">
                                                <asp:TextBox ID="txtRepeatPassWord"  runat="server" placeholder="Nhập lại mật khẩu" name="pass"  type="password"  Height="34px" Width="100%"></asp:TextBox>
                                            </div>
                                           
                                                    <div class="contact100-form-checkbox">
                                            <input class="input-checkbox100" id="ckb1" type="checkbox" name=" I Agree to terms of user ">
                                            <label class="label-checkbox100" for="ckb1">
                                                Tôi đồng ý với các <b>điều khoản người dùng</b>
                                            </label>
                                          </div>
                                        </fieldset>
                                        
                                       --%>