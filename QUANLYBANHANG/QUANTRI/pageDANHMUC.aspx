<%@ Page Title="" Language="C#" MasterPageFile="~/QUANTRI/adminSite.Master" AutoEventWireup="true" CodeBehind="pageDANHMUC.aspx.cs" Inherits="QUANLYBANHANG.QUANTRI.pageDANHMUC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
        }
        .auto-style8 {
        }
        .auto-style9 {
            width: 102px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <tr>
    <td>
    <table style="width:100%;">
        <tr>
            <td colspan="2" style="text-align: center">QUẢN LÝ DANH MỤC</td>
        </tr>
        <tr>
            <td class="auto-style9">Mã danh mục cha</td>
            <td>
                <asp:DropDownList ID="drlDANHMUCCHA" runat="server" Height="16px" Width="131px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Tên danh mục</td>
            <td>
                <asp:TextBox ID="txtTENDM" runat="server" Width="121px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="2">
                <asp:Button ID="btn_Themmoi" runat="server" Text="Thêm mới" OnClick="btn_Themmoi_Click" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">
                <asp:GridView ID="grv_DANHMUC" runat="server" AutoGenerateColumns="False" Width="523px" OnRowEditing="grv_DANHMUC_RowEditing" OnRowUpdating="grv_DANHMUC_RowUpdating" OnRowCancelingEdit="grv_DANHMUC_RowCancelingEdit" OnRowDeleting="grv_DANHMUC_RowDeleting" AllowPaging="True" OnPageIndexChanging="grv_DANHMUC_PageIndexChanging" PageSize="5">
                    <Columns>
                        <asp:TemplateField HeaderText="Mã danh mục">
                            <ItemTemplate>
                                <asp:Label ID="lbeIDDANHMUC" runat="server" Text='<%# Eval("IDDANHMUC") %>'></asp:Label>
                            </ItemTemplate>
                            <InsertItemTemplate>
                                  <asp:Label ID="lbeIDDANHMUC" runat="server" Text=""></asp:Label>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tên Danh mục">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("TENDANHMUC") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtTENDANHMUC" runat="server" Text='<%# Eval("TENDANHMUC") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                 <asp:TextBox ID="txtTENDANHMUC" runat="server" Text=""></asp:TextBox>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Danh mục cha">
                            <ItemTemplate>
                                  <asp:Label ID="Label3" runat="server" Text='<%# Eval("ID_DANHMUC_CHA") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="drl_DANHMUC" runat="server"></asp:DropDownList>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="drl_DANHMUC" runat="server"></asp:DropDownList>
                            </InsertItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Button" HeaderText="Sửa" ShowEditButton="True"  />
                        <asp:TemplateField HeaderText="Xóa" ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Bạn có chắc muốn xóa Danh Mục này không??');"/>
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
