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
						${f:h(project.createdAt)}
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">项目名称</form:label>
				<div class="col col-sm-10">
					<form:input path="name" class="form-control" value="${f:h(project.name)}"/>
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="description" class="col col-sm-2 control-label">项目描述</form:label>
				<div class="col col-sm-10">
					<form:textarea rows="8" path="description" class="form-control"  value="${f:h(project.description)}"/>

					<form:errors path="description" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<form:label path="type" class="col col-sm-2 control-label">课题类别</form:label>
				<div class="col col-sm-10">
					<c:if test="${f:h(project.type)=='论文类'}">
						<form:radiobutton path="type" value="实践类" />实践类
						<form:radiobutton path="type" value="论文类" checked="true"/>论文类
					</c:if>

					<c:if test="${f:h(project.type)=='实践类'}">
						<form:radiobutton path="type" value="实践类" checked="true"/>实践类
						<form:radiobutton path="type" value="论文类" />论文类
					</c:if>
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
