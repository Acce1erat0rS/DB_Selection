<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="java.util.Random" %>
<%Random a = new Random(); int x = a.nextInt(13)+1;%>
<!-- COVER -->
<section id="slider" class="halfheight m-0" style="background:url('/static/img/bjfu/<%=x%>.jpg') center">


	<div class="display-table">
		<div class="display-table-cell vertical-align-middle">

			<div class="container text-center">

				<h1 class="fw-600 mt-30 mb-3 wow fadeIn" data-wow-delay="0.6s">创建课题确认</h1>
				<br>
				<span class="fw-400 text-white wow fadeInUp fs-18 wow fadeIn" data-wow-delay="0.8s" data-wow-delay="0.8s">你好  <sec:authentication property="name"/></span>
			</div>

		</div>
	</div>

	<span class="raster overlay dark-3 z-index-0"><!-- dark|light overlay [0 to 9 opacity] --></span>
</section>
<!-- /COVER -->
<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/project/create"
		modelAttribute="projectForm" class="form-horizontal">
		<fieldset>
			<h1>创建课题确认</h1>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">课题内容</form:label>
				<div class="col col-sm-10">
					${f:h(projectForm.name)}
					<form:hidden path="name" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<form:label path="description" class="col col-sm-2 control-label">课题描述</form:label>
				<div class="col col-sm-10">
					${f:h(projectForm.description)}
					<form:hidden path="description" />
					<form:errors path="description" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<form:label path="type" class="col col-sm-2 control-label">课题类型</form:label>
				<div class="col col-sm-10">
						${f:h(projectForm.type)}
					<form:hidden path="type" />
					<form:errors path="type" cssClass="text-danger" />
				</div>
			</div>
			<div class="divider"></div>
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<input type="submit" class="btn btn-outline-primary" name="create" value="确认提交" />
					<input type="submit" class="btn btn-outline-danger" name="redo" value="修改课题" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
