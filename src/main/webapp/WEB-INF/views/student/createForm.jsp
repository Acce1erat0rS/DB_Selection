<%--<div class="col-sm-12">--%>
	<%--<form:form action="${pageContext.request.contextPath}/student/create"--%>
		<%--modelAttribute="studentForm" class="form-horizontal">--%>
		<%--<fieldset>--%>
			<%--<legend>New User</legend>--%>
			<%--<div class="form-group">--%>
				<%--<form:label path="name" class="col col-sm-2 control-label">User Name</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--<form:input path="name" class="form-control" />--%>
					<%--<form:errors path="name" cssClass="text-danger" />--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="form-group">--%>
				<%--<form:label path="email" class="col col-sm-2 control-label">E-mail</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--<form:input path="email" class="form-control" />--%>
					<%--<form:errors path="email" cssClass="text-danger" />--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="form-group">--%>
				<%--<form:label path="birthday" class="col col-sm-2 control-label">User Birth</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--<form:input path="birthday" class="form-control" />--%>
					<%--<form:errors path="birthday" cssClass="text-danger" />--%>
					<%--(* yyyy-MM-dd)--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--&lt;%&ndash;<div class="form-group">&ndash;%&gt;--%>
				<%--&lt;%&ndash;<form:label path="password" class="col col-sm-2 control-label">User Password</form:label>&ndash;%&gt;--%>
				<%--&lt;%&ndash;<div class="col col-sm-10">&ndash;%&gt;--%>
					<%--&lt;%&ndash;<form:password path="password" class="form-control" />&ndash;%&gt;--%>
					<%--&lt;%&ndash;<form:errors path="password" cssClass="text-danger" />&ndash;%&gt;--%>
				<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
			<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
			<%--&lt;%&ndash;<div class="form-group">&ndash;%&gt;--%>
				<%--&lt;%&ndash;<form:label path="confirmPassword"&ndash;%&gt;--%>
					<%--&lt;%&ndash;class="col col-sm-2 control-label">User Password (confirm)</form:label>&ndash;%&gt;--%>
				<%--&lt;%&ndash;<div class="col col-sm-10">&ndash;%&gt;--%>
					<%--&lt;%&ndash;<form:password path="confirmPassword" class="form-control" />&ndash;%&gt;--%>
					<%--&lt;%&ndash;<form:errors path="confirmPassword" cssClass="text-danger" />&ndash;%&gt;--%>
				<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
			<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
			<%--<div class="form-group">--%>
				<%--<div class="col col-sm-10 col-sm-offset-2">--%>
					<%--<input type="submit" class="btn btn-outline-warning" name="confirm"--%>
						<%--value="Confirm" /> <input type="submit" class="btn btn-outline-primary"--%>
						<%--name="redirectToList" value="Back to List" />--%>
				<%--</div>--%>
			<%--</div>--%>
		<%--</fieldset>--%>
	<%--</form:form>--%>
<%--</div>--%>







