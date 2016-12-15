<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="e_Payzapp.web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="Assets/css/Tab/bootstrap-material-design.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="top">
        <div class="shader"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-8">

                    <div class="col-lg-12 col-md-6 col-sm-10 col-xs-10 bhoechie-tab-container">
                        <div class="col-lg-3 col-md-4 col-sm-3 col-xs-3 bhoechie-tab-menu">
                            <div class="list-group" style="height: 100%">
                                <a href="#" onclick="MakeRechage();" class="list-group-item active text-center" style="height: 19.45%; border: none !important">
                                    <br />
                                    Mobile Recharge
                                </a>
                                <a href="#" onclick="MakeDTH();" class="list-group-item text-center" style="height: 19.45%; border: none !important">
                                    <br />
                                    DTH Recharge
                                </a>
                                <a href="#" onclick="MakeDatacard()" class="list-group-item text-center" style="height: 19.45%; border: none !important">
                                    <br />
                                    Data Card
                                </a>
                                <a href="#" class="list-group-item text-center" style="height: 19.45%; border: none !important">
                                    <br />
                                    Electricty
                                </a>

                                <a href="#" class="list-group-item text-center" style="height: 19.45%; border: none !important">
                                    <br />
                                    Gas
                                </a>

                            </div>
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-4 col-xs-4 bhoechie-tab">

                            <!-- Mobile section -->
                            <div class="bhoechie-tab-content active">
                                <h4>RECHARGE YOUR MOBILE <span id="Mobno"></span></h4>
                                <span>Tell us your number and we will figure out the rest</span>


                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default active" id="MOBILE">
                                        <input name="Rechargetype" value="Mobile"  type="radio" checked="checked">Prepaid
                                    </label>
                                    <label class="btn btn-default" id="POSTPAID">
                                        <input name="Rechargetype" value="Postpaid" type="radio">Postpaid
                                    </label>
                                </div>

                                <div class="row" id="slide1">
                                    <div class="col-md-10">
                                        <div class="row">
                                            <div class="col-md-3" style="margin-top:20px;">
                                                <a class="btn btn1" href="#">+91</a>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="form-group label-floating">
                                                    <label class="control-label" for="focusedInput1">Mobile Number</label>

                                                    <input class="form-control" onkeyup="newcustomerdetails(this);" id="MobileInput" data-maxsize="10" type="text">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                         
                                    <div class="col-md-12">
                                        <div class="btn-toolbar bs-component" style="margin: 0;">

                                            <div class="btn-group" id="opr">
                                                <a href="javascript:void(0)" class="btn btn-warning"><span id="oprname">Operator</span><div class="ripple-container"></div>
                                                </a>
                                                <a href="bootstrap-elements.html" data-target="#" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span>
                                                    <div class="ripple-container"></div>
                                                </a>
                                                <ul id="oprtr" class="dropdown-menu">
                                                   
                                                   
                                                </ul>
                                            </div>


                                            <div class="btn-group" id="zone">
                                                <a href="javascript:void(0)" class="btn btn-warning"><span id="cirname">Circle</span><div class="ripple-container"></div>
                                                </a>
                                                <a href="bootstrap-elements.html" data-target="#" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span>
                                                    <div class="ripple-container"></div>
                                                </a>
                                                <ul id="crcl" class="dropdown-menu">
                                                    
                                                </ul>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="col-md-10">
                                        <button type="button" id="Proce" class="btn btn-primary pull-right" >Proceed</button>
                                    </div>
                                </div>
                                <div class="row" id="slide2" style="display: none">
                                    <div class="col-md-7">

                                        <div class="row">
                                            <div class="col-md-4" style="margin-top: 20px;">
                                                <a class="btn btn1" href="#">Rs.</a>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="form-group label-floating">
                                                    <label class="control-label" for="focusedAmt">Amount</label>

                                                    <input class="form-control" id="focusedAmt" type="text">
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-md-5" style="margin-top: 25px;"><a class="btn btn2" href="#" onclick="$('.aside').asidebar('open')">Browse Plan</a></div>


                                    <div class="col-md-11">
                                        <button type="button" id="Next" class="btn btn-success btn3 pull-right" onclick="ss();">Recharge</button>
                                        <button type="button" id="Return" class="btn btn-primary pull-right">Back</button>

                                    </div>
                                </div>
                            </div>
                            <!-- DTH section -->
                            <div class="bhoechie-tab-content">
                                <h4>PAY YOUR DTH BILL</h4>
                                <span>Just give us a few details</span>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <div class="btn-toolbar bs-component" style="margin: 0;">

                                                <div class="btn-group" id="dthopr" style="width: 350px !important">
                                                    <a href="javascript:void(0)" style="background: #ec7752 !important" class="btn btn-warning col-md-10">DTH Operator<div class="ripple-container"></div>
                                                    </a>
                                                    <a href="bootstrap-elements.html" data-target="#" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span>
                                                        <div class="ripple-container"></div>
                                                    </a>
                                                    <ul id="dth" class="dropdown-menu col-md-10">
                                                        
                                                    </ul>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group label-floating">
                                                <label class="control-label" for="focusedInput1">Mobile Number</label>
                                                <input class="form-control" id="focusedInput4" type="text">
                                            </div>
                                        </div>
                                        <div class="col-md-10">
                                            <button type="button" id="Proce2" class="btn btn-primary pull-right">Proceed</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Data Card search -->
                            <div class="bhoechie-tab-content">
                                <h4>RECHARGE YOUR DATACARD</h4>
                                <span>Tell us your number and we will figure out the rest</span>

                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default active" id="Pr1">
                                        <input name="Rechargetype" value="Prepaid" type="radio">Prepaid
                                    </label>
                                    <label class="btn btn-default" id="Po1">
                                        <input name="Rechargetype" value="Postpaid" type="radio">Postpaid
                                    </label>
                                </div>

                                <div class="row" id="slide3">
                                    <div class="col-md-7">
                                        <div class="row">
                                            <div class="col-md-4" style="margin-top: 20px;">
                                                <a class="btn btn1" href="#">+91</a>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="form-group label-floating">
                                                    <label class="control-label" for="focusedInput1">Mobile Number</label>

                                                    <input class="form-control" id="focusedInput5" type="text">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-5" style="margin-top: 25px;">
                                        <a class="cd-btn btn btn2" href="#">Browse Plan</a>

                                    </div>
                                    <div class="col-md-12">
                                        <div class="btn-toolbar bs-component" style="margin: 0;">

                                            <div class="btn-group" id="opr2">
                                                <a href="javascript:void(0)" class="btn btn-warning">Operator<div class="ripple-container"></div>
                                                </a>
                                                <a href="bootstrap-elements.html" data-target="#" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span>
                                                    <div class="ripple-container"></div>
                                                </a>
                                                <ul id="DATACARD" class="dropdown-menu">
                                                </ul>
                                            </div>


                                            <div class="btn-group" id="zone2">
                                                <a href="javascript:void(0)" class="btn btn-warning">Circle<div class="ripple-container"></div>
                                                </a>
                                                <a href="bootstrap-elements.html" data-target="#" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span>
                                                    <div class="ripple-container"></div>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:void(0)">Action</a></li>
                                                    <li><a href="javascript:void(0)">Another action</a></li>
                                                    <li><a href="javascript:void(0)">Something else here</a></li>
                                                    <li class="divider"></li>
                                                    <li><a href="javascript:void(0)">Separated link</a></li>
                                                </ul>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="col-md-10">
                                        <button type="button" id="Proce1" class="btn btn-primary pull-right">Proceed</button>
                                    </div>
                                </div>
                                <div class="row" id="slide4" style="display: none">
                                    <div class="col-md-7">

                                        <div class="row">
                                            <div class="col-md-4" style="margin-top: 20px;">
                                                <a class="btn btn1" href="#">Rs.</a>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="form-group label-floating">
                                                    <label class="control-label" for="focusedInput1">Amount</label>

                                                    <input class="form-control" id="focusedInput6" type="text">
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-md-5" style="margin-top: 25px;"><a class="btn btn2" onclick="$('.aside').asidebar('open')" href="#">Browse Plan</a></div>


                                    <div class="col-md-11">
                                        <button type="button" id="Next1" class="btn btn-success btn3 pull-right">Recharge</button>
                                        <button type="button" id="Return2" class="btn btn-primary pull-right">Back</button>

                                    </div>
                                </div>

                            </div>
                            <!-- Data Card close -->

                            <!-- ELECTRICITY BILL search -->
                            <div class="bhoechie-tab-content">

                                <h4>PAY YOUR ELECTRICITY BILL</h4>
                                <span>Just give us a few details</span>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <div class="btn-toolbar bs-component" style="margin: 0;">

                                                <div class="btn-group" id="eblopr" style="width: 350px !important">
                                                    <a href="javascript:void(0)" style="background: #ec7752 !important" class="btn btn-warning col-md-10">Eletricity Provider<div class="ripple-container"></div>
                                                    </a>
                                                    <a href="bootstrap-elements.html" data-target="#" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span>
                                                        <div class="ripple-container"></div>
                                                    </a>
                                                    <ul class="dropdown-menu col-md-10">
                                                        <li><a href="javascript:void(0)">Action</a></li>
                                                        <li><a href="javascript:void(0)">Another action</a></li>
                                                        <li><a href="javascript:void(0)">Something else here</a></li>
                                                        <li class="divider"></li>
                                                        <li><a href="javascript:void(0)">Separated link</a></li>
                                                    </ul>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group label-floating">
                                                <label class="control-label" for="focusedInput1">Mobile Number</label>
                                                <input class="form-control" id="focusedInput7" type="text">
                                            </div>
                                        </div>
                                        <div class="col-md-10">
                                            <button type="button" id="Proce3" class="btn btn-primary pull-right">Proceed</button>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <!-- ELECTRICITY BILL close -->
                             <!-- Gas BILL open -->
                            <div class="bhoechie-tab-content">
                                <h4>PAY YOUR GAS BILL</h4>
                                <span>Just give us a few details</span>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <div class="btn-toolbar bs-component" style="margin: 0;">

                                                <div class="btn-group" id="gasopr" style="width: 350px !important">
                                                    <a href="javascript:void(0)" style="background: #ec7752 !important" class="btn btn-warning col-md-10">Gas Provider<div class="ripple-container"></div>
                                                    </a>
                                                    <a href="bootstrap-elements.html" data-target="#" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span>
                                                        <div class="ripple-container"></div>
                                                    </a>
                                                    <ul class="dropdown-menu col-md-10">
                                                        <li><a href="javascript:void(0)">Action</a></li>
                                                        <li><a href="javascript:void(0)">Another action</a></li>
                                                        <li><a href="javascript:void(0)">Something else here</a></li>
                                                        <li class="divider"></li>
                                                        <li><a href="javascript:void(0)">Separated link</a></li>
                                                    </ul>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group label-floating">
                                                <label class="control-label" for="focusedInput9">Mobile Number</label>
                                                <input class="form-control" id="focusedInput9" type="text">
                                            </div>
                                        </div>

                                         <div class="col-md-12">
                                            <div class="form-group label-floating">
                                                <label class="control-label" for="focusedInput10">Mobile Number</label>
                                                <input class="form-control" id="focusedInput10" type="text">
                                            </div>
                                        </div>
                                        <div class="col-md-10">
                                            <button type="button" id="Proce4" class="btn btn-primary pull-right">Proceed</button>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <!-- Gas BILL close -->
                        </div>

                    </div>

                </div>


                <div class="col-md-4">
                    <div class="row">
                        <div class="col-md-4 col-sm-12 page-title fade-left delay2">
                            <%-- <h2 style="color:#fff">Presenting your app was never easy...<br>Until now</h2>--%>
                            <%-- <h3>Now on the App Store and Play Store</h3>
                        <div class="dl-icons">
                            <a href="#" class="dl"><img alt="" src="Assets/img/app-store.png"></a>
                            <a href="#" class="dl"><img alt="" src="Assets/img/google-play.png"></a>
                        </div>--%>
                        </div>
                        <div class="col-md-8 hidden-sm hidden-xs phone-holder">
                            <div class="secondary-phone fade-right delay6">
                                <img alt="" src="Assets/img/main-phone2.png">
                            </div>
                            <div class="main-phone fade-right delay3">
                                <img alt="" src="Assets/img/main-phone.png">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    

    <section id="features">
        <div class="container">
            <div class="row mob-overflowhide">
                <h4>e-PayZapp Wallet</h4>
                <h5>Simple, Fast, Hassle Free Payments</h5>

                <div class="col-sm-12 col-md-4 .feature-phone center col-md-push-4 f_t">
                    <img class="fp fade-up delay6" src="Assets/img/features-phone1.png" alt="">
                    <div class="dl-icons">
                        <a href="#" class="dl">
                            <img alt="" src="Assets/img/app-store.png"></a>
                        <a href="#" class="dl">
                            <img alt="" src="Assets/img/google-play.png"></a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4 align-right col-md-pull-4 f_t">
                    <div class="contain_feature">
                        <div class="feature fade-left delay2">
                            <i class="fa fa-bomb"></i>
                            <h3>MOBILE RECHARGE</h3>
                            <p>With money loaded in your e-PayZapp wallet, it takes seconds to make phone and DTH recharges!</p>
                        </div>
                        <div class="feature fade-left delay4">
                            <i class="fa fa-chain"></i>
                            <h3>ELECTRICITY BILL</h3>
                            <p>Bibendum rhoncus a parturient fermentum ultricies vitae lacinia tincidunt parturient parturt sociosqu litora interdum magnis.</p>
                        </div>
                        <div class="feature fade-left delay6">
                            <i class="fa fa-cny"></i>
                            <h3>GAS BILL!</h3>
                            <p>Bibendum rhoncus a parturient fermentum ultricies vitae lacinia tincidunt parturient parturt sociosqu litora interdum magnis.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4 align-left f_t">
                    <div class="contain_feature">
                        <div class="feature fade-right delay2">
                            <i class="fa fa-certificate"></i>
                            <h3>TRANSFER MONEY</h3>
                            <p>Bibendum rhoncus a parturient fermentum ultricies vitae lacinia tincidunt parturient parturt sociosqu litora interdum magnis.</p>
                        </div>
                        <div class="feature fade-right delay4">
                            <i class="fa fa-camera"></i>
                            <h3>BUS TICKETING</h3>
                            <p>Bibendum rhoncus a parturient fermentum ultricies vitae lacinia tincidunt parturient parturt sociosqu litora interdum magnis.</p>
                        </div>
                        <div class="feature fade-right delay6">
                            <i class="fa fa-clock-o"></i>
                            <h2>Support</h2>
                            <p>Bibendum rhoncus a parturient fermentum ultricies vitae lacinia tincidunt parturient parturt sociosqu litora interdum magnis.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="about">
        <div class="container">
            <div class="row">
               
               
                <div class="col-sm-4 fade-right delay8">
                    <i class="fa fa-bell-slash"></i>
                    <h4>Why You Should Use e-PayZapp?</h4>
                   <p>e-PayZapp is India's largest independent mobile payments network connecting 30+ million users with 1,00,000+ retailers. By using the wallet, you can now browse through some of the biggest online, retail and fashion stores without having to repeatedly expose your card details. e-PayZapp wallet also offers instant transfer of money to your friends & family with ease.
                On e-PayZapp, users do 25+ payments per second whereas 100+ new users sign-ups per minute. You can use the wallet at top merchants like Big Basket, Book My Show, eBay, Myntra, Grofers, IRCTC, Domino's Pizza, Shop Clues, OYO Rooms, Lime Tray, Yatra, Via.com, PVR, Zomato, Faasos, Purplle, FirstCry, Hungama, Big Bazaar, Abhi Bus, Groupon, Jabong, Mera Events, Rummy Circle, Ticket New, Fashion & You and more. Using the e-PayZapp wallet at various online and offline stores because of its ease and amazing cashbacks/ offers, will make you stop using cash and stick to wallet payments.</p>
                </div>

                 <div class="col-sm-4 fade-right delay8">
                    <i class="fa fa-bell-slash"></i>
                    <h4>Online Mobile Recharge</h4>
                   <p>Mobile phones are an intrinsic part of our lives and with association so is mobile recharge. Online mobile recharge gives you the liberty to recharge your mobile phone number anytime and from anywhere - be it from home, office, restaurant or holiday and all you need is internet access. When you think of easy recharge options, e-PayZapp is the best.
