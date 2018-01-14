<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/student/update"
		modelAttribute="studentForm" class="form-horizontal">
		<fieldset>
			<legend>更新信息确认</legend>
			<div class="form-group">
				<form:label path="sid" class="col col-sm-2 control-label">学号</form:label>
				<div class="col col-sm-10">
					${f:h(studentForm.sid)}
					<%--<form:input path="sid" type="hidden" />--%>
					<form:errors path="sid" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">学生姓名</form:label>
				<div class="col col-sm-10">
					${f:h(studentForm.name)}
					<form:hidden path="name" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="email" class="col col-sm-2 control-label">电子邮件</form:label>
				<div class="col col-sm-10">
					${f:h(studentForm.email)}
					<form:hidden path="email" />
					<form:errors path="email" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="birthday" class="col col-sm-2 control-label">生日</form:label>
				<div class="col col-sm-10">
					<fmt:formatDate pattern="yyyy-MM-dd" value="${studentForm.birthday}" />
					<form:hidden path="birthday" />
					<form:errors path="birthday" cssClass="text-danger" />
					(* yyyy-MM-dd)
				</div>
			</div>
			<div class="form-group">
				<form:label path="my_class" class="col col-sm-2 control-label">所属班级</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.my_class)}
					<form:hidden path="my_class" />
					<form:errors path="my_class" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="tel" class="col col-sm-2 control-label">电话号码</form:label>
				<div class="col col-sm-10">
						${f:h(studentForm.tel)}
					<form:hidden path="tel"  />
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
        <form:hidden path="sid" value="${f:h(studentForm.sid)}"/>
        <%--<form:hidden path="version" />--%>
        <input type="submit" class="btn btn-primary" name="update"
          value="确定更新" /> <input type="submit" class="btn btn-outline-secondary"
          name="redo" value="更改信息" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
