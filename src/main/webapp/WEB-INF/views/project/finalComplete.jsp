<%--<div class="row">--%>
    <%--<div class="col-sm-12">--%>
        <%--<p class="alert alert-success">--%>
            <%--选择学生成功<br> <a--%>
                <%--href="${pageContext.request.contextPath}/project/mylist" class="btn btn-default">Back--%>
            <%--to List</a>--%>
        <%--</p>--%>
    <%--</div>--%>
<%--</div>--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--<div class="row">--%>
<%--<div class="col-sm-12">--%>
<%--<p class="alert alert-success">--%>
<%--Created Successfully!<br> <a--%>
<%--href="${pageContext.request.contextPath}/student/list" class="btn btn-default">Back--%>
<%--to List</a>--%>
<%--</p>--%>
<%--</div>--%>
<%--</div>--%>
<section id="slider" class="halfheight m-0" style="background:url('/static/img/bjfu/4.jpg') center">


    <div class="display-table">
        <div class="display-table-cell vertical-align-middle">

            <div class="container text-center">

                <h1 class="fw-600 mt-30 mb-3 wow fadeIn" data-wow-delay="0.6s">选择学生</h1>
                <br>
                <span class="fw-400 text-white wow fadeInUp fs-18 wow fadeIn" data-wow-delay="0.8s" data-wow-delay="0.8s">你好 ·  <sec:authentication property="name"/></span>
            </div>

        </div>
    </div>




    <span class="raster overlay dark-3 z-index-0"><!-- dark|light overlay [0 to 9 opacity] --></span>


</section>

<section class="padding-xlg">
    <div class="container">

        <h2>选择学生 <strong>成功</strong></h2>
        <a class="size-20 font-lato" href="/project/mylist"><i class="glyphicon glyphicon-menu-left margin-right-10 size-16"></i> 返回列表</a>

    </div>
</section>