e-PayZapp is India's No. 1 Online Recharge site for Airtel, Vodafone, Idea, Tata Indicom,Reliance, Bsnl, Aircel, Tata Docomo. e-PayZapp does not charge you over any online mobile recharges done and you can save your time, effort and money. Browse for the cheapest talk time & data plans using e-PayZapp.com.
You can do prepaid online recharge and bill payments for any number, recharge for your friends and family with ease using MobiKwik. Recharge through Net Banking, Debit Card, Credit Card, Visa or Master Card and e-PayZapp wallet. HDFC, SBI, CITI & ICICI banks and a host of other banks supports Net Banking online recharge with ease.</p>
                </div>

                   <div class="col-sm-4 fade-right delay8">
                    <i class="fa fa-bell-slash"></i>
                    <h4>Online Bill Payment</h4>
                   <p>We also offer Bill Payments - Landline, Electricity, Insurance and Gas Bill payments can be done effortlessly. Sign up and enjoy great online bill payment services through e-PayZapp.com. Data Card online recharge and bill payment for Idea netsetter, MTS Mblaze and Tata Photon can be done with ease on e-PayZapp. DTH recharge with e-PayZapp is quick and easy and you can even browse for subscription plans. We offer Airtel DTH, Dish TV, Sun Direct, Tata Sky, Videocon D2H and Reliance Big TV DTH online recharge and bill payments.
