<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/project/create"
		modelAttribute="projectForm" class="form-horizontal">
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
					<form:textarea rows="8" path="description" class="form-control" />
					<form:errors path="description" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<form:label path="type" class="col col-sm-2 control-label">课题类别</form:label>
					<div class="col col-sm-10">
						<%--<form:radiobuttons path="type">--%>
							<%--<form:radiobutton path="type" value="1">T1</form:radiobutton>--%>
							<%--<form:radiobutton path="type" value="2">T2</form:radiobutton>--%>
						<%--</form:radiobuttons>--%>
							<%--<form:input path="type" name="radio" type="radio" checked="checked" value="论文类"/>--%>
							<%--论文类--%>
							<%--<form:input path="type" name="radio" type="radio" value="实践类"/>--%>
							<%--实践类--%>
							<form:radiobutton path="type" value="实践类"/>实践类
							<form:radiobutton path="type" value="论文类"/>论文类
					</div>
			</div>
			<%--<div class="form-group">--%>
				<%--<form:form action="uploadPPT" method="post" enctype="multipart/form-data" >--%>
					<%--请选择文件：--%>
					<%--<input id="file" name="file" type="file" />--%>
					<%--<input type="submit" value="上传"  />--%>
				<%--</form:form>--%>
			<%--</div>--%>

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
