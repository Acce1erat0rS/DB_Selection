<%@ page import="java.util.Random" %><%--<html>--%>
<%--<head>--%>
<%--<meta charset="utf-8" />--%>
<%--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />--%>
<%--<meta name="viewport" content="width=device-width" />--%>
<%--<link rel="stylesheet"--%>
    <%--href="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/css/bootstrap.css" />--%>
<%--<link rel="stylesheet"--%>
    <%--href="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/css/bootstrap-theme.css" />--%>
<%--<style type="text/css">--%>
<%--body {--%>
  <%--padding-top: 60px;--%>
  <%--/* 60px to make the container go all the way to the bottom of the topbar */--%>
<%--}--%>
<%--</style>--%>
<%--<title>SystemError</title>--%>
<%--</head>--%>


<%--<body class="smoothscroll enable-animation">--%>

      <%--<!-- wrapper -->--%>
      <%--<div id="wrapper">--%>
        <%--<section id="slider" class="fullheight">--%>

          <%--<!----%>
              <%--SWIPPER SLIDER PARAMS--%>

              <%--data-effect="slide|fade|coverflow"--%>
              <%--data-autoplay="2500|false" 						(remove to disable autoplay)--%>
          <%---->--%>
          <%--<div class="swiper-container" data-effect="fade" data-autoplay="false">--%>
            <%--<div class="swiper-wrapper">--%>

              <%--<!-- SLIDE 1 -->--%>
              <%--<div class="swiper-slide" style="background-image: url('demo_files/images/1200x800/18-min.jpg');">--%>
                <%--<div class="overlay dark-5"><!-- dark overlay [1 to 9 opacity] --></div>--%>

                <%--<div class="display-table">--%>
                  <%--<div class="display-table-cell vertical-align-middle">--%>
                    <%--<div class="container">--%>

                      <%--<div class="row">--%>
                        <%--<div class="col-md-5 col-xs-12">--%>

                          <%--<h1 class="bold font-raleway wow fadeInUp" data-wow-delay="0.4s">PAGE NOT FOUND</h1>--%>
                          <%--<p class="lead font-lato fw-300 hidden-xs-down wow fadeInUp" data-wow-delay="0.6s">Sorry, The page you requested can not be found!</p>--%>
                          <%--<a class="fs-20 font-lato wow fadeInUp" href="index.html" data-wow-delay="1.9s"><i class="glyphicon glyphicon-menu-left mr-10 fs-16"></i> back to Smarty homepage now!</a>--%>

                        <%--</div>--%>
                      <%--</div>--%>

                    <%--</div>--%>
                  <%--</div>--%>
                <%--</div>--%>

              <%--</div>--%>
              <%--<!-- /SLIDE 1 -->--%>

              <%--<!-- SLIDE 2 -->--%>
              <%--<div class="swiper-slide" style="background-image: url('demo_files/images/1200x800/1-min.jpg');">--%>
                <%--<div class="overlay dark-5"><!-- dark overlay [1 to 9 opacity] --></div>--%>

                <%--<div class="display-table">--%>
                  <%--<div class="display-table-cell vertical-align-middle">--%>
                    <%--<div class="container">--%>

                      <%--<div class="row">--%>
                        <%--<div class="col-md-5 col-xs-12">--%>

                          <%--<h1 class="bold font-raleway wow fadeInUp" data-wow-delay="0.4s">PAGE NOT FOUND</h1>--%>
                          <%--<p class="lead font-lato fw-300 hidden-xs-down wow fadeInUp" data-wow-delay="0.6s">Sorry, The page you requested can not be found!</p>--%>
                          <%--<a class="fs-20 font-lato wow fadeInUp" href="index.html" data-wow-delay="1.9s"><i class="glyphicon glyphicon-menu-left mr-10 fs-16"></i> back to Smarty homepage now!</a>--%>

                        <%--</div>--%>
                      <%--</div>--%>

                    <%--</div>--%>
                  <%--</div>--%>
                <%--</div>--%>

              <%--</div>--%>
              <%--<!-- /SLIDE 2 -->--%>

            <%--</div>--%>

            <%--<!-- Swiper Pagination -->--%>
            <%--<div class="swiper-pagination"></div>--%>

            <%--<!-- Swiper Arrows -->--%>
            <%--<div class="swiper-button-next"><i class="fa fa-angle-right"></i></div>--%>
            <%--<div class="swiper-button-prev"><i class="fa fa-angle-left"></i></div>--%>
          <%--</div>--%>

        <%--</section>--%>
        <%--<!-- /SLIDER -->--%>
      <%--</div>--%>
      <%--<!-- /wrapper -->--%>


      <%--<!-- SCROLL TO TOP -->--%>
      <%--<a href="#" id="toTop"></a>--%>


<%--</body>--%>


<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
  <%--&lt;%&ndash;<div class="container">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<jsp:include page="layout/header.jsp" />&ndash;%&gt;--%>
      <%--&lt;%&ndash;<div class="col-sm-12">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<p class="alert alert-danger">&ndash;%&gt;--%>
          <%--&lt;%&ndash;<c:choose>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:when test="${not empty exceptionCode}">[${f:h(exceptionCode)}]</c:when>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:when test="${not empty param.exceptionCode}">[${f:h(param.exceptionCode)}]</c:when>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:otherwise>未知错误😂</c:otherwise>&ndash;%&gt;--%>
          <%--&lt;%&ndash;</c:choose>&ndash;%&gt;--%>
          <%--&lt;%&ndash;Error...<br /> <a&ndash;%&gt;--%>
            <%--&lt;%&ndash;href="${pageContext.request.contextPath}" class="btn btn-default">Go&ndash;%&gt;--%>
            <%--&lt;%&ndash;to TOP</a>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</p>&ndash;%&gt;--%>
      <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--</html>--%>







