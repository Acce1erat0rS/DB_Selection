<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- COVER -->
<section id="slider" class="halfheight m-0" style="background:url('/static/img/bjfu/4.jpg') center">


	<div class="display-table">
		<div class="display-table-cell vertical-align-middle">

			<div class="container text-center">

				<h1 class="fw-600 mt-30 mb-3 wow fadeIn" data-wow-delay="0.6s">创建学生确认</h1>
				<br>
				<span class="fw-400 text-white wow fadeInUp fs-18 wow fadeIn" data-wow-delay="0.8s" data-wow-delay="0.8s">你好  <sec:authentication property="name"/></span>
			</div>

		</div>
	</div>




	<span class="raster overlay dark-3 z-index-0"><!-- dark|light overlay [0 to 9 opacity] --></span>


</section>
<!-- /COVER -->

<div class="col-sm-12">



	<form:form action="${pageContext.request.contextPath}/student/create"
			   modelAttribute="studentForm" class="form-horizontal">
		<fieldset>
			<div class="form-group">
				<form:label path="sid" class="col col-sm-2 control-label">学号</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.sid)}
					<form:hidden path="sid" class="form-control" />
					<form:errors path="sid" cssClass="text-danger" />
				</div>
			</div>
			<%--<div class="form-group">--%>
				<%--<form:label path="pid" class="col col-sm-2 control-label">Pid</form:label>--%>
				<%--<div class="col col-sm-10">--%>
						<%--${f:h(studentForm.pid)}--%>
					<%--<form:hidden path="pid" class="form-control" />--%>
					<%--<form:errors path="pid" cssClass="text-danger" />--%>
				<%--</div>--%>
			<%--</div>--%>
			<div class="form-group">
				<form:label path="mid" class="col col-sm-2 control-label">专业序号</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.mid)}
					<form:hidden path="mid" class="form-control" />
					<form:errors path="mid" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">姓名</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.name)}
					<form:hidden path="name" class="form-control" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="email" class="col col-sm-2 control-label">电子邮件</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.email)}
					<form:hidden path="email" class="form-control" />
					<form:errors path="email" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="year" class="col col-sm-2 control-label">届别</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.year)}
					<form:hidden path="year" class="form-control" />
					<form:errors path="year" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="age" class="col col-sm-2 control-label">年龄</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.age)}
					<form:hidden path="age" class="form-control" />
					<form:errors path="age" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="tel" class="col col-sm-2 control-label">联系方式</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.tel)}
					<form:hidden path="tel" class="form-control" />
					<form:errors path="tel" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="my_class" class="col col-sm-2 control-label">班级</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.my_class)}
					<form:hidden path="my_class" class="form-control" />
					<form:errors path="my_class" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="birthday" class="col col-sm-2 control-label">出生日期</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.birthday)}
					<form:hidden path="birthday" class="form-control" />
					<form:errors path="birthday" cssClass="text-danger" />
				</div>
			</div>
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
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<input type="submit" class="btn btn-primary" name="create"
						   value="创建" /> <input type="submit" class="btn btn-outline-secondary"
													name="redo" value="返回修改" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
