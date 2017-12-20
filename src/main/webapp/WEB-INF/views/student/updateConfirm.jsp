<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/student/update"
		modelAttribute="studentForm" class="form-horizontal">
		<fieldset>
			<legend>Update User</legend>
			<div class="form-group">
				<form:label path="SID" class="col col-sm-2 control-label">User Id</form:label>
				<div class="col col-sm-10">
					${f:h(studentForm.SID)}
					<%--<form:input path="SID" type="hidden" />--%>
					<form:errors path="SID" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">User Name</form:label>
				<div class="col col-sm-10">
					${f:h(studentForm.name)}
					<form:hidden path="name" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="email" class="col col-sm-2 control-label">E-mail</form:label>
				<div class="col col-sm-10">
					${f:h(studentForm.email)}
					<form:hidden path="email" />
					<form:errors path="email" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="birthday" class="col col-sm-2 control-label">User Birth</form:label>
				<div class="col col-sm-10">
					<fmt:formatDate pattern="yyyy-MM-dd" value="${studentForm.birthday}" />
					<form:hidden path="birthday" />
					<form:errors path="birthday" cssClass="text-danger" />
					(* yyyy-MM-dd)
				</div>
			</div>
			<div class="form-group">
				<form:label path="my_class" class="col col-sm-2 control-label">Class</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.my_class)}
					<form:input path="my_class" />
					<form:errors path="my_class" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="tel" class="col col-sm-2 control-label">Telephone</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.tel)}
					<form:input path="tel"  />
					<form:errors path="tel" cssClass="text-danger" />
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
        <form:hidden path="SID" value="${f:h(studentForm.SID)}"/>
        <%--<form:hidden path="version" />--%>
        <input type="submit" class="btn btn-primary" name="update"
          value="Update" /> <input type="submit" class="btn btn-default"
          name="redo" value="Back to Form" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
