<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="sunrise.loginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- start banner Area -->
    <section class="banner-area relative">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row fullscreen align-items-center justify-content-between">
                <div class="col-lg-6 col-md-6 banner-left">
                    <h6 class="text-white">Away from monotonous life</h6>
                    <h1 class="text-white">SunRise Travel</h1>
                    <p class="text-white">
                        This login is only for admin and other authorised persons only.
                    </p>                
                </div>
                <div class="col-lg-4 col-md-6 banner-right">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="flight-tab" data-toggle="tab" href="#flight" role="tab" aria-controls="flight" aria-selected="true">Login For Admin</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="flight" role="tabpanel" aria-labelledby="flight-tab">
                                <form class="form-wrap" runat="server">
                                <asp:Label ID="lblErrorMessage" runat="server" Text="Enter correct username and password." ForeColor="Red"></asp:Label>
                                <asp:TextBox ID="txtUserName" runat="server" placeholder="Username" CssClass="form-control"></asp:TextBox>
                                <asp:TextBox ID="txtPassword" placeholder="Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="primary-btn text-uppercase" OnClick="btnLogin_Click" />                          
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End banner Area -->
</asp:Content>
