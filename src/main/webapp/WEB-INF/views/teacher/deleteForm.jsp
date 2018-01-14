<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/teacher/delete"
			   modelAttribute="teacherForm" class="form-horizontal">
		<fieldset>
			<legend>删除教师用户</legend>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">用户名</form:label>
				<div class="col col-sm-10">${f:h(teacherForm.name)}</div>
			</div>
			<div class="form-group">
				<form:label path="tid" class="col col-sm-2 control-label">教师工号</form:label>
				<div class="col col-sm-10">${f:h(teacherForm.tid)}</div>
			</div>

			<div class="form-group">
				<form:label path="profession" class="col col-sm-2 control-label">职称</form:label>
				<div class="col col-sm-10">${f:h(teacherForm.profession)}</div>
			</div>
			<div class="form-group">
				<form:label path="mid" class="col col-sm-2 control-label">专业号</form:label>
				<div class="col col-sm-10">
						${teacherForm.mid}
				</div>
			</div>
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
						<form:hidden path="tid" value="${f:h(teacherForm.tid)}" />
						<%--<form:hidden path="version" value="${f:h(user.version)}" />--%>
						<input type="submit" class="btn btn-danger" name="delete"
							   value="删除" /> <input type="submit" class="btn btn-default"
													name="redirectToList" value="返回列表" />
					</sec:authorize>

				</div>
			</div>
		</fieldset>
	</form:form>
</div>
