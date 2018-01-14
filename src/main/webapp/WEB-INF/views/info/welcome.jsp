<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<section id="slider" class="fullheight">

    <!--
        SWIPPER SLIDER PARAMS

        data-effect="slide|fade|coverflow"
        data-autoplay="2500|false" 						(remove to disable autoplay)
    -->
    <div class="swiper-container" data-effect="slide" data-autoplay="false">
        <div class="swiper-wrapper">

            <!-- SLIDE 1 -->
            <div class="swiper-slide" style="background-image: url('/static/img/bjfu/7.jpg');">
                <div class="overlay dark-1"><!-- dark overlay [1 to 9 opacity] --></div>

                <div class="display-table">
                    <div class="display-table-cell vertical-align-middle">
                        <div class="container">

                            <div class="slider-featured-text absolute bottom-center text-right">
                                <h1
                            class="text-white wow fadeInUp" data-wow-delay="0.4s">
                            <em>你好，</em>
                            <em class="fw-300 text-white"> <sec:authentication property="name"/></em>

                            </h1>
                            <h2 id="show" class="fw-300 text-white wow fadeInUp fs-18" data-wow-delay="0.8s"></h2>


                        </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /SLIDE 1 -->


            <!-- SLIDE 2 -->
            <div class="swiper-slide" style="background-image: url('/static/img/bjfu/11.jpg');">
                <div class="overlay dark-1"><!-- dark overlay [1 to 9 opacity] --></div>

                <div class="display-table">
                    <div class="display-table-cell vertical-align-middle">
                        <div class="container">

                            <div class="slider-featured-text absolute bottom-center text-right">
                                <h1 class="text-white wow fadeInUp" data-wow-delay="0.4s">
                                    <em>Smarty</em>
                                    <em class="fw-300 text-white">Breakfast</em>
                                </h1>

                                <h2 class="fw-300 text-white wow fadeInUp fs-18" data-wow-delay="0.8s">ORIGINAL &bull; AUTHENTIC &bull; 2017</h2>
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