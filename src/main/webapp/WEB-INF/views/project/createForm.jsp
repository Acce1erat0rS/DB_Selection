<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/keypoint/create"
		modelAttribute="keyPointForm" class="form-horizontal">
		<fieldset>
			<legend>创建新问题</legend>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">问题题目:</form:label>
				<div class="col col-sm-10">
					<form:input path="name" class="form-control" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<form:label path="description" class="col col-sm-2 control-label">问题描述:</form:label>
				<div class="col col-sm-10">
					<form:textarea rows="3" path="description" class="form-control" />
					<form:errors path="description" cssClass="text-danger" />
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
