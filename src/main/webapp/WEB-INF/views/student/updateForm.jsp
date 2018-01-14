<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/student/update"
		modelAttribute="studentForm" class="form-horizontal">
		<fieldset>
			<legend>Update User</legend>
			<div class="form-group">
				<form:label path="sid" class="col col-sm-2 control-label">User Id</form:label>
				<div class="col col-sm-10">
					${f:h(studentForm.sid)}
					<%--<form:input path="sid" class="form-control" />--%>
					<form:errors path="sid" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">User Name</form:label>
				<div class="col col-sm-10">
					${f:h(studentForm.name)}
					<form:input path="name" class="form-control" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="email" class="col col-sm-2 control-label">E-mail</form:label>
				<div class="col col-sm-10">
					${f:h(studentForm.email)}
					<form:input path="email" class="form-control" />
					<form:errors path="email" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="my_class" class="col col-sm-2 control-label">Class</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.my_class)}
					<form:input path="my_class" class="form-control" />
					<form:errors path="my_class" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="tel" class="col col-sm-2 control-label">Telephone</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.tel)}
					<form:input path="tel" class="form-control" />
					<form:errors path="tel" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="birthday" class="col col-sm-2 control-label">User Birth</form:label>
				<div class="col col-sm-10">
					${f:h(studentForm.birthday)}
						<form:input path="birthday" type="text" class="form-control datepicker" data-format="yyyy-mm-dd" data-lang="en" data-RTL="false"/>
						<form:errors path="birthday" cssClass="text-danger" />
				</div>
			</div>
			<%--<div class="form-group">--%>
				<%--<form:label path="password" class="col col-sm-2 control-label">User Password</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--<form:password path="password" class="form-control" />--%>
					<%--<form:errors path="password" cssClass="text-danger" />--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="form-group">--%>
				<%--<form:label path="confirmPassword"--%>
					<%--class="col col-sm-2 control-label">User Password (confirm)</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--<form:password path="confirmPassword" class="form-control" />--%>
					<%--<form:errors path="confirmPassword" cssClass="text-danger" />--%>
				<%--</div>--%>
			<%--</div>--%>
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<form:hidden path="sid" value="${f:h(studentForm.sid)}" />
					<%--<form:errors path="version" cssClass="text-danger" />--%>
					<input type="submit" class="btn btn-primary" name="confirm"
						value="确认更新" /> <input type="submit" class="btn btn-outline-secondary"
						name="redirectToList" value="返回列表" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