With an objective of simplifying the mobile recharge process, e-PayZapp lets you browse through a list of data plans and make your pick depending on your usage. Whether you are making a postpaid bill payment or a prepaid recharge, you can now save both time and energy and have plans on the tip of your fingers. With e-PayZapp, you can stay connected and make your online recharge at any time of the day. You can also use the e-PayZapp portal to shop, pay your bills, and recharge both mobile and DTH connections on the go.</p>
                </div>


            </div>
        </div>
    </section>


    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 fade-left delay2">
                    <i class="fa fa-envelope-o"></i>
                    <h3>Contact</h3>
                    <h2>Get in touch for business, enquiries, or just to say hi</h2>
                    <p class="small">Address</p>
                    <p>881 Bengate House, 10th Street, HJ6 6HG, Nonexistant Place, London</p>
                    <p class="small">Phone</p>
                    <p>0840 237 2131</p>
                    <p class="small">Email</p>
                    <p>hello@noyah.com</p>
                </div>
                <div class="col-sm-4 fade-left delay2">
                    <i class="fa fa-envelope-o"></i>
                    <h3>Contact</h3>
                    <h2>Get in touch for business, enquiries, or just to say hi</h2>
                    <p class="small">Address</p>
                    <p>881 Bengate House, 10th Street, HJ6 6HG, Nonexistant Place, London</p>
                    <p class="small">Phone</p>
                    <p>0840 237 2131</p>
                    <p class="small">Email</p>
                    <p>hello@noyah.com</p>
                </div>
                <div class="col-sm-4 fade-left delay2">
                    <i class="fa fa-envelope-o"></i>
                    <h3>Contact</h3>
                    <h2>Get in touch for business, enquiries, or just to say hi</h2>
                    <p class="small">Address</p>
                    <p>881 Bengate House, 10th Street, HJ6 6HG, Nonexistant Place, London</p>
                    <p class="small">Phone</p>
                    <p>0840 237 2131</p>
                    <p class="small">Email</p>
                    <p>hello@noyah.com</p>
                </div>
            </div>
        </div>
    </section>


    <script src="Assets/vendor/jquery-2.1.1.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
    <script src="DeveloperJSPoint/Designerpoint.js"></script>
    <script src="DeveloperJSPoint/ProviderOpr.js"></script>
    <script src="DeveloperJSPoint/Statefortelecom.js"></script>
    <script src="DeveloperJSPoint/maxlength.js"></script>
    <script src="JavascriptLib/UserManagement.js"></script>
    <script>
        $.noConflict();
        var ProviderType = "MOBILE";
        var DTHProviderType;
        function MakeRechage() {
            ProviderType = "MOBILE"
            setTimeout(GetAllOpretorProvider(ProviderType), 2000);
        }
        function MakeDTH() {
            ProviderType = "DTH"
            setTimeout(GetAllOpretorProvider(ProviderType), 2000);
          
        }
        function MakeDatacard() {
            ProviderType = "DATACARD"
            setTimeout(GetAllOpretorProvider(ProviderType), 2000);

        }
        function ss() {
            var makepayment = new Object();
            if (StResult == "false") {
               
                var loginBox = "#login-box";
                $(loginBox).fadeIn(300);
                 var popMargLeft = ($(loginBox).width() + 24) / 2;
                $(loginBox).css({
                  'margin-left': -popMargLeft
                });

                $('body').append('<div id="mask"></div>');
                $('#mask').fadeIn(300);
                return false;
            } else {

                makepayment.MobileNo = $("#MobileInput").val();
                makepayment.ProviderId = oprid;
                makepayment.Amount = $("#focusedAmt").val();
                makepayment.ClientId = stype;
              
                MyPayment(makepayment);
              //  window.location.href = "User_Section/Dashboard.aspx";
            }
        };

        $(document).ready(function () {
           
            GetAllOpretoCircle(India);
            $("#POSTPAID").on("click", function () {
                $("#zone").hide();
                ProviderType = this.id;
                GetAllOpretorProvider(ProviderType);
            });
            $("#MOBILE").on("click", function () {

                $("#zone").show();
                ProviderType = this.id;
                GetAllOpretorProvider(ProviderType);
            });

           // CustomerMobileNumberDetails();
            GetAllOpretorProvider(ProviderType);

        });


        function GetAllOpretorProvider(ProviderType) {
           
            $.ajax({
                type: "GET",
                contentType: "application/json; charset=utf-8",
                url: "http://localhost:59667/api/Default/GetAllProvider/",
                data: "{}",
                dataType: "json",
                success: function (data) {
                    $("#oprtr").html('');
                    $("#dth").html('');
                    $("#DATACARD").html('');
                    $.each(data.providers, function () {
                        if (this["service"] == ProviderType) {
                            if (ProviderType == "MOBILE" || ProviderType == "POSTPAID") {
                                $("#oprtr").append('<li class="Oprselect"  id=' + this["provider_id"] + '><a data-pnam=' + this["provider_name"] + ' data-pid=' + this["provider_id"] + '  id="s' + this["provider_id"] + '" href="javascript:void(0)" onclick="selectTSM(this);">' + this["provider_name"] + '</a></li>');
                            }
                             if (ProviderType == "DTH") {

                                 $("#dth").append('<li class="dthselect"  id=' + this["provider_id"] + '><a data-pnam=' + this["provider_name"] + ' data-pid=' + this["provider_id"] + '  id="s' + this["provider_id"] + '" href="javascript:void(0)">' + this["provider_name"] + '</a></li>');

                             }
                             if (ProviderType == "DATACARD") {

                                 $("#DATACARD").append('<li class="dthselect"  id=' + this["provider_id"] + '><a data-pnam=' + this["provider_name"] + ' data-pid=' + this["provider_id"] + '  id="s' + this["provider_id"] + '" href="javascript:void(0)">' + this["provider_name"] + '</a></li>');

                             }

                        }
                       
                     
                    });

                },
                error: function (result) {

                    alert("Error " + result.statusText);
                }
            });

        }

        function selectTSM(obj) {
            $('.Oprselect').removeClass('active');
            $("#" + $(obj).data('pid')).addClass("active");
            $("#oprname").html($(obj).data('pnam'));
        }

        function selectTSMCC(obj) {
            $('.circlezone').removeClass('active');
            $("#" + $(obj).data('pcid')).addClass("active");
            $("#cirname").html($(obj).data('pnam'));
        }
    </script>
    
</asp:Content>
