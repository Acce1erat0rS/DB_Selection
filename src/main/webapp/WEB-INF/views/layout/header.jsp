<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%--<div class="navbar navbar-inverse navbar-fixed-top">--%>
	<%--<div class="container">--%>
		<%--<div class="navbar-header">--%>
			<%--<button type="button" class="navbar-toggle" data-toggle="collapse"--%>
					<%--data-target=".navbar-collapse">--%>
				<%--<span class="icon-bar"></span> <span class="icon-bar"></span> <span--%>
					<%--class="icon-bar"></span>--%>
			<%--</button>--%>
			<%--<a class="navbar-brand" href="/login.jsp">北京林业大学毕业设计选题系统</a>--%>
		<%--</div>--%>
		<%--<div class="collapse navbar-collapse" >--%>
			<%--<ul class="nav navbar-nav">--%>
				<%--<sec:authorize ifAllGranted="ROLE_ADMIN">--%>
					<%--<li><a href="/student/list">学生用户管理</a></li>--%>
					<%--<li><a href="/teacher/list">教师用户管理</a></li>--%>
					<%--<li><a href="/project/list">学生选题结果查看</a></li>--%>
				<%--</sec:authorize>--%>

				<%--<sec:authorize ifAllGranted="ROLE_TEA">--%>
					<%--<li><a href="/project/list">题目查看</a></li>--%>
					<%--<li><a href="/project/mylist">我的题目</a></li>--%>
					<%--<li><a href="/file/list">我的文件</a></li>--%>
				<%--</sec:authorize>--%>

				<%--<sec:authorize ifAllGranted="ROLE_STU">--%>
					<%--<li><a href="/project/slist">查看选题</a></li>--%>
					<%--<li><a href="/project/smylist">我的题目</a></li>					<li class="dropdown">--%>
						<%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
							<%--学习资源<b class="caret"></b>--%>
						<%--</a>--%>
						<%--<ul class="dropdown-menu">--%>
							<%--<li><a href="/homework/list">选题中心</a></li>--%>

								<%--&lt;%&ndash;这里需要一个静态页面&ndash;%&gt;--%>
							<%--<li><a href="#">毕设课题说明</a></li>--%>
							<%--<li class="divider"></li>--%>
							<%--<li><a href="/ex/home">作业与习题</a></li>--%>
						<%--</ul>--%>
					<%--</li>--%>
				<%--</sec:authorize>--%>
			<%--</ul>--%>

			<%--<ul class="nav navbar-nav pull-right">--%>
				<%--<li class="dropdown">--%>
					<%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
						<%--<sec:authentication property="name"/>你好~ <b class="caret"></b>--%>
					<%--</a>--%>
					<%--<ul class="dropdown-menu">--%>
						<%--<sec:authorize ifAllGranted="ROLE_ADMIN">--%>
						<%--</sec:authorize>--%>
						<%--<sec:authorize ifAllGranted="ROLE_STU">--%>
							<%--&lt;%&ndash;指向学生个人信息管理&ndash;%&gt;--%>
							<%--<li><a href="#">学生信息管理</a></li>--%>
						<%--</sec:authorize>--%>
						<%--<sec:authorize ifAllGranted="ROLE_TEA">--%>
							<%--&lt;%&ndash;指向教师个人信息管理&ndash;%&gt;--%>
							<%--<li><a href="#">教师信息管理</a></li>--%>
						<%--</sec:authorize>--%>
						<%--<li><a href="#">查看信箱</a></li>--%>
						<%--<li class="divider"></li>--%>
						<%--<li><a href="/logout">登出</a></li>--%>
					<%--</ul>--%>
				<%--</li>--%>
			<%--</ul>--%>
		<%--</div>--%>
		<%--<!--/.nav-collapse -->--%>
	<%--</div>--%>
