<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/homework/update"
		modelAttribute="homeworkForm" class="form-horizontal">
		<fieldset>
			<legend>Update Homework</legend>
			<div class="form-group">
				<form:label path="id" class="col col-sm-2 control-label">Homework Id</form:label>
				<div class="col col-sm-10">
					${f:h(homeworkForm.id)}
					<form:input path="id" type="hidden" />
					<form:errors path="id" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="chapter" class="col col-sm-2 control-label">Chapter Of Homework</form:label>
				<div class="col col-sm-10">
					${f:h(homeworkForm.chapter)}
					<form:hidden path="chapter" />
					<form:errors path="chapter" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="content" class="col col-sm-2 control-label">Contents Of Homework</form:label>
				<div class="col col-sm-10">
					${f:h(homeworkForm.content)}
					<form:hidden path="content" />
					<form:errors path="content" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="deadline" class="col col-sm-2 control-label">Homework Deadline</form:label>
				<div class="col col-sm-10">
					<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${homeworkForm.deadline}" />
					<form:hidden path="deadline" />
					<form:errors path="deadline" cssClass="text-danger" />
					(* yyyy-MM-dd hh:mm:ss)
				</div>
			</div>
			<!--  
			<div class="form-group">
				<form:label path="password" class="col col-sm-2 control-label">Homework Password</form:label>
				<div class="col col-sm-10">
					******
					<form:hidden path="password" />
					<form:errors path="password" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="confirmPassword"
					class="col col-sm-2 control-label">Homework Password (confirm)</form:label>
				<div class="col col-sm-10">
					******
					<form:hidden path="confirmPassword" />
					<form:errors path="confirmPassword" cssClass="text-danger" />
				</div>
			</div>
			-->
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
        <form:hidden path="id" />
        <!-- 
        <form:hidden path="version" />
         -->
        <input type="submit" class="btn btn-primary" name="update"
          value="Update" /> <input type="submit" class="btn btn-default"
          name="redo" value="Back to Form" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
