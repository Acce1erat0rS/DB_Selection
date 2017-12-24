<%--
  Created by IntelliJ IDEA.
  User: 天禹
  Date: 2017/12/22
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<h2>重难点</h2>
${request}
老师可以在这里发布困难的地方，同学们遇到自己不会的内容也可以在这里提交问题。大家可以一起来解决这些问题。
<div class="col-sm-12">
    <c:if test="${not empty errorMessage}">
        <div class="alert alert-error">${f:h(errorMessage)}</div>
    </c:if>

    <table class="table table-striped table-bordered table-condensed">
        <thead>
            <tr>
            <th>课题编号</th>
            <th>课题名称</th>
            <th>已选人数</th>
            <th>创建时间</th>
            <th>可做操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="project" items="${page.content}">
                <tr>
                    <td># ${f:h(project.pid)}</td>
                    <td>${f:h(project.name)}</td>
                    <td>${f:h(project.chosennum)}</td>
                    <td>${f:h(project.createdAt)}</td>
                    <td><form:form
                            action="${pageContext.request.contextPath}/project"
                            class="form-inline">


                    <input type="hidden" name="pid" value="${f:h(project.pid)}" />
                    <input type="submit" class="btn btn-default" name="sshow" value = "查看详情"/>
                    <input type="submit" class="btn btn-primary"
                           name="redirectToChose" value="选择该题" />
                </form:form></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>