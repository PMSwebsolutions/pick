<%@ Page Title="" Language="C#" MasterPageFile="~/AboutContact.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="sunrise.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Javascript/jquery-3.3.1.js" type="text/javascript"></script>
    <script src="Javascript/knockout-3.4.2.js" type="text/javascript"></script>
    <script src="Javascript/contact.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- start banner Area -->
    <section class="relative about-banner">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <h1 class="text-white">Contact Us				
                    </h1>
                    <p class="text-white link-nav"><a href="home.aspx">Home </a><span class="lnr lnr-arrow-right"></span><a href="contact.aspx">Contact Us</a></p>
                </div>
            </div>
        </div>
    </section>
    <!-- End banner Area -->

    <!-- Start contact-page Area -->
    <section class="contact-page-area section-gap">
        <div class="container">
            <div class="row">
                <div class="map-wrap" style="width: 100%; height: 445px;" id="map"></div>
                <div class="col-lg-4 d-flex flex-column address-wrap">
                    <div class="single-contact-address d-flex flex-row">
                        <div class="icon">
                            <span class="lnr lnr-home"></span>
                        </div>
                        <div class="contact-details">
                            <h5>Bangalore, Karnataka</h5>
                            <p>
                                Saptagiri Building, Ramamurthy Nagar
                            </p>
                        </div>
                    </div>
                    <div class="single-contact-address d-flex flex-row">
                        <div class="icon">
                            <span class="lnr lnr-phone-handset"></span>
                        </div>
                        <div class="contact-details">
                            <h5>+91 9912345678</h5>
                            <p>Mon to Fri 9am to 6 pm</p>
                        </div>
                    </div>
                    <div class="single-contact-address d-flex flex-row">
                        <div class="icon">
                            <span class="lnr lnr-envelope"></span>
                        </div>
                        <div class="contact-details">
                            <h5>support@sunrisetravels.com</h5>
                            <p>Send us your query anytime!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <form class="form-area contact-form text-right" id="myForm" method="post" data-bind="submit : contact">
                        <div class="row">
                            <div class="col-lg-6 form-group">
                                <input name="name" data-bind="textInput : name" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mb-20 form-control" required="" type="text">

                                <input name="email" data-bind="textInput : email" placeholder="Enter email address" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="email">

                                <input name="subject" data-bind="textInput : subject" placeholder="Enter subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter subject'" class="common-input mb-20 form-control" required="" type="text">
                            </div>
                            <div class="col-lg-6 form-group">
                                <textarea data-bind="textInput : message" class="common-textarea form-control" name="message" placeholder="Enter Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Messege'" required=""></textarea>
                            </div>
                            <div class="col-lg-12">
                                <div class="alert-msg" style="text-align: left;"></div>
                                <button type="submit" id="contactBtn"  class="genric-btn primary" style="float: right;">Send Message</button>
                                <img src="img/contact/loader.gif" id="loader" alt="loading..."/>
                                
                            </div>
                            
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <script>
        // Initialize and add the map
        function initMap() {
            // The location of Uluru
            var uluru = { lat: 12.9716, lng: 77.5946 };
            // The map, centered at Uluru
            var map = new google.maps.Map(
                document.getElementById('map'), { zoom: 4, center: uluru });
            // The marker, positioned at Uluru
            var marker = new google.maps.Marker({ position: uluru, map: map });
        }
    </script>
    <!-- End contact-page Area -->
</asp:Content>
