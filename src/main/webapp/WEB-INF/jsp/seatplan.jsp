<%--
  Created by IntelliJ IDEA.
  User: lakmaljay
  Date: 2/8/2018
  Time: 6:38 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>TRAIN SEAT BOOKING</title>

    <!--favicon-->
    <link rel="icon" href="images/mobitel.ico" type="image/x-icon" />
    <!--favicon-->

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap -->

    <!--main css-->
    <link href="css/train_seat_css.css" rel="stylesheet" type="text/css"
          media="screen">

    <link href="css/train_seat_inner_page_css.css" rel="stylesheet"
          type="text/css" media="screen">
    <!--main css-->

    <!--media query css-->
    <link href="css/mediaquery.css" rel="stylesheet" type="text/css"
          media="screen">
    <!--media query css-->

    <!--Date Picker-->
    <link rel="stylesheet" type="text/css"
          href="css/datepicker/bootstrap-datepicker3.min.css" />
    <link rel="stylesheet" type="text/css"
          href="css/datepicker/bootstrap-datepicker3.standalone.min.css" />
    <!--Date Picker end-->

    <!--seat booking css-->
    <link href="css/seat_booking.css" rel="stylesheet" type="text/css"
          media="screen">
    <!--seat booking css-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

    <!--scroll bar style-->
    <style>
        ::-webkit-scrollbar {
            width: 2px;
        }

        ::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 0px #29d54d;
            border-radius: 10px;
        }

        ::-webkit-scrollbar-thumb {
            border-radius: 10px;
            background-color: #29d54d;
            -webkit-box-shadow: inset 0 0 1px #29d54d;
        }
    </style>
    <!--scroll bar style-->


</head>
<body class="inner_page_bg">



<!--=============================================-->
<!--===================header====================-->

<div class="row margin_auto header_bar">
    <div class="container">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no_padding">

            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <a href="../../webapp/WEB-INF/jsp/index.html"><img src="images/logo.png" alt=""
                                                                   class="img-responsive logo"></a>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <p class="language_btn" style="margin-bottom: 0px;">
                    <a href="profile.html"><b class="user"><img
                            src="images/user_icon.png" alt="abmiddle" class="">
                        Welcome, Kamal Perera</b></a>
                </p>
                <p class="language_btn" style="padding-top: 0px;">
                    <a href=""><img src="images/eng.png" alt="abmiddle"></a> <a
                        href=""><img src="images/sinhala.png" alt="abmiddle"></a> <a
                        href=""><img src="images/tamil.png" alt="abmiddle"></a>
                </p>
            </div>

        </div>
    </div>
</div>

<!--=============================================-->
<!--===================header====================-->


<!--=============================================-->
<!--===================body====================-->


<!--logo bar-->
<div class="container">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 logo_bar">
        &nbsp;</div>
</div>
<!--logo bar-->

<br>

<!--check availability-->

<div class="container">

<!--check availability section-->
<div
        class="col-lg-12 col-md-12 col-sm-12 col-xs-12 check_div hidden-xs">

    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no_padding">

        <div class="black_box">
            <!-- black box start-->
            <h3 class="small_heading">CHECK AVAILABILITY</h3>

            <form>


                <div class="row">

                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="form-group has-feedback">
                            <select class="form-control" id="exampleFormControlSelect4">
                                <option>FROM</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                            </select>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="form-group has-feedback">
                            <select class="form-control" id="exampleFormControlSelect5">
                                <option>TO</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                                <option>Station</option>
                            </select>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="row margin_auto">
                            <div class="form-group has-feedback">
                                <input type="text" class="form-control form-control_my date"
                                       id="datepicker1" placeholder="DATE *" required> <i
                                    class="glyphicon glyphicon-calendar form-control-feedback"></i>
                            </div>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="row margin_auto">
                            <div class="form-group has-feedback">
                                <input type="number" class="form-control" id="no_of_psng"
                                       placeholder="NUMBER OF PASSENGER *" required> <i
                                    class="glyphicon glyphicon-user form-control-feedback"></i>
                            </div>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="form-group has-feedback">
                            <select class="form-control" id="exampleFormControlSelect1">
                                <option>COMPARTMENT TYPE</option>
                                <option>LUXURY</option>
                                <option>SEMI LUXURY</option>
                                <option>NORMAL</option>
                            </select>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="form-group has-feedback">
                            <select class="form-control" id="exampleFormControlSelect2">
                                <option>AC / NON AC</option>
                                <option>AC</option>
                                <option>NON AC</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <!-- button col -->
                        <div class="center-block text-center">
                            <a href="" data-toggle="modal"><button type="submit"
                                                                   class="btn btn-success">SEARCH</button></a> <a href=""
                                                                                                                  data-toggle="modal"><button type="submit"
                                                                                                                                              class="btn btn-success">RESET</button></a>
                        </div>
                    </div>
                    <!-- button col -->


                </div>

                <!--=========================-->

            </form>

            <br>

        </div>
        <!-- black box end-->

    </div>

