<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/project/update"
		modelAttribute="projectForm" class="form-horizontal">
		<fieldset>
			<legend>课题修改</legend>
			<div class="form-group">
				<form:label path="pid" class="col col-sm-2 control-label">课题识别码</form:label>
				<div class="col col-sm-10">
					${f:h(projectForm.pid)}
					<form:input path="pid" type="hidden" />
					<form:errors path="pid" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">课题名称</form:label>
				<div class="col col-sm-10">
					${f:h(projectForm.name)}
					<form:hidden path="name" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="description" class="col col-sm-2 control-label">课题描述</form:label>
				<div class="col col-sm-10">
					${f:h(projectForm.description )}
					<form:hidden path="description" />
					<form:errors path="description" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="type" class="col col-sm-2 control-label">课题类型</form:label>
				<div class="col col-sm-10">
					${projectForm.type}
					<form:hidden path="type" />
					<form:errors path="type" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<form:label path="date" class="col col-sm-2 control-label">创建日期</form:label>
				<div class="col col-sm-10">
						${projectForm.date}
					<form:errors path="date" cssClass="text-danger" />
				</div>
			</div>

			<%--<div class="form-group">--%>
				<%--<form:label path="date" class="col col-sm-2 control-label">所属教师</form:label>--%>
				<%--<div class="col col-sm-10">--%>
						<%--${projectForm}--%>
					<%--<form:hidden path="date" />--%>
					<%--<form:errors path="date" cssClass="text-danger" />--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="form-group">--%>
				<%--<form:label path="password" class="col col-sm-2 control-label">KeyPoint Password</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--******--%>
					<%--<form:hidden path="password" />--%>
					<%--<form:errors path="password" cssClass="text-danger" />--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="form-group">--%>
				<%--<form:label path="confirmPassword"--%>
					<%--class="col col-sm-2 control-label">KeyPoint Password (confirm)</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--******--%>
					<%--<form:hidden path="confirmPassword" />--%>
					<%--<form:errors path="confirmPassword" cssClass="text-danger" />--%>
				<%--</div>--%>
			<%--</div>--%>
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
        <%--<form:hidden path="pid" />--%>
        <%--<form:hidden path="version" />--%>
        <input type="submit" class="btn btn-outline-warning" name="update"
          value="修改" /> <input type="submit" class="btn btn-outline-info"
          name="redo" value="返回列表" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
