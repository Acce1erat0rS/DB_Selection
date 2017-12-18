
<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/keypoint/delete"
		modelAttribute="keyPointForm" class="form-horizontal">
		<fieldset>
			<legend>删除问题</legend>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">KeyPoint Name</form:label>
				<div class="col col-sm-10">${f:h(keyPointForm.name)}</div>
			</div>
			<div class="form-group">
				<form:label path="email" class="col col-sm-2 control-label">E-mail</form:label>
				<div class="col col-sm-10">${f:h(keyPointForm.email)}</div>
			</div>
			<div class="form-group">
				<form:label path="birth" class="col col-sm-2 control-label">KeyPoint Birth</form:label>
				<div class="col col-sm-10">
					<fmt:formatDate pattern="yyyy-MM-dd" value="${keyPointForm.birth}" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