</div>
<!--check availability section-->

<!--=======================================-->


<!--seat booking section-->


<!--seat booking section-->

<div class="row margin_auto">

<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

<br>
<div class="black_box"><!-- black box start-->

<h1 class="modal_heading">SELECT YOUR SEAT</h1>
<br>

<div class="row"><!-- slider row-->
<div id="myCarousel_01" class="carousel slide" data-ride="carousel"  data-interval="false"><!-- slider-->
<!-- Indicators -->
<!--<ol class="carousel-indicators">-->
<!--<li data-target="#myCarousel_01" data-slide-to="0" class="active"></li>-->
<!--<li data-target="#myCarousel_01" data-slide-to="1"></li>-->
<!--<li data-target="#myCarousel_01" data-slide-to="2"></li>-->
<!--</ol>-->

<!-- Wrapper for slides -->
<div class="carousel-inner">

<div class="item active">

<div class="plane">
<div class="cockpit">
    <h1>COMPARTMENT <b class="comp_no">SCR</b></h1>
</div>
<div class="exit exit--front fuselage">

</div>
<ol class="cabin fuselage">
<li class="row row--1 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="1A" />
            <label for="1A" class="reserved">1</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="1B" />
            <label for="1B">2</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="1C" />
            <label for="1C" style="display: none !important;">1C</label>
        </li>
        <li class="seat">
            <input type="checkbox" disabled id="1D" />
            <label for="1D" style="display: none !important;">Occupied</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="1E" />
            <label for="1E" class="reserved">24</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="1F" />
            <label for="1F" class="reserved">23</label>
        </li>
    </ol>
</li>
<li class="row row--2 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="2A" />
            <label for="2A">3</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="2B" />
            <label for="2B">4</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="2C" />
            <label for="2C" style="display: none !important;">2C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="2D" />
            <label for="2D" style="display: none !important;">2D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="2E" />
            <label for="2E">26</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="2F" />
            <label for="2F">25</label>
        </li>
    </ol>
</li>
<li class="row row--3 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="3A" />
            <label for="3A">5</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="3B" />
            <label for="3B">6</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="3C" />
            <label for="3C" style="display: none !important;">3C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="3D" />
            <label for="3D" style="display: none !important;">3D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="3E" />
            <label for="3E">28</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="3F" />
            <label for="3F">27</label>
        </li>
    </ol>
</li>
<li class="row row--4 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="4A" />
            <label for="4A" class="reserved">7</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="4B" />
            <label for="4B" class="reserved">8</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="4C" />
            <label for="4C" style="display: none !important;">4C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="4D" />
            <label for="4D" style="display: none !important;">4D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="4E" />
            <label for="4E">30</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="4F" />
            <label for="4F">29</label>
        </li>
    </ol>
</li>
<li class="row row--5 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="5A" />
            <label for="5A">9</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="5B" />
            <label for="5B">10</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="5C" />
            <label for="5C" style="display: none !important;">5C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="5D" />
            <label for="5D" style="display: none !important;">5D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="5E" />
            <label for="5E">32</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="5F" />
            <label for="5F">31</label>
        </li>
    </ol>
</li>
<li class="row row--6 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="6A" />
            <label for="6A">11</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="6B" />
            <label for="6B">12</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="6C" />
            <label for="6C" style="display: none !important;">6C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="6D" />
            <label for="6D" style="display: none !important;">6D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="6E" />
            <label for="6E">34</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="6F" />
            <label for="6F">33</label>
        </li>
    </ol>
</li>
<li class="row row--7 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="7A" />
            <label for="7A">13</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="7B" />
            <label for="7B">14</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="7C" />
            <label for="7C" style="display: none !important;">7C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="7D" />
            <label for="7D" style="display: none !important;">7D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="7E" />
            <label for="7E">36</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="7F" />
            <label for="7F">35</label>
        </li>
    </ol>
