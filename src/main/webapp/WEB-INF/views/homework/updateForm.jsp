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
					<form:input path="chapter" class="form-control" />
					<form:errors path="chapter" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="content" class="col col-sm-2 control-label">Contents Of Homework</form:label>
				<div class="col col-sm-10">
					<form:input path="content" class="form-control" />
					<form:errors path="content" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="deadline" class="col col-sm-2 control-label">Homework Deadline</form:label>
				<div class="col col-sm-10">
					<form:input path="deadline" class="form-control" />
					<form:errors path="deadline" cssClass="text-danger" />
					(* yyyy-MM-dd hh:mm:ss)
				</div>
			</div>
			<!--  
			<div class="form-group">
				<form:label path="password" class="col col-sm-2 control-label">Homework Password</form:label>
				<div class="col col-sm-10">
					<form:password path="password" class="form-control" />
					<form:errors path="password" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="confirmPassword"
					class="col col-sm-2 control-label">Homework Password (confirm)</form:label>
				<div class="col col-sm-10">
					<form:password path="confirmPassword" class="form-control" />
					<form:errors path="confirmPassword" cssClass="text-danger" />
				</div>
			</div>
			-->
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<form:hidden path="version" />
					<form:errors path="version" cssClass="text-danger" />
					<input type="submit" class="btn btn-primary" name="confirm"
						value="Confirm" /> <input type="submit" class="btn btn-default"
						name="redirectToList" value="Back to List" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
