<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="java.util.Random" %>
<%Random a = new Random(); int x = a.nextInt(13)+1;%>
<!-- COVER -->
<section id="slider" class="halfheight m-0" style="background:url('/static/img/bjfu/<%=x%>.jpg') center">


	<div class="display-table">
		<div class="display-table-cell vertical-align-middle">

			<div class="container text-center">

				<h1 class="fw-600 mt-30 mb-3 wow fadeIn" data-wow-delay="0.6s">您确定要删除以下学生吗</h1>
				<br>
				<span class="fw-400 text-white wow fadeInUp fs-18 wow fadeIn" data-wow-delay="0.8s" data-wow-delay="0.8s">你好  <sec:authentication property="name"/></span>
			</div>

		</div>
	</div>

	<span class="raster overlay dark-3 z-index-0"><!-- dark|light overlay [0 to 9 opacity] --></span>
</section>
<!-- /COVER -->

<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/student/delete"
			   modelAttribute="studentForm" class="form-horizontal">
		<fieldset>
			<h1>删除用户</h1>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">学生姓名</form:label>
				<div class="col col-sm-10">${f:h(studentForm.name)}</div>
			</div>
			<div class="divider"><!-- divider --></div>
				<%--<div class="form-group">--%>
				<%--<form:label path="name" class="col col-sm-2 control-label">User Name</form:label>--%>
				<%--<div class="col col-sm-10">${f:h(studentForm.SID)}</div>--%>
				<%--</div>--%>
				<%--<div class="form-group">--%>
				<%--<form:label path="email" class="col col-sm-2 control-label">E-mail</form:label>--%>
				<%--<div class="col col-sm-10">${f:h(studentForm.email)}</div>--%>
				<%--</div>--%>
				<%--<div class="form-group">--%>
				<%--<form:label path="birth" class="col col-sm-2 control-label">User Birth</form:label>--%>
				<%--<div class="col col-sm-10">--%>
				<%--<fmt:formatDate pattern="yyyy-MM-dd" value="${studentForm.birth}" />--%>
				<%--</div>--%>
				<%--</div>--%>
				<%--<div class="form-group">--%>
				<%--<form:label path="password" class="col col-sm-2 control-label">User Password</form:label>--%>
				<%--<div class="col col-sm-10">******</div>--%>
				<%--</div>--%>
				<%--<div class="form-group">--%>
				<%--<form:label path="confirmPassword"--%>
				<%--class="col col-sm-2 control-label">User Password (confirm)</form:label>--%>
				<%--<div class="col col-sm-10">******</div>--%>
				<%--</div>--%>
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">

					<sec:authorize ifAllGranted="ROLE_ADMIN">
						<form:hidden path="sid" value="${f:h(studentForm.sid)}" />
						<%--<form:hidden path="version" value="${f:h(user.version)}" />--%>
						<input type="submit" class="btn btn-danger" name="delete"
							   value="删除" /> <input type="submit" class="btn btn-outline-secondary"
													name="redirectToList" value="返回列表" />
					</sec:authorize>

				</div>
			</div>
		</fieldset>
	</form:form>
</div>
