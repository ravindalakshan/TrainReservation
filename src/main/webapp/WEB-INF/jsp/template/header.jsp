<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>TRAIN SEAT BOOKING</title>

    <!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <!-- Gijgo -->
    <link href="${pageContext.request.contextPath}/css/gijgo.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/gijgo.js"></script>

    <!-- FontAwesome -->
    <link href="${pageContext.request.contextPath}/fontawesome/web-fonts-with-css/css/fontawesome-all.css" rel="stylesheet" />

    <!-- DataTable -->
    <link href="${pageContext.request.contextPath}/css/datatables.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/js/datatables.js"></script>

    <!-- Sweet alert -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

    <!-- Custom styles -->
    <link href="${pageContext.request.contextPath}/css/scrolling-nav.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/landing.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/reservation.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/mobitel.css" rel="stylesheet">
    <!-- Custom scripts -->
    <script src="${pageContext.request.contextPath}/js/scrolling-nav.js"></script>

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

<body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top nav-ble" id="mainNav">

        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="index.html">
                <!-- Logo-->
                <img src="images/logo.png" class="img-responsive logo" height="54" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="index.html">Home</a>
                    </li>
                    <!-- <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#gallery">Gallery</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#about">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#contact">Contact Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#faq">FAQ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#tnc">Terms & Conditions</a>
                    </li> -->
                </ul>
            </div>
        </div>
    </nav>
