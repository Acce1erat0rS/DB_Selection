<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<h2>最终题目</h2>
${request}
<br><br>
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
                    <input type="submit" class="btn btn-outline-primary" name="show" value = "查看详情"/>
                    <%--<input type="submit" class="btn btn-outline-warning"--%>
                           <%--name="redirectToChoose" value="选择该题" />--%>
                    <input type="submit" class="btn btn-outline-info"
                           name="redirectToUpdate" value="更新信息" />
                    <%--<input type="submit" class="btn btn-outline-danger"--%>
                           <%--name="redirectToDelete" value="删除" />--%>
                </form:form></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>