</li>
<li class="row row--8 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="8A" />
            <label for="8A">15</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="8B" />
            <label for="8B">16</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="8C" />
            <label for="8C" style="display: none !important;">8C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="8D" />
            <label for="8D" style="display: none !important;">8D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="8E" />
            <label for="8E">38</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="8F" />
            <label for="8F">37</label>
        </li>
    </ol>
</li>
<li class="row row--9 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="9A" />
            <label for="9A" class="reserved">17</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="9B" />
            <label for="9B" class="reserved">18</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="9C" />
            <label for="9C" style="display: none !important;">9C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="9D" />
            <label for="9D" style="display: none !important;">9D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="9E" />
            <label for="9E">40</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="9F" />
            <label for="9F">39</label>
        </li>
    </ol>
</li>
<li class="row row--10 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="10A" />
            <label for="10A">19</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="10B" />
            <label for="10B">20</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="10C" />
            <label for="10C" style="display: none !important;">10C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="10D" />
            <label for="10D" style="display: none !important;">10D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="10E" />
            <label for="10E">42</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="10F" />
            <label for="10F">41</label>
        </li>
    </ol>
</li>
<li class="row row--11 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="11A" />
            <label for="11A">21</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="11B" />
            <label for="11B">22</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="11C" />
            <label for="11C" style="display: none !important;">10C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="11D" />
            <label for="11D" style="display: none !important;">10D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="11E" />
            <label for="11E">44</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="11F" />
            <label for="11F">43</label>
        </li>
    </ol>
</li>
<ol class="seats" type="A">
    <li class="seat">
        <input type="checkbox" id="17A" />
        <label for="17A">10A</label>
    </li>
    <li class="seat">
        <input type="checkbox" id="17B" />
        <label for="17B">10B</label>
    </li>
    <li class="seat">
        <input type="checkbox" id="11C" />
        <label for="11C" style="display: none !important;">10C</label>
    </li>
    <li class="seat">
        <input type="checkbox" id="17D" />
        <label for="17D" style="display: none !important;">10D</label>
    </li>
    <li class="seat">
        <input type="checkbox" id="17E" />
        <label for="17E">10E</label>
    </li>
    <li class="seat">
        <input type="checkbox" id="17F" />
        <label for="17F">10F</label>
    </li>
</ol>
</li>
</ol>
<div class="exit exit--back fuselage">

</div>
</div>

</div>



</div>

<!-- Left and right controls -->
<a class="left carousel-control" href="#myCarousel_01" data-slide="prev" style="top: 50px; right: 60px !important; left: inherit;">
    <span><img src="images/arrow_left.png" alt="" class=""> </span>
    <span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel_01" data-slide="next" style="top: 50px;">
    <span><img src="images/arrow_right.png" alt="" class=""> </span>
    <span class="sr-only">Next</span>
</a>
</div><!-- slider-->
</div><!-- slider row-->

<br>

<b class="seat_type"><img src="images/rose.png" alt="abmiddle" class=""> &nbsp; AVAILABLE SEATS </b>  &nbsp; &nbsp;  <b class="seat_type"><img src="images/white.png" alt="abmiddle" class=""> &nbsp; RESERVED SEATS </b>

</div><!-- black box end-->
<br>

</div>

<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

    <br>
    <div class="black_box"><!-- black box start-->

        <h1 class="modal_heading">BOOKING SUMMARY</h1>
        <br>

        <div class="row margin_auto">
            <table class="table table-bordered booking_summary_table">
                <tbody>
                <tr>
                    <td style=" border: 1px solid #595959;">Compartment - SCR</td>
                    <td style=" border: 1px solid #595959;">2 Seats X Rs.600.00</td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align: center; border: 1px solid #595959;">GRAND TOTAl - Rs. 1200.00</td>
                </tr>
                </tbody>
            </table>
        </div>

        <p style="text-align: center;">
        </p>

        <br>
        <div class="center-block text-center">
            <!--<a href="#myModal15" data-toggle="modal"><button type="submit" class="btn btn-success" style="width: 50%;">PROCEED TO CHECKOUT</button></a>-->
            <%--<a href="step_04.html">--%>
                <%--<button type="submit" class="btn btn-success" style="width: 50%;">PROCEED TO CHECKOUT</button></a>--%>

            <form method="post" action="reservation">
                <input type="submit" class="btn btn-success" style="width: 50%;" value="PROCEED TO CHECKOUT" />
            </form>
        </div>
        <br>

    </div><!-- black box end-->
    <br>

