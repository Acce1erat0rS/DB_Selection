<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/project/update"
		modelAttribute="projectForm" class="form-horizontal">
		<fieldset>
			<legend>更新毕业设计要求</legend>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">项目编号</form:label>
				<div class="col col-sm-10">
					${f:h(projectForm.pid)}
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">项目创建日期</form:label>
				<div class="col col-sm-10">
						${f:h(projectForm.createdAt.toLocaleString())}
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">项目名称</form:label>
				<div class="col col-sm-10">
					<form:input path="name" class="form-control" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="description" class="col col-sm-2 control-label">项目描述</form:label>
				<div class="col col-sm-10">
					<form:input path="description" class="form-control" />
					<form:errors path="description" cssClass="text-danger" />
				</div>
			</div>


			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<%--<form:hidden path="version" />--%>
					<%--<form:errors path="version" cssClass="text-danger" />--%>
					<input type="submit" class="btn btn-primary" name="confirm"
						value="Confirm" /> <input type="submit" class="btn btn-default"
						name="redirectToList" value="Back to List" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
