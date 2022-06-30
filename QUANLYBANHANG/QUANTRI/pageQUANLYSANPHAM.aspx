<%@ Page Title="" Language="C#" MasterPageFile="~/QUANTRI/adminSite.Master" AutoEventWireup="true" CodeBehind="pageQUANLYSANPHAM.aspx.cs" Inherits="QUANLYBANHANG.QUANTRI.pageQUANLYSANPHAM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 112px;
            height: 41px;
        }
        .auto-style9 {
            width: 112px;
            height: 33px;
        }
        .auto-style11 {
            height: 51px;
            text-align: center;
        }
        .auto-style12 {
            width: 112px;
            height: 47px;
        }
        .auto-style14 {
            width: 112px;
            height: 36px;
        }
        .auto-style16 {
            width: 112px;
            height: 34px;
        }
        .auto-style18 {
            width: 112px;
            height: 38px;
        }
        .auto-style20 {
            height: 47px;
            width: 811px;
        }
        .auto-style21 {
            height: 41px;
            width: 497px;
        }
        .auto-style22 {
            height: 33px;
            width: 497px;
        }
        .auto-style23 {
            height: 47px;
            width: 497px;
        }
        .auto-style24 {
            height: 36px;
            width: 497px;
        }
        .auto-style25 {
            height: 34px;
            width: 497px;
        }
        .auto-style26 {
            height: 38px;
            width: 497px;
        }
        .auto-style27 {
            width:540px;
            /*width: 36%*/
        }
        .auto-style28 {
            margin-right: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <tr>
    <td>
     <table class="auto-style27" >
        <tr>
            <td class="auto-style4" colspan="2" style="text-align: center">QUẢN LÝ SẢN PHẨM </td>
        </tr>
        <tr>
            <td class="auto-style7">Mã sản phẩm</td>
            <td class="auto-style21">
                <asp:TextBox ID="txtMASP" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Tên sản phẩm</td>
            <td class="auto-style22">
                <asp:TextBox ID="txtTENSP" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Đơn giá</td>
            <td class="auto-style23">
                <asp:TextBox ID="txtDONGIA" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Số lượng</td>
            <td class="auto-style24">
                <asp:TextBox ID="txtSOLUONG" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Danh mục</td>
            <td class="auto-style25">
                <asp:DropDownList ID="drlDANHMUCCHA" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drlDANHMUCCHA_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Hình ảnh</td>
            <td class="auto-style26">
                <asp:FileUpload ID="fulANHSANPHAM" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style20" colspan="2">MÔ TẢ</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtMOTA" runat="server" Height="93px" TextMode="MultiLine" Width="473px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2">
                <asp:Button ID="btnTHEMMOI" runat="server" Text="Thêm mới" OnClick="btnTHEMMOI_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="grdSANPHAM" runat="server" Width="530px" AutoGenerateColumns="False" CssClass="auto-style28" OnRowDeleting="grdSANPHAM_RowDeleting">
                    <Columns>
                         <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <asp:Label ID="lbeSANPHAM" runat="server" Text='<%# Eval("IDSANPHAM") %>'></asp:Label>
                            </ItemTemplate>
                            <InsertItemTemplate>
                                  <asp:Label ID="lbeSANPHAM" runat="server" Text=""></asp:Label>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tên sản phẩm">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("TENSANPHAM") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbeTENSANPHAM" runat="server" Text='<%# Eval("TENSANPHAM") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Số lượng">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("SOLUONG") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("SOLUONG") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Đơn giá">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DONGIA") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("DONGIA") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ẢNH">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("HINHANH") %>' Tooltip='<%# Eval("HINHANH") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Width="200px" AlternateText='<%# Eval("HINHANH") %>' ImageUrl='<%# Eval("HINHANH", "~/IMAGES/{0}") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Xóa" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Bạn có chắc muốn xóa sản phẩm này không??');" /> 
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
    </td>
</tr>
</asp:Content>