</div>

</div>

<!--seat booking section-->

<!--seat booking section-->


</div>


<!--check availability-->

<!--=============================================-->
<!--===================body====================-->


<!--================modal===================-->

<!--modal-->

<div id="myModal13" class="modal" data-easein="bounceLeftIn"
     tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">
                    <img src="images/close.png" alt="abmiddle">
                </button>
            </div>
            <div class="modal-body">
                <h1 class="modal_heading">SIGN UP</h1>
                <br>
                <form>
                    <!--=========================-->

                    <div class="row margin_auto">
                        <div class="form-group has-feedback">
                            <input type="text" class="form-control" id="name"
                                   placeholder="NAME *" required>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="row margin_auto">
                        <div class="form-group has-feedback">
                            <input type="text" class="form-control" id="phone"
                                   placeholder="PHONE *" required>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="row margin_auto">
                        <div class="form-group has-feedback">
                            <input type="text" class="form-control" id="email"
                                   placeholder="EMAIL *" required>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="row margin_auto">
                        <div class="form-group has-feedback">
                            <input type="text" class="form-control" id="nic"
                                   placeholder="NIC *" required>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="row margin_auto">
                        <div class="center-block text-center">
                            <button type="submit" class="btn btn-success">SIGN IN</button>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="row margin_auto">
                        <br>
                        <p style="text-align: center;">
                            <b>OR</b>
                        </p>
                        <br>
                    </div>

                    <!--=========================-->

                    <div class="row margin_auto">
                        <p style="text-align: center;">
                            <a href=""> <img src="images/fb.png" alt="abmiddle" class="">
                                &nbsp;
                            </a> <a href=""> <img src="images/ins.png" alt="abmiddle"
                                                  class=""> &nbsp;
                        </a> <a href=""> <img src="images/twi.png" alt="abmiddle"
                                              class=""> &nbsp;
                        </a> <a href=""> <img src="images/google.png" alt="abmiddle"
                                              class=""> &nbsp;
                        </a>
                        </p>
                        <br>
                    </div>

                    <!--=========================-->

                </form>

            </div>
        </div>
    </div>
</div>

<!--===================================-->

<div id="myModal15" class="modal" data-easein="bounceRightIn"
     tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">
                    <img src="images/close.png" alt="abmiddle">
                </button>
            </div>
            <div class="modal-body">
                <h1 class="modal_heading">LOG IN</h1>
                <br>
                <form>
                    <!--=========================-->

                    <div class="row margin_auto">
                        <div class="form-group has-feedback">
                            <input type="text" class="form-control" id="uname"
                                   placeholder="USER NAME *" required>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="row margin_auto">
                        <div class="form-group has-feedback">
                            <input type="password" class="form-control" id="paswd"
                                   placeholder="PASSWORD *" required>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="row margin_auto">
                        <div
                                class="col-lg-6 col-md-6 col-sm-6 col-xs-6 center-block no_padding">
                            <p style="font-size: 16px; cursor: pointer;" href="#myModal13"
                               data-toggle="modal" id="reg">Register</p>
                        </div>

                        <div
                                class="col-lg-6 col-md-6 col-sm-6 col-xs-6 center-block no_padding">
                            <p style="font-size: 16px; cursor: pointer; text-align: right;"
                               href="#myModal16" data-toggle="modal" id="fog_pass">Forgot
                                Password</p>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="row margin_auto">
                        <div class="center-block text-center">
                            <button type="submit" class="btn btn-success">LOG IN</button>
                        </div>
                    </div>

                    <!--=========================-->
                </form>

                <br>

            </div>
        </div>
    </div>
</div>

<!--====================================-->