<%--</div>--%>
<!-- SIDE MENU -->
<div id="mainMenu" class="navbar-toggleable-md sidebar-vertical sidebar-dark">

	<div class="sidebar-nav">
		<div class="navbar navbar-default" role="navigation">


					<a href="/info/welcome" class="logo text-center mb-0 mt-0 pt-15 pb-15 w-100p">
						<!-- .logo-xs-half = resize logo on mobile (remove if logo is already small) -->
						<img class="logo-xs-half" src="/static/img/bjfu_logo.png" alt="">
					</a>

					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>

			<div class="navbar-collapse sidebar-navbar-collapse collapse w-100p" aria-expanded="false">

				<!-- MENU -->
				<ul class="nav navbar-nav">
					<sec:authorize ifAllGranted="ROLE_ADMIN">
					<li><a style="font-size: 16px" href="/student/list">学生用户管理</a></li>
					<li><a style="font-size: 16px" href="/teacher/list">教师用户管理</a></li>
					<li><a style="font-size: 16px" href="/project/list">学生选题结果查看</a></li>
					<li><a style="font-size: 16px" href="/info/instruction">毕设课题说明</a></li>
					<li><a style="font-size: 16px" href="/j_spring_security_logout">登出</a></li>

					</sec:authorize>

					<sec:authorize ifAllGranted="ROLE_TEA">
					<li><a style="font-size: 16px" href="/project/list">题目查看</a></li>
					<li><a style="font-size: 16px" href="/project/mylist">我的题目</a></li>
						<li><a style="font-size: 16px" href="/info/instruction">毕设课题说明</a></li>
						<li><a style="font-size: 16px" href="/j_spring_security_logout">登出</a></li>

					</sec:authorize>

					<sec:authorize ifAllGranted="ROLE_STU">
						<li><a style="font-size: 16px" href="/info/instruction">毕设课题说明</a></li>
						<li><a style="font-size: 16px" href="/project/slist">查看选题</a></li>
						<li><a style="font-size: 16px" href="/project/smylist">我的题目</a></li>
						<li><a style="font-size: 16px" href="/project/list">选题中心</a></li>
						<li><a style="font-size: 16px" href="/j_spring_security_logout">登出</a></li>

					</sec:authorize>
				</ul>
				<!-- /MENU -->

			</div><!--/.nav-collapse -->

		</div>
	</div>


	<!-- Social Icons -->
	<div class="social-icons hidden-sm-down text-center">
		<a href="#" class="social-icon social-icon-sm social-icon-light social-facebook" data-toggle="tooltip" data-placement="top" title="Facebook">
			<i class="icon-facebook"></i>
			<i class="icon-facebook"></i>
		</a>
		<a href="#" class="social-icon social-icon-sm social-icon-light social-twitter" data-toggle="tooltip" data-placement="top" title="Twitter">
			<i class="icon-twitter"></i>
			<i class="icon-twitter"></i>
		</a>
		<a href="#" class="social-icon social-icon-sm social-icon-light social-pinterest" data-toggle="tooltip" data-placement="top" title="Pinterest">
			<i class="icon-pinterest"></i>
			<i class="icon-pinterest"></i>
		</a>
		<a href="#" class="social-icon social-icon-sm social-icon-light social-linkedin" data-toggle="tooltip" data-placement="top" title="Linkedin">
			<i class="icon-linkedin"></i>
			<i class="icon-linkedin"></i>
		</a>
		<a href="#" class="social-icon social-icon-sm social-icon-light social-gplus" data-toggle="tooltip" data-placement="top" title="Google Plus">
			<i class="icon-gplus"></i>
			<i class="icon-gplus"></i>
		</a>
	</div>
	<!-- /Social Icons -->


	<!-- Paragraph -->
	<%--<p class="text-center hidden-sm-down">--%>
		<div class="text-center hidden-sm-down" style="position:absolute;bottom: 10px;width: 100%">
		liutianyu@bjfu.edu.cn <br />
		(+86) 186-1131-2737
		</div>

	<%--</p>--%>
	<!-- /Paragraph -->

</div>
<!-- /SIDE MENU -->