<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>System Error</title>
  <meta name="description" content="" />
  <meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

  <!-- mobile settings -->
  <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
  <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

  <!-- WEB FONTS : use %7C instead of | (pipe) -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600%7CRaleway:300,400,500,600,700%7CLato:300,400,400italic,600,700" rel="stylesheet" type="text/css" />

  <!-- CORE CSS -->
  <link href="/static/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

  <!-- SWIPER SLIDER -->
  <link href="/static/assets/plugins/slider.swiper/dist/css/swiper.min.css" rel="stylesheet" type="text/css" />

  <!-- THEME CSS -->
  <link href="/static/assets/css/essentials.css" rel="stylesheet" type="text/css" />
  <link href="/static/assets/css/layout.css" rel="stylesheet" type="text/css" />

  <!-- PAGE LEVEL SCRIPTS -->
  <link href="/static/assets/css/header-1.css" rel="stylesheet" type="text/css" />
  <link href="/static/assets/css/color_scheme/green.css" rel="stylesheet" type="text/css" id="color_scheme" />
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
    data-background="/static/assets/images/_smarty/boxed_background/1.jpg"
-->
<body class="smoothscroll enable-animation">

<!-- wrapper -->
<div id="wrapper">
  <section id="slider" class="fullheight">

    <!--
        SWIPPER SLIDER PARAMS

        data-effect="slide|fade|coverflow"
        data-autoplay="2500|false" 						(remove to disable autoplay)
    -->        <%Random a = new Random(); int x = a.nextInt(13)+1;%>

    <div class="swiper-container" data-effect="fade" data-autoplay="false">
      <div class="swiper-wrapper">

        <!-- SLIDE 1 -->
        <div class="swiper-slide" style="background-image: url('/static/img/bjfu/<%=x%>.jpg');">
          <div class="overlay dark-5"><!-- dark overlay [1 to 9 opacity] --></div>

          <div class="display-table">
            <div class="display-table-cell vertical-align-middle">
              <div class="container">

                <div class="row">
                  <div class="col-md-5 col-xs-12">

                    <h1 class="bold font-raleway wow fadeInUp" data-wow-delay="0.4s">找不到页面</h1>
                    <p class="lead font-lato fw-300 hidden-xs-down wow fadeInUp" data-wow-delay="0.6s">不好意思，我们遇到了些问题。请稍后再来~</p>
                    <a class="fs-20 font-lato wow fadeInUp" href="/info/welcome" data-wow-delay="1.9s"><i class="glyphicon glyphicon-menu-left mr-10 fs-16"></i> 回到主页</a>

                  </div>
                </div>

              </div>
            </div>
          </div>

        </div>
        <!-- /SLIDE 1 -->

        <!-- SLIDE 2 -->
        <div class="swiper-slide" style="background-image: url('/static/img/bjfu/<%=x%>.jpg');">
          <div class="overlay dark-5"><!-- dark overlay [1 to 9 opacity] --></div>

          <div class="display-table">
            <div class="display-table-cell vertical-align-middle">
              <div class="container">

                <div class="row">
                  <div class="col-md-5 col-xs-12">

                    <h1 class="bold font-raleway wow fadeInUp" data-wow-delay="0.4s">找不到页面</h1>
                    <p class="lead font-lato fw-300 hidden-xs-down wow fadeInUp" data-wow-delay="0.6s">不好意思，我们遇到了些问题。请稍后再来~</p>
                    <a class="fs-20 font-lato wow fadeInUp" href="/info/welcome" data-wow-delay="1.9s"><i class="glyphicon glyphicon-menu-left mr-10 fs-16"></i> 回到主页</a>

                  </div>
                </div>

              </div>
            </div>
          </div>

        </div>
        <!-- /SLIDE 2 -->

      </div>

      <!-- Swiper Pagination -->
      <div class="swiper-pagination"></div>

      <!-- Swiper Arrows -->
      <div class="swiper-button-next"><i class="fa fa-angle-right"></i></div>
      <div class="swiper-button-prev"><i class="fa fa-angle-left"></i></div>
    </div>

  </section>
  <!-- /SLIDER -->
</div>
<!-- /wrapper -->


<!-- SCROLL TO TOP -->
<a href="#" id="toTop"></a>




<!-- JAVASCRIPT FILES -->
<script type="text/javascript">var plugin_path = '/static/assets/plugins/';</script>
<script type="text/javascript" src="/static/assets/plugins/jquery/jquery-3.2.1.min.js"></script>

<script type="text/javascript" src="/static/assets/js/scripts.js"></script>

<!-- STYLESWITCHER - REMOVE -->
<script async type="text/javascript" src="demo_files/styleswitcher/styleswitcher.js"></script>


<!-- SWIPER SLIDER -->
<script type="text/javascript" src="/static/assets/plugins/slider.swiper/dist/js/swiper.min.js"></script>
<script type="text/javascript" src="/static/assets/js/view/demo.swiper_slider.js"></script>

</body>
</html>