<div id="myModal16" class="modal" data-easein="bounceDownIn"
     tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">
                    <img src="images/close.png" alt="abmiddle">
                </button>
            </div>
            <div class="modal-body">
                <h1 class="modal_heading">RESET PASSWORD</h1>
                <br>
                <form id="reset_form">
                    <!--=========================-->

                    <div class="row margin_auto">
                        <div class="form-group has-feedback">
                            <input type="text" class="form-control" id="name_1"
                                   placeholder="NAME *" required>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="row margin_auto">
                        <div class="form-group has-feedback">
                            <input type="text" class="form-control" id="phone_1"
                                   placeholder="PHONE *" required>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="row margin_auto">
                        <div class="form-group has-feedback">
                            <input type="text" class="form-control" id="email_1"
                                   placeholder="EMAIL *" required>
                        </div>
                    </div>

                    <!--=========================-->

                    <div class="row margin_auto">
                        <div class="center-block text-center">
                            <button type="submit" class="btn btn-success" id="reset_btn">RESET</button>
                        </div>
                    </div>

                    <br>

                    <!--=========================-->

                </form>



                <div class="row margin_auto" id="reset_message"
                     style="display: none;">
                    <p style="text-align: center;">
                        Your Password Reset Link Email has been Sent to Your Email
                        Address,Please Check Your E-mail <br> Thank You
                    </p>
                </div>

                <!--=========================-->

            </div>
        </div>
    </div>
</div>

<!--modal-->

<!--====================================-->


<!--=============================================-->
<!--===================footer====================-->

<div class="row margin_auto footer_bar inner_footer_bar">

    <div class="container">

        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <p class="footer_p1">© Sri Lanka Railways, Colombo 10, Sri Lanka
                | Contact Us | Terms & condition</p>
        </div>

        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <p class="footer_p2">
                Powered By &nbsp; <a href="http://www.mobitel.lk/" target="_blank">
                <img src="images/footer_logo.png" alt="abmiddle">
            </a>
            </p>
        </div>

    </div>

</div>

<!--=============================================-->
<!--===================footer====================-->






<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>


<!--return show/hide -->
<script type="text/javascript">
    function showhide_return(value)
    {
        if(value == 'Y')
        {
            $("#return_block").show();
        }else{
            $("#return_block").hide();
        }
    }
</script>
<!--return show/hide -->

<!--return close popup -->
<script type="text/javascript">
    $('#reg').click(function(){

        $("#myModal15").modal('toggle');
    })
    $('#fog_pass').click(function(){

        $("#myModal15").modal('toggle');
    })
</script>
<!--return  close popup -->

<!--reset msg -->
<script type="text/javascript">
    $('#reset_btn').click(function(){

        $("#reset_form").hide();
        $("#reset_message").fadeIn(1000);
    })

</script>
<!--reset msg  -->



<!-- date picker -->
<script type="text/javascript"
        src="js/datepicker/bootstrap-datepicker.min.js"></script>
<script>
    $('#datepicker1').datepicker();
    $('#datepicker1').on("changeDate", function() {
        $('#my_hidden_input').val(
                $('#datepicker3').datepicker('getFormattedDate')
        );
    });

    $('#datepicker1').datepicker({
        autoclose: true,
    });


    $('#datepicker1').on('changeDate', function(){
        $(this).datepicker('hide');
    });

</script>

<!-- date picker -->


<!--popover style-->

<script src='js/velocity.min.js'></script>
<script src='js/velocity.ui.min.js'></script>


<script>
    // add the animation to the popover
    $('a[rel=popover]').popover().click(function(e) {
        e.preventDefault();
        var open = $(this).attr('data-easein');
        if (open == 'shake') {
            $(this).next().velocity('callout.' + open);
        } else if (open == 'pulse') {
            $(this).next().velocity('callout.' + open);
        } else if (open == 'tada') {
            $(this).next().velocity('callout.' + open);
        } else if (open == 'flash') {
            $(this).next().velocity('callout.' + open);
        } else if (open == 'bounce') {
            $(this).next().velocity('callout.' + open);
        } else if (open == 'swing') {
            $(this).next().velocity('callout.' + open);
        } else {
            $(this).next().velocity('transition.' + open);
        }

    });

    // add the animation to the modal
    $(".modal").each(function(index) {
        $(this).on('show.bs.modal', function(e) {
            var open = $(this).attr('data-easein');
            if (open == 'shake') {
                $('.modal-dialog').velocity('callout.' + open);
            } else if (open == 'pulse') {
                $('.modal-dialog').velocity('callout.' + open);
            } else if (open == 'tada') {
                $('.modal-dialog').velocity('callout.' + open);
            } else if (open == 'flash') {
                $('.modal-dialog').velocity('callout.' + open);
            } else if (open == 'bounce') {
                $('.modal-dialog').velocity('callout.' + open);
            } else if (open == 'swing') {
                $('.modal-dialog').velocity('callout.' + open);
            } else {
                $('.modal-dialog').velocity('transition.' + open);
            }

        });
    });
</script>
<!--popover style-->


</body>
</html>

