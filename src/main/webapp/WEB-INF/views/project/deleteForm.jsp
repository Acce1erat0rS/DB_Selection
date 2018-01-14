<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/project/delete"
			   modelAttribute="projectForm" class="form-horizontal">
		<fieldset>
			<legend>删除课题</legend>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">课题名称</form:label>
				<div class="col col-sm-10">${f:h(projectForm.name)}</div>
			</div>

			<div class="form-group">
				<form:label path="description" class="col col-sm-2 control-label">课题描述</form:label>
				<div class="col col-sm-10">${f:h(projectForm.description)}</div>
			</div>
			<div class="form-group">
				<form:label path="type" class="col col-sm-2 control-label">课题类型</form:label>
				<div class="col col-sm-10">
						${projectForm.type}
				</div>
			</div>

			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<form:hidden path="pid" value="${f:h(projectForm.pid)}"  />
					<input type="submit" class="btn btn-outline-danger" name="delete"
						   value="删除" /> <input type="submit" class="btn btn-outline-primary"
												name="redirectToList" value="返回列表" />

				</div>
			</div>
		</fieldset>
	</form:form>
</div>
