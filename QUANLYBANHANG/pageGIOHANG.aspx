<%@ Page Title="" Language="C#" MasterPageFile="~/USERMASTERPAGE.Master" AutoEventWireup="true" CodeBehind="pageGIOHANG.aspx.cs" Inherits="QUANLYBANHANG.pageGIOHANG" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            left: -2px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grvCARTS" runat="server" Width="893px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" ShowFooter="True" Height="16px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Mã sản phẩm" />
            <asp:BoundField DataField="Name" HeaderText="Tên sản phẩm" />
            <asp:TemplateField HeaderText="Số lượng">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Price" HeaderText="Đơn giá" />
            <asp:BoundField DataField="TotalPrice" HeaderText="Thành tiền" />
            <asp:TemplateField HeaderText="Ảnh sản phẩm" >
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Image") %>' Tooltip='<%# Eval("Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Width="150px" AlternateText='<%# Eval("Image") %>' ImageUrl='<%# Eval("Image", "~/IMAGES/{0}") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sửa giỏ hàng">
                <HeaderTemplate>
                    <asp:Button ID="btn_Trahang" OnClick="btn_Trahang_Click1" runat="server" Text="Xóa khỏi giỏ hàng"/> 
                    <asp:CheckBox ID="CkbHeader" runat="server" AutoPostBack="true" OnCheckedChanged="CkbHeader_CheckedChanged"/>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="ckbItem" runat="server"  />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#C02424" />
        <FooterStyle BackColor="#C0131B" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#C0131B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#C23636" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#FBEEEE" />
        <SelectedRowStyle BackColor="#F3D3D3" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#FBF6F6" />
        <SortedAscendingHeaderStyle BackColor="#E16C6C" />
        <SortedDescendingCellStyle BackColor="#F0E9E9" />
        <SortedDescendingHeaderStyle BackColor="#C04949" />
    </asp:GridView>
    <span style="font-family:'Poppins',sans-serif;">
   <%-- <asp:Button ID="Button1" runat="server" CssClass="btn btn-lg btn-danger btn-block" Text="Thanh Toán" Width="893px" />--%>
          <div class="auto-style1"> <a href="checkout.html" class="ml-auto btn hvr-hover" style=" width: 893px;">Thanh Toán</a> </div>
</span>
</asp:Content>
