<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/login.jsp">北京林业大学数据挖掘课程</a>
		</div>
		<div class="collapse navbar-collapse" >
			<ul class="nav navbar-nav">
				<sec:authorize ifAllGranted="ROLE_ADMIN">
					<li><a href="/user/list">学生管理</a></li>
				</sec:authorize>
				<li><a href="/ppts/list">授课资源</a></li>
				<li><a href="/resources">学习资源</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						学习资源<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="/homework/list">课程作业</a></li>
						<li><a href="/ppts/list">课程讲义</a></li>
						<li class="divider"></li>
						<li><a href="/ex/home">作业与习题</a></li>
					</ul>
				</li>
				<li><a href="/keypoint/list">重难点</a></li>
				<li><a href="/webchat">交流空间</a></li>
			</ul>

					<ul class="nav navbar-nav pull-right">
					<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<sec:authentication property="name"/>你好~ <b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#">信息管理</a></li>
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

