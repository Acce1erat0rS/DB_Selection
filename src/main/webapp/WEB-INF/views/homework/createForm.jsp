<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/homework/create"
		modelAttribute="homeworkForm" class="form-horizontal">
		<fieldset>
			<legend>New Homework</legend>
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
				<form:label path="deadline" class="col col-sm-2 control-label">Homework DeadLine</form:label>
				<div class="col col-sm-10">
					<form:input path="deadline" class="form-control" />
					<form:errors path="deadline" cssClass="text-danger" />
					(* yyyy-MM-dd hh:mm:ss)
				</div>
			</div>

			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<input type="submit" class="btn btn-primary" name="confirm"
						value="Confirm" /> <input type="submit" class="btn btn-default"
						name="redirectToList" value="Back to List" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
