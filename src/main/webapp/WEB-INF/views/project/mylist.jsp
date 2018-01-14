<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!-- COVER -->
<section id="slider" class="halfheight m-0" style="background:url('/static/img/bjfu/4.jpg') center">


	<div class="display-table">
		<div class="display-table-cell vertical-align-middle">

			<div class="container text-center">

				<h1 class="fw-600 mt-30 mb-3 wow fadeIn" data-wow-delay="0.6s">我的课题</h1>
				<br>
				<span class="fw-400 text-white wow fadeInUp fs-18 wow fadeIn" data-wow-delay="0.8s" data-wow-delay="0.8s">你好  <sec:authentication property="name"/></span>
			</div>

		</div>
	</div>




	<span class="raster overlay dark-3 z-index-0"><!-- dark|light overlay [0 to 9 opacity] --></span>


</section>
<!-- /COVER -->

${request}
<br><br><div class="col-sm-12">
	<c:if test="${not empty errorMessage}">
		<div class="alert alert-error">${f:h(errorMessage)}</div>
	</c:if>



	<div class="inline-search clearfix mb-60">
		<%--<form class="widget_search" action="" method="get">--%>
		<%--<input name="s" class="serch-input" id="s" type="search" placeholder="Search Forum...">--%>
		<%--<button type="submit">--%>
		<%--<i class="fa fa-search"></i>--%>
		<%--</button>--%>
		<%--</form>--%>

			<form:form action="${pageContext.request.contextPath}/project/search"
					   method="get" modelAttribute="projectSearchForm"
					   class="form-inline my-inline">
			<form:input path="name" class="serch-input" placeholder="请输入问题关键词"/>
			<%--<input type="submit" value="搜索学生" class="btn btn-outline-default" />--%>
			<button type="submit">
				<i class="fa fa-search"></i>
			</button>
		</form:form>
	</div>

	<div class="well">
		<a href="${pageContext.request.contextPath}/project/create?form"
		   class="btn btn-outline-warning btn-lg btn-block" >创建课题</a><br> <br>
	</div>


	<table class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>课题编号</th>
				<th>课题名称</th>
				<th>已选人数</th>
				<th>创建时间</th>
				<th>可做操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="project" items="${page.content}">
				<tr>
					<td># ${f:h(project.pid)}</td>
					<td>${f:h(project.name)}</td>
					<td>${f:h(project.chosennum)}</td>
					<td>${f:h(project.createdAt)}</td>
					<td><form:form
						action="${pageContext.request.contextPath}/project"
						class="form-inline">

						<input type="hidden" name="pid" value="${f:h(project.pid)}" />
						<input type="submit" class="btn btn-outline-primary" name="show" value = "查看详情"/>
						<input type="submit" class="btn btn-outline-info"
							   name="redirectToUpdate" value="更新课题" />
						<input type="submit" class="btn btn-outline-secondary"
							   name="redirectToTeacherChose" value="查看学生" />
						<input type="submit" class="btn btn-outline-danger"
								name="redirectToDelete" value="删除课题" />

					</form:form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>
