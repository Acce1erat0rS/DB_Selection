<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<%--<!DOCTYPE html>--%>
<%--<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->--%>
<%--<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8"> <![endif]-->--%>
<%--<!--[if IE 8]>    <html class="no-js lt-ie9"> <![endif]-->--%>
<%--<!--[if gt IE 8]><!-->--%>
<%--<html class="no-js">--%>
<%--<!--<![endif]-->--%>
<%--<head>--%>
<%--<meta charset="utf-8" />--%>
<%--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />--%>
<%--<meta name="viewport" content="width=device-width" />--%>
<%--<link rel="stylesheet"--%>
    <%--href="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/css/bootstrap.css" />--%>
<%--<link rel="stylesheet"--%>
    <%--href="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/css/bootstrap-theme.css" />--%>
<%--&lt;%&ndash;<style type="text/css">&ndash;%&gt;--%>
<%--&lt;%&ndash;body {&ndash;%&gt;--%>
    <%--&lt;%&ndash;padding-top: 60px;&ndash;%&gt;--%>
    <%--&lt;%&ndash;/* 60px to make the container go all the way to the bottom of the topbar */&ndash;%&gt;--%>
<%--&lt;%&ndash;}&ndash;%&gt;--%>
<%--&lt;%&ndash;.my-inline.form-inline input[type="text"],&ndash;%&gt;--%>
<%--&lt;%&ndash;.my-inline.form-inline input[type="password"] {&ndash;%&gt;--%>
  <%--&lt;%&ndash;width: 240px;&ndash;%&gt;--%>
<%--&lt;%&ndash;}&ndash;%&gt;--%>
<%--&lt;%&ndash;.my-horizontal.form-horizontal input[type="text"],&ndash;%&gt;--%>
<%--&lt;%&ndash;.my-horizontal.form-horizontal input[type="password"] {&ndash;%&gt;--%>
  <%--&lt;%&ndash;width: 360px;&ndash;%&gt;--%>
<%--&lt;%&ndash;}&ndash;%&gt;--%>
<%--&lt;%&ndash;</style>&ndash;%&gt;--%>
<%--<script type="text/javascript"--%>
    <%--src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>--%>
<%--<script type="text/javascript"--%>
    <%--src="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>--%>
<%--<script type="text/javascript">--%>
    <%----%>
<%--</script>--%>
<%--<c:set var="titleKey">--%>
    <%--<tiles:insertAttribute name="title" ignore="true" />--%>
<%--</c:set>--%>
<%--<title><spring:message code="${titleKey}" text="毕业设计选课系统" /></title>--%>
<%--<tiles:insertAttribute name="header" />--%>
<%--</head>--%>
<%--<body>--%>
    <%--<div class="container">--%>
        <%--<tiles:insertAttribute name="header" />--%>
        <%--<tiles:insertAttribute name="body" />--%>
        <%--<hr>--%>
        <%--<div class="row">--%>
            <%--<div class="col-lg-12">--%>
                <%--<p style="text-align: center; background: #e5eCf9;">Copyright--%>
                    <%--&copy; 2017 Enterprise co. Ltd.  All Right Reserved <br>--%>
                    <%--ICP: <<a href="www.miitbeian.gov.cn">京ICP备17059571号</a>>--%>
                <%--</p>--%>
            <%--</div>--%>

        <%--</div>--%>
    <%--</div>--%>
<%--</body>--%>
<%--</html>--%>




























<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>北京林业大学毕业设计选课系统</title>
    <meta name="description" content="" />
    <meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

    <!-- mobile settings -->
    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

    <!-- WEB FONTS : use %7C instead of | (pipe) -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet" type="text/css" />

    <!-- CORE CSS -->
    <link href="/static/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <!-- SWIPER SLIDER -->
    <link href="/static/assets/plugins/slider.swiper/dist/css/swiper.min.css" rel="stylesheet" type="text/css" />

    <!-- THEME CSS -->
    <link href="/static/assets/css/essentials.css" rel="stylesheet" type="text/css" />
    <link href="/static/assets/css/layout.css" rel="stylesheet" type="text/css" />

    <!-- PAGE LEVEL SCRIPTS -->
    <link href="/static/assets/css/header-1.css" rel="stylesheet" type="text/css" />
    <link href="/static/assets/css/color_scheme/brown.css" rel="stylesheet" type="text/css" id="color_scheme" />
    <link href="//assets/css/pack-caffe.css" rel="stylesheet" type="text/css" />
    <link href="/static/assets/css/custom-forms-v2.css" rel="stylesheet" type="text/css" />


    <script type="text/javascript">
        window.onload = function() {
            var show = document.getElementById("show");
            setInterval(function() {
                var time = new Date();
                // 程序计时的月从0开始取值后+1
                var m = time.getMonth() + 1;
                var t = time.getFullYear() + "年" + m + "月"
                    + time.getDate() + "日" +" "+ time.getHours() + "时"
                    + time.getMinutes() + "分" + time.getSeconds()+"秒";
                show.innerHTML = t;
            }, 1000);
        };
    </script>

    <c:set var="titleKey">
        <tiles:insertAttribute name="title" ignore="true" />
    </c:set>
    <title><spring:message code="${titleKey}" text="毕业设计选课系统" /></title>
    <%--<tiles:insertAttribute name="header" />--%>


</head>

