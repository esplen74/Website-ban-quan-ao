<%@ Page Title=""  Language="C#" MasterPageFile="~/USERMASTERPAGE.Master" AutoEventWireup="true" CodeBehind="pageDANHSACHSANPHAM.aspx.cs" Inherits="QUANLYBANHANG.pageDANHSACHSANPHAM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
                <div class="col-sm-12"> 
                   <%-- <div class="product-image-wrapper">    --%> 
                    <div class="products-single">   
                        <div class="box-img-hover">
                            <div class="type-lb">
                                <p class="sale">Sale</p>
                            </div>
                            <img src='<%# "IMAGES/"+Eval("HINHANH")%>' width="270px" alt="" />                     
                            <div class="mask-icon">
                                <ul>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Xem Sản Phẩm "><i class="fas fa-eye"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Đánh giá"><i class="fas fa-sync-alt"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Thích"><i class="far fa-heart"></i></a></li>
                                </ul>
                                <%--<a class="cart" href="#">Thêm vào giỏ hàng</a>--%>
                                <a class="cart" href="pageCHITIET.aspx?IDSANPHAM=<%# Eval("IDSANPHAM") %>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng </a>
                            </div>
                        </div>
                        <div class="choose text-center">
                            <h1><b><%# Eval("TENSANPHAM") %> </b></h1>
                            <h2><%# Eval("DONGIA") %></h2>
                        </div>
                    </div>
                </div>
        </ItemTemplate>
    </asp:DataList>
 <%-- </asp:Content>--%>

 <div id="windownpopup_wrapper" class="modal" style="overflow: auto;z-index: 100001;
                transition: all 0.3s ease 0s;position: fixed;width: 100%;height: 100%;top: 0px;left: 0px;display: block;
                text-align: center;visibility: visible;opacity: 1;">

            <div class="modal-box" id="services__modal" style="display: inline-block; outline: none; transition: all 0.3s ease 0s; text-align: left;
                position: relative; visibility: visible; opacity: 1; vertical-align: middle;" data-popup-initialized="true" 
                class="popup_content" aria-hidden="false" role="dialog" tabindex="-1" >


                    <img alt="" style="width: 900px; height:550px" title="haravanPopup" src="IMAGES/sale.jpg" />
               
				<span class="close"></span>

                </div>
            <div class="popup_align" style="display: inline-block;vertical-align: middle;height: 100%;"></div>
            </div>
	<style>
     .close {
         cursor: pointer;
        position: absolute;
        right: -4px;
        top: -4px;
        width: 32px;
        height: 32px;
        opacity: 0.3;
     }   
     .close:hover {
         opacity: 1;
     }
     .close:before, .close:after {
        position: absolute;
        left: 15px;
        content: ' ';

        height: 33px;
        width: 5px;
        background-color: #ff0000;
      }
     .close:before {
        transform: rotate(45deg);
     }
     .close:after {
        transform: rotate(-45deg);
      }
	</style>
	<script>
		var modal = document.getElementsByClassName("modal")[0];
        var modalBox = document.getElementsByClassName("modal-box")[0];
       
        var close = document.getElementsByClassName("close")[0];
        
        close.onclick = function () {
            modal.style.display = "none";
        };
       
		window.onclick = function (e) {
			if (e.target == modal) {
				modal.style.display = "none" ;
			}
		}
	</script>
     <br />
      <link href="https://admin.chatcompose.com/static/all/global/export/css/main.5b1bd1fd.css" rel="stylesheet" >
    <script async type="text/javascript" src="https://admin.chatcompose.com/static/all/global/export/js/main.a7059cb5.js" user="adminchat-viet" lang="VI"></script>
    <br />
     </asp:Content>