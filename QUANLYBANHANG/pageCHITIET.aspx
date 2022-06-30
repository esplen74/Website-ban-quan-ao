<%@ Page Title="" Language="C#" MasterPageFile="~/USERMASTERPAGE.Master" AutoEventWireup="true" CodeBehind="pageCHITIET.aspx.cs" Inherits="QUANLYBANHANG.pageCHITIET" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 255px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <asp:Repeater ID="Repeater2" runat="server">
         <ItemTemplate>
            <table style="width: 100%;">
        <tr>
            <td class="auto-style7" rowspan="3">
                 <img  src='<%# "IMAGES/"+Eval("HINHANH")%>' width="300px" style="vertical-align: text-top;" />
            </td>
            <td><B>Tên sản phẩm:</B> <%# Eval("TENSANPHAM")%></td>
        </tr>
        <tr>
            <td><B> Đơn giá:</B> <%# Eval("DONGIA")%></td>
        </tr>
        <tr>
            <td><B>MÔ TẢ:</B>  <%# Eval("MOTA")%></td>
        </tr>
    </table> 
        </ItemTemplate>       
    </asp:Repeater>
    <div class="container mt-3">
    <h1 >Số lượng: <asp:DropDownList ID="drlSOLUONG" runat="server"></asp:DropDownList>
    <asp:Button ID="btnGioHang" runat="server" Text="Thêm vào giỏ hàng" OnClick="btnGioHang_Click" />
    </h1> 
      <br />
        <h1> Đánh giá()</h1>
        <br />
        <h1> Bình Luận() </h1>
        </div>
</asp:Content>