<!--
    AVAILABLE BODY CLASSES:

    smoothscroll 			= create a browser smooth scroll
    enable-animation		= enable WOW animations

    bg-grey					= grey background
    grain-grey				= grey grain background
    grain-blue				= blue grain background
    grain-green				= green grain background
    grain-blue				= blue grain background
    grain-orange			= orange grain background
    grain-yellow			= yellow grain background

    boxed 					= boxed layout
    pattern1 ... patern11	= pattern background
    menu-vertical-hide		= hidden, open on click

    BACKGROUND IMAGE [together with .boxed class]
    data-background="static/assets/images/_smarty/boxed_background/1.jpg"


    VERTICAL MENU ONLY
    menu-vertical			= vertical menu
    menu-vertical			= vertical menu
    menu-inverse			= right side menu
    menu-vertical-hide		= hidden, open on click

    BACKGROUND IMAGE [together with .boxed class]
    data-background="static/assets/images/_smarty/boxed_background/1.jpg"
-->
<body class="smoothscroll enable-animation menu-vertical" >

<!-- wrapper -->
<div id="wrapper">

    <%--<!-- SIDE MENU -->--%>
    <%--<div id="mainMenu" class="navbar-toggleable-md sidebar-vertical sidebar-dark">--%>

        <%--<div class="sidebar-nav">--%>
            <%--<div class="navbar navbar-default" role="navigation">--%>


                <%--<a href="pack-caffe-home-1.html" class="logo text-center mb-0 mt-0 pt-15 pb-15 w-100p">--%>
                    <%--<!-- .logo-xs-half = resize logo on mobile (remove if logo is already small) -->--%>
                    <%--<img class="logo-xs-half" src="demo_files/images/packs/caffe/logo_light.png" alt="">--%>
                <%--</a>--%>

                <%--<div class="navbar-header">--%>
                    <%--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">--%>
                        <%--<span class="sr-only">Toggle navigation</span>--%>
                        <%--<span class="icon-bar"></span>--%>
                        <%--<span class="icon-bar"></span>--%>
                        <%--<span class="icon-bar"></span>--%>
                    <%--</button>--%>
                <%--</div>--%>

                <%--<div class="navbar-collapse sidebar-navbar-collapse collapse w-100p" aria-expanded="false">--%>

                    <%--<!-- MENU -->--%>
                    <%--<ul class="nav navbar-nav">--%>
                        <%--<li class="active">--%>
                            <%--<a href="pack-caffe-home-1.html">--%>
                                <%--Home--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="pack-caffe-about.html">--%>
                                <%--About Us--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="pack-caffe-food-and-drink.html">--%>
                                <%--Food &amp; Drink--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="pack-caffe-story.html">--%>
                                <%--Our Story--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="pack-caffe-locations.html">--%>
                                <%--Locations--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="pack-caffe-contact.html">--%>
                                <%--Contact--%>
                            <%--</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                    <%--<!-- /MENU -->--%>

                <%--</div><!--/.nav-collapse -->--%>

            <%--</div>--%>
        <%--</div>--%>


        <%--<!-- Social Icons -->--%>
        <%--<div class="social-icons hidden-sm-down text-center">--%>
            <%--<a href="#" class="social-icon social-icon-sm social-icon-light social-facebook" data-toggle="tooltip" data-placement="top" title="Facebook">--%>
                <%--<i class="icon-facebook"></i>--%>
                <%--<i class="icon-facebook"></i>--%>
            <%--</a>--%>
            <%--<a href="#" class="social-icon social-icon-sm social-icon-light social-twitter" data-toggle="tooltip" data-placement="top" title="Twitter">--%>
                <%--<i class="icon-twitter"></i>--%>
                <%--<i class="icon-twitter"></i>--%>
            <%--</a>--%>
            <%--<a href="#" class="social-icon social-icon-sm social-icon-light social-pinterest" data-toggle="tooltip" data-placement="top" title="Pinterest">--%>
                <%--<i class="icon-pinterest"></i>--%>
                <%--<i class="icon-pinterest"></i>--%>
            <%--</a>--%>
            <%--<a href="#" class="social-icon social-icon-sm social-icon-light social-linkedin" data-toggle="tooltip" data-placement="top" title="Linkedin">--%>
                <%--<i class="icon-linkedin"></i>--%>
                <%--<i class="icon-linkedin"></i>--%>
            <%--</a>--%>
            <%--<a href="#" class="social-icon social-icon-sm social-icon-light social-gplus" data-toggle="tooltip" data-placement="top" title="Google Plus">--%>
                <%--<i class="icon-gplus"></i>--%>
                <%--<i class="icon-gplus"></i>--%>
            <%--</a>--%>
        <%--</div>--%>
        <%--<!-- /Social Icons -->--%>


        <%--<!-- Paragraph -->--%>
        <%--<p class="text-center hidden-sm-down">--%>
            <%--office@yourdomain.com <br />--%>
            <%--(+800) 123 456 78--%>
        <%--</p>--%>
        <%--<!-- /Paragraph -->--%>

    <%--</div>--%>
    <%--<!-- /SIDE MENU -->--%>


    <tiles:insertAttribute name="header" />
    <tiles:insertAttribute name="body" />






</div>
<!-- /wrapper -->


<!-- SCROLL TO TOP -->
<a href="#" id="toTop"></a>


<!-- PRELOADER -->
<div id="preloader">
    <div class="inner">
        <span class="loader"></span>
    </div>
</div><!-- /PRELOADER -->


<!-- JAVASCRIPT FILES -->
<script type="text/javascript">var plugin_path = '/static/assets/plugins/';</script>
<script type="text/javascript" src="/static/assets/plugins/jquery/jquery-3.2.1.min.js"></script>

<script type="text/javascript" src="/static/assets/js/scripts.js"></script>


<!-- SWIPER SLIDER -->
<script type="text/javascript" src="/static/assets/plugins/slider.swiper/dist/js/swiper.min.js"></script>
<script type="text/javascript" src="/static/assets/js/view/demo.swiper_slider.js"></script>
</body>
</html>
