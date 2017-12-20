<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/teacher/update"
		modelAttribute="teacherForm" class="form-horizontal">
		<fieldset>
			<legend>Update User</legend>
			<div class="form-group">
				<form:label path="tid" class="col col-sm-2 control-label">User Id</form:label>
				<div class="col col-sm-10">
					${f:h(teacherForm.tid)}
					<%--<form:input path="tid" type="hidden" />--%>
					<form:errors path="tid" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">User Name</form:label>
				<div class="col col-sm-10">
					${f:h(teacherForm.name)}
					<form:hidden path="name" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="email" class="col col-sm-2 control-label">E-mail</form:label>
				<div class="col col-sm-10">
					${f:h(teacherForm.email)}
					<form:hidden path="email"/>
					<form:errors path="email" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="profession" class="col col-sm-2 control-label">Profession</form:label>
				<div class="col col-sm-10">
						${f:h(teacherForm.profession)}
					<form:input path="profession"  />
					<form:errors path="profession" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="tel" class="col col-sm-2 control-label">Telephone</form:label>
				<div class="col col-sm-10">
						${f:h(teacherForm.tel)}
					<form:input path="tel"  />
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
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
        <form:hidden path="tid" value="${f:h(teacherForm.tid)}"/>
        <%--<form:hidden path="version" />--%>
        <input type="submit" class="btn btn-primary" name="update"
          value="Update" /> <input type="submit" class="btn btn-default"
          name="redo" value="Back to Form" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
