
<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/homework/delete"
		modelAttribute="homeworkForm" class="form-horizontal">
		<fieldset>
			<legend>Delete Homework</legend>
			<div class="form-group">
				<form:label path="chapter" class="col col-sm-2 control-label">Chapter Of Homework</form:label>
				<div class="col col-sm-10">${f:h(homeworkForm.chapter)}</div>
			</div>
			<div class="form-group">
				<form:label path="content" class="col col-sm-2 control-label">Contents Of Homework</form:label>
				<div class="col col-sm-10">${f:h(homeworkForm.content)}</div>
			</div>
			<div class="form-group">
				<form:label path="deadline" class="col col-sm-2 control-label">Homework Deadline</form:label>
				<div class="col col-sm-10">
					<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${homeworkForm.deadline}" />
				</div>
			</div>
			<!--  
			<div class="form-group">
				<form:label path="password" class="col col-sm-2 control-label">Homework Password</form:label>
				<div class="col col-sm-10">******</div>
			</div>
			<div class="form-group">
				<form:label path="confirmPassword"
					class="col col-sm-2 control-label">Homework Password (confirm)</form:label>
				<div class="col col-sm-10">******</div>
			</div>
			-->
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<form:hidden path="id" value="${f:h(homework.id)}" />
					<!-- 
					<form:hidden path="version" value="${f:h(homework.version)}" />
					 -->
					<input type="submit" class="btn btn-danger" name="delete"
						value="Delete" /> <input type="submit" class="btn btn-default"
						name="redirectToList" value="Back to List" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