<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/student/create"
			   modelAttribute="studentForm" class="form-horizontal">
		<fieldset>
			<legend>新建学生用户</legend>
			<div class="form-group">
				<form:label path="sid" class="col col-sm-2 control-label">学号 *</form:label>
				<div class="col col-sm-10">
					<form:input path="sid" class="form-control" />
					<form:errors path="sid" cssClass="text-danger" />
				</div>
			</div>
			<%--<div class="form-group">--%>
				<%--<form:label path="pid" class="col col-sm-2 control-label">Pid</form:label>--%>
				<%--<div class="col col-sm-10">--%>
					<%--<form:input path="pid" class="form-control" />--%>
					<%--<form:errors path="pid" cssClass="text-danger" />--%>
				<%--</div>--%>
			<%--</div>--%>




			<div class="form-group">
				<form:label path="email" class="col col-sm-2 control-label">所属专业 *</form:label>
				<div class="col col-sm-10">
					<div class="fancy-form fancy-form-select">
						<form:select path="mid" class="form-control select2">
							<option value="">-请选择-</option>

							<option value="001" >[001]林学院</option>

							<option value="002" >[002]园林学院</option>

							<option value="003" >[003]水土保持学院</option>

							<option value="004" >[004]经济管理学院</option>

							<option value="005" >[005]生物科学与技术学院</option>

							<option value="006" >[006]工学院</option>

							<option value="007" >[007]材料科学与技术学院</option>

							<option value="008" >[008]人文社会科学学院</option>

							<option value="009" >[009]外语学院</option>

							<option value="010" >[010]信息学院</option>

							<option value="011" >[011]理学院</option>

							<option value="012" >[012]自然保护区学院</option>

							<option value="013" >[013]环境科学与工程学院</option>

							<option value="014" >[014]艺术设计学院</option>

							<option value="015" >[015]体育教学部</option>

							<option value="016" >[016]继续教育学院</option>

							<option value="017" >[017]国家花卉工程技术研究中心</option>

							<option value="018" >[018]国家非粮生物质原料研发中心</option>

							<option value="019" >[019]林木育种国家工程实验室</option>

							<option value="020" >[020]教务处</option>

							<option value="021" >[021]实验室与设备管理处</option>

							<option value="022" >[022]研究生院</option>

							<option value="023" >[023]国际交流与合作处</option>

							<option value="024" >[024]学生处</option>

							<option value="025" >[025]招生与就业处</option>

							<option value="026" >[026]团委</option>

							<option value="027" >[027]图书馆</option>

							<option value="028" >[028]标本馆</option>

							<option value="029" >[029]实验林场</option>

							<option value="030" >[030]科技处</option>

							<option value="031" >[031]信息中心</option>

							<option value="032" >[032]离退人员</option>

							<option value="Gy35Y0xBhH" >[034]其他</option>

							<option value="pQuHO4qp2W" >[036]马克思主义学院</option>
						</form:select>
						<i class="fancy-arrow-"></i>
					</div>
					<form:errors path="mid" cssClass="text-danger" />
				</div>
			</div>


			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">姓名 *</form:label>
				<div class="col col-sm-10">
					<form:input path="name" class="form-control" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="email" class="col col-sm-2 control-label">电子邮件</form:label>
				<div class="col col-sm-10">
					<form:input path="email" class="form-control" />
					<form:errors path="email" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="year" class="col col-sm-2 control-label">届别</form:label>
				<div class="col col-sm-10">
					<form:input path="year" class="form-control" />
					<form:errors path="year" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="age" class="col col-sm-2 control-label">年龄</form:label>
				<div class="col col-sm-10">
					<form:input path="age" class="form-control" />
					<form:errors path="age" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="tel" class="col col-sm-2 control-label">联系方式</form:label>
				<div class="col col-sm-10">
					<form:input path="tel" class="form-control" />
					<form:errors path="tel" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="my_class" class="col col-sm-2 control-label">班级</form:label>
				<div class="col col-sm-10">
					<form:input path="my_class" class="form-control" />
					<form:errors path="my_class" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="birthday" class="col col-sm-2 control-label">出生日期</form:label>
				<div class="col col-sm-10">
					<%--<form:input path="birthday" class="form-control" />--%>
					<form:input path="birthday" type="text" class="form-control datepicker" data-format="yyyy-mm-dd" data-lang="en" data-RTL="false"/>
					<form:errors path="birthday" cssClass="text-danger" />
				</div>
			</div>
				<%--<div class="form-group">--%>
				<%--<form:label path="password" class="col col-sm-2 control-label">User Password</form:label>--%>
				<%--<div class="col col-sm-10">--%>
				<%--<form:password path="password" class="form-control" />--%>
				<%--<form:errors path="password" cssClass="text-danger" />--%>
				<%--</div>--%>
				<%--</div>--%>
				<%--<div class="form-group">--%>
				<%--<form:label path="confirmPassword"--%>
				<%--class="col col-sm-2 control-label">User Password (confirm)</form:label>--%>
				<%--<div class="col col-sm-10">--%>
				<%--<form:password path="confirmPassword" class="form-control" />--%>
				<%--<form:errors path="confirmPassword" cssClass="text-danger" />--%>
				<%--</div>--%>
				<%--</div>--%>
			<div class="form-group">

				<div class="col col-sm-10 col-sm-offset-2">
					<input type="submit" class="btn btn-outline-warning" name="confirm"
						   value="Confirm" />
					<input type="submit" class="btn btn-outline-primary"
													 name="redirectToList" value="Back to List" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>

