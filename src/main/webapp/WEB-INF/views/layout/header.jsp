<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/login.jsp">北京林业大学毕业设计选题系统</a>
		</div>
		<div class="collapse navbar-collapse" >
			<ul class="nav navbar-nav">
				<sec:authorize ifAllGranted="ROLE_ADMIN">
					<li><a href="/user/list">学生用户管理</a></li>
					<li><a href="/user/list">教师用户管理</a></li>
					<li><a href="/user/list">学生选题结果查看</a></li>
				</sec:authorize>

				<sec:authorize ifAllGranted="ROLE_TEA">
					<li><a href="/user/list">题目查看</a></li>
					<li><a href="/user/list">我的题目</a></li>
					<li><a href="/user/list">我的文件</a></li>
				</sec:authorize>

				<sec:authorize ifAllGranted="ROLE_STU">
					<li><a href="/user/list">查看选题</a></li>
					<li><a href="/user/list">我的题目</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							学习资源<b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="/homework/list">选题中心</a></li>

								<%--这里需要一个静态页面--%>
							<li><a href="#">毕设课题说明</a></li>
							<li class="divider"></li>
							<li><a href="/ex/home">作业与习题</a></li>
						</ul>
					</li>
				</sec:authorize>
			</ul>

			<ul class="nav navbar-nav pull-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<sec:authentication property="name"/>你好~ <b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<sec:authorize ifAllGranted="ROLE_ADMIN">
						</sec:authorize>
						<sec:authorize ifAllGranted="ROLE_STU">
							<%--指向学生个人信息管理--%>
							<li><a href="#">个人信息管理</a></li>
						</sec:authorize>
						<sec:authorize ifAllGranted="ROLE_TEA">
							<%--指向教师个人信息管理--%>
							<li><a href="#">个人信息管理</a></li>
						</sec:authorize>
						<li><a href="#">查看信箱</a></li>
						<li class="divider"></li>
						<li><a href="/logout">登出</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</div>

