<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="java.util.Random" %>
<%Random a = new Random(); int x = a.nextInt(13)+1;%>
<!-- COVER -->
<section id="slider" class="halfheight m-0" style="background:url('/static/img/bjfu/<%=x%>.jpg') center">


	<div class="display-table">
		<div class="display-table-cell vertical-align-middle">

			<div class="container text-center">

				<h1 class="fw-600 mt-30 mb-3 wow fadeIn" data-wow-delay="0.6s">确认更新信息</h1>
				<br>
				<span class="fw-400 text-white wow fadeInUp fs-18 wow fadeIn" data-wow-delay="0.8s" data-wow-delay="0.8s">你好  <sec:authentication property="name"/></span>
			</div>

		</div>
	</div>

	<span class="raster overlay dark-3 z-index-0"><!-- dark|light overlay [0 to 9 opacity] --></span>
</section>
<!-- /COVER -->

<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/teacher/update"
		modelAttribute="teacherForm" class="form-horizontal">
		<fieldset>
			<br>
			<h1>确认更新信息</h1>
			<div class="form-group">
				<form:label path="tid" class="col col-sm-2 control-label">教师工号</form:label>
				<div class="col col-sm-10">
					${f:h(teacherForm.tid)}
					<%--<form:input path="tid" type="hidden" />--%>
					<form:errors path="tid" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">用户姓名</form:label>
				<div class="col col-sm-10">
					${f:h(teacherForm.name)}
					<form:hidden path="name" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="email" class="col col-sm-2 control-label">邮箱</form:label>
				<div class="col col-sm-10">
					${f:h(teacherForm.email)}
					<form:hidden path="email"/>
					<form:errors path="email" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="profession" class="col col-sm-2 control-label">职称</form:label>
				<div class="col col-sm-10">
						${f:h(teacherForm.profession)}
					<form:hidden path="profession"  />
					<form:errors path="profession" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="tel" class="col col-sm-2 control-label">电话</form:label>
				<div class="col col-sm-10">
						${f:h(teacherForm.tel)}
					<form:hidden path="tel"  />
					<form:errors path="tel" cssClass="text-danger" />
				</div>
			</div>
			<%--<div class="form-group">--%>
				<%--<form:label path="birth" class="col col-sm-2 control-label">User Birth</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--<fmt:formatDate pattern="yyyy-MM-dd" value="${teacherForm.birth}" />--%>
					<%--<form:hidden path="birth" />--%>
					<%--<form:errors path="birth" cssClass="text-danger" />--%>
					<%--(* yyyy-MM-dd)--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="form-group">--%>
				<%--<form:label path="password" class="col col-sm-2 control-label">User Password</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--******--%>
					<%--<form:hidden path="password" />--%>
					<%--<form:errors path="password" cssClass="text-danger" />--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="form-group">--%>
				<%--<form:label path="confirmPassword"--%>
					<%--class="col col-sm-2 control-label">User Password (confirm)</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--******--%>
					<%--<form:hidden path="confirmPassword" />--%>
					<%--<form:errors path="confirmPassword" cssClass="text-danger" />--%>
				<%--</div>--%>
			<%--</div>--%>
			<div class="divider"></div>

			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
        <form:hidden path="tid" value="${f:h(teacherForm.tid)}"/>
        <%--<form:hidden path="version" />--%>
        <input type="submit" class="btn btn-primary" name="update"
          value="更新确认" /> <input type="submit" class="btn btn-outline-secondary"
          name="redo" value="返回列表" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
