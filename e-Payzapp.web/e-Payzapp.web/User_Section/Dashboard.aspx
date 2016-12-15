<%@ Page Title="" Language="C#" MasterPageFile="~/User_Section/UserSection.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="e_Payzapp.web.User_Section.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                        <div class="left-side-wrapper">
                            <div class="left-side sticky-left-side">
                                <div class="left-side-inner">
                                    <ul class="nav nav-pills nav-stacked custom-nav">
                                        <li class="menu-list nav-active current"><a href="Dashboard.aspx"><i class="ion ion-speedometer"></i><span>Dashboards</span> <i class="ion ion-ios7-arrow-up pull-right"></i></a>
                                            <ul class="sub-menu-list">
                                                 <li class="active">
                                                   <a href="Dashboard.aspx">Welcome</a>
                                                </li>
                                                <li>
                                                  <a href="wallet.aspx">Add Money</a>
                                                </li>
                                                <li>
                                                    <a href="Favourite.aspx">FAVOURITES</a>
                                                </li>
                                                <li>
                                                    <a href="Cards.aspx">CARDS</a>
                                                </li>
                                                <li>
                                                    <a href="histroy.aspx"> HISTORY</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li  class="menu-list current">
                                         <a href="#"> <i class="ion ion-speedometer"></i><span>Settings</span> <i class="ion ion-ios7-arrow-up pull-right"></i></a>
                                            <ul class="sub-menu-list">
                                                 <li>
                                                   <a href="Dashboard.aspx">Change Password</a>
                                                </li>
                                                <li>
                                                  <a href="wallet.aspx">Change Mobile </a>
                                                </li>
                                                <li>
                                                    <a href="Favourite.aspx">Add Cards</a>
                                                </li>
                                                
                                            </ul>
                                        </li>
                                      
                                        <li  class="nav-header"><span>Policy</span>
                                        </li>
                                         <li class="menu-list "> 
                                            <a href="#">
                                               <i class="ion ion-speedometer"></i> <span>Support</span></a>
                                        </li>

                                        <li class="menu-list "> 
                                            <a href="#">
                                              <i class="ion ion-speedometer"></i>  <span>FAQ</span> </a>
                                        </li>
                                        <li class="menu-list "> 
                                            <a href="#">
                                              <i class="ion ion-speedometer"></i>  <span>Term & Condation</span> </a>
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
    <h1>Welcome</h1>
</div>



</div>


</div>
</section>
</div>
    <script src="../Assets/vendor/jquery-2.1.1.js"></script>
    <script src="../JavascriptLib/UserManagement.js"></script>
      <script>
          $(document).ready(function () {
              alert();
              $.noConflict();
              MyPayment();
          });
      </script>
</asp:Content>
