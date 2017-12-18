<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/homework/create"
		modelAttribute="homeworkForm" class="form-horizontal">
		<fieldset>
			<legend>New Homework</legend>
			<div class="form-group">
				<form:label path="chapter" class="col col-sm-2 control-label">Chapter Of Homework</form:label>
				<div class="col col-sm-10">
					${f:h(homeworkForm.chapter)}
					<form:hidden path="chapter" />
					<form:errors path="chapter" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="content" class="col col-sm-2 control-label">Contents of Homework</form:label>
				<div class="col col-sm-10">
					${f:h(homeworkForm.content)}
					<form:hidden path="content" />
					<form:errors path="content" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="deadline" class="col col-sm-2 control-label">Homework DeadLine</form:label>
				<div class="col col-sm-10">
					<fmt:formatDate pattern="yyyy-MM-dd" value="${homeworkForm.deadline}" />
					<form:hidden path="deadline" />
					<form:errors path="deadline" cssClass="text-danger" />
					(* yyyy-MM-dd hh:mm:ss)
				</div>
			</div>
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<input type="submit" class="btn btn-primary" name="create"
						value="Create" /> <input type="submit" class="btn btn-default"
						name="redo" value="Back to Form" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
