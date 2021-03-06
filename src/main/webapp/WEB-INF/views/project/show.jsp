<%--
  Created by IntelliJ IDEA.
  User: sp1ca
  Date: 15/12/2017
  Time: 9:16 AM
  To change this template use File | Settings | File Templates.
--%>
<div class="col-sm-12">
    <form:form action="${pageContext.request.contextPath}/project"
               modelAttribute="projectForm" class="form-horizontal">
        <fieldset>
            <legend>课题详情</legend>
            <div class="form-group">
                <form:label path="name" class="col col-sm-2 control-label">课题内容</form:label>
                <div class="col col-sm-10">
                        ${f:h(project.name)}
                </div>
            </div>
            <div class="form-group">
                <form:label path="description" class="col col-sm-2 control-label">课题描述</form:label>
                <div class="col col-sm-10">
                        ${f:h(project.description)}
                </div>
            </div>

            <div class="form-group">
                <form:label path="description" class="col col-sm-2 control-label">创建时间</form:label>
                <div class="col col-sm-10">
                        ${f:h(project.createdAt)}
                </div>
            </div>

            <div class="form-group">
                <form:label path="description" class="col col-sm-2 control-label">课题类型</form:label>
                <div class="col col-sm-10">
                        ${f:h(project.type)}
                </div>
            </div>

            <div class="form-group">
                <form:label path="description" class="col col-sm-2 control-label">指导教师</form:label>
                <div class="col col-sm-10">
                        ${f:h(project.tid)}
                </div>
            </div>

            <div class="form-group">
                <form:label path="description" class="col col-sm-2 control-label">所属专业</form:label>
                <div class="col col-sm-10">
                        ${f:h(project.mid)}
                </div>
            </div>

            <div class="form-group">
                <div class="col col-sm-10 col-sm-offset-2">
                    <input type="submit" class="btn btn-outline-info" name="list" value="返回" />
                </div>
            </div>
        </fieldset>
    </form:form>
</div>
