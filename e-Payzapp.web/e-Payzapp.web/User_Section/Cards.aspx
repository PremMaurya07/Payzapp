<%@ Page Title="" Language="C#" MasterPageFile="~/User_Section/UserSection.Master" AutoEventWireup="true" CodeBehind="Cards.aspx.cs" Inherits="e_Payzapp.web.User_Section.Cards" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="left-side-wrapper">
                            <div class="left-side sticky-left-side">
                                <div class="left-side-inner">
                                    <ul class="nav nav-pills nav-stacked custom-nav">
                                        <li class="menu-list nav-active current"><a href="Dashboard.aspx"><i class="ion ion-speedometer"></i><span>Dashboards</span> <i class="ion ion-ios7-arrow-up pull-right"></i></a>
                                            <ul class="sub-menu-list">
                                                 <li>
                                                   <a href="Dashboard.aspx">Welcome</a>
                                                </li>
                                                <li>
                                                    <a href="wallet.aspx">Add Money</a>
                                                </li>
                                                <li>
                                                    <a href="Favourite.aspx">FAVOURITES</a>
                                                </li>
                                                <li class="active">
                                                    <a href="Cards.aspx">CARDS</a>
                                                </li>
                                                <li>
                                                    <a href="histroy.aspx"> HISTORY</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="nav-header">Settings</li>
                                        <li class="menu-list ">
                                            <a href="#">
                                                <span>Change Password</span></a>
                                        </li>

                                        <li class="menu-list ">
                                            <a href="#">
                                                <span>Change Mobile No</span> </a>
                                        </li>
                                        <li class="menu-list ">
                                            <a href="#">
                                                <span>Add Card No</span> </a>
                                        </li>


                                        <li  class="nav-header"><span>Policy</span>
                                        </li>
                                         <li class="menu-list ">
                                            <a href="#">
                                                <span>Support</span></a>
                                        </li>

                                        <li class="menu-list ">
                                            <a href="#">
                                                <span>FAQ</span> </a>
                                        </li>
                                        <li class="menu-list ">
                                            <a href="#">
                                                <span>Term & Condation</span> </a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="main-content-wrapper">
                        <section>
<div class="container-fluid container-padded">
<div class="row">
<div class="col-xs-6 col-sm-6 col-md-3">
    <h1>Add Cards</h1>
</div>



</div>


</div>
</section>
                        </div>
</asp:Content>
