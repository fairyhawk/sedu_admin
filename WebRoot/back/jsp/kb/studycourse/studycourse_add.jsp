<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/include/header.inc"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title></title>
		<link rel="stylesheet" type="text/css" media="screen"
			href="<%=contextPath%>/back/style/css_body.css" />
		<script type="text/javascript"
			src="<%=contextPath%>/back/script/dtree.js"></script>
		<script type="text/javascript"
			src="<%=contextPath%>/back/script/jquery-1.3.2.js"></script>
		<script type="text/javascript"
			src="<%=contextPath%>/back/script/jQueryValidate/jquery.validate.js"></script>
		<script type="text/javascript"
			src="<%=contextPath%>/back/script/jQueryValidate/localization/messages_cn.js"></script>
		<script type="text/javascript"
			src="<%=contextPath%>/back/script/jQueryValidate/lib/jquery.metadata.js"></script>
		<link rel="StyleSheet" href="<%=contextPath%>/back/style/dtree.css"
			type="text/css" />

		<script type="text/javascript">
		$().ready(function() {
			$("#addStudyCourseForm").validate({
		        rules: {   
		            pId: {
		            	required:true,
		            	min: 0
		            }
		        },
		        messages: {   
		            pId: {
				        required:"请选择专业",
				        min: "请选择专业"
				    }
		        }   
   	 		});  
		})

			function Pindex(pid){
				window.location.href="<%=contextPath%>/kb/studyCourse!toStudyCourseAdd.action?pId="+pid+"";
			}
		function addStudyCourse() {
			var sub = document.getElementById("studycourse.cCtSubject").value;
			if(isNaN(sub)) {//is not a number
				alert("包含章数只能为数字！");
				return false;
			}
		}
		</script>
	</head>
	<body>

		<s:form action="studyCourse!studyCourseAdd" method="post"
			name="addStudyCourseForm" id="addStudyCourseForm" onsubmit="return addStudyCourse()">
			<table width="100%" border="0" cellspacing="1" cellpadding="0"
				class="lists">
				<tr >
					<td class="td_wid_l">
						<img src="<%=contextPath%>/back/images/tab_03.gif" />
					</td>
					<td class="lists_top">
						<font class="lists_fleft">当前位置:[知识体系管理>>新建科目]</font>
						<font class="lists_fright"> </font>
					</td>
					<td class="td_wid_l">
						<img src="<%=contextPath%>/back/images/tab_07.gif" />
					</td>
				</tr>
				<tr>
					<td width="12" class="lists_bor">
					</td>
					<td>
						<table width="50%" border="0" cellspacing="1" cellpadding="0"
							class="lists_info">
							<tr>
								<td align="left">
									<font color="red">*</font>所属专业：
								</td>
								<td>
									<s:select name="pId" id="pId" list="pList" listKey="pId"
										listValue="pName" headerValue="请选择" headerKey="-1"
										theme="simple" onchange="Pindex(this.value)">
									</s:select>
								</td>
							</tr>
							<!--<tr>
								<td align="left">
									<font color="red">*</font>索引编号：
								</td>
								<td>
									<s:property value="pIndex" />
									<input type="text" name="studycourse.cIndex"
										id="studycourse.cIndex"
										class="{required:true,minlength:2,maxlength:50}" />
									
								</td>
							</tr>  -->
							<s:hidden id="pIndex" name="pIndex" />
							<tr>
								<td align="left">
									<font color="red">*</font>科目名称：
								</td>
								<td>
									<input type="text" name="studycourse.cName"
										id="studycourse.cName"
										value="<s:property value="studycourse.cName"/>"
										class="{required:true,minlength:4,maxlength:50}" />
								</td>
							</tr>
							<tr>
								<td align="left">
									<font color="red">*</font>包含章数：
								</td>
								<td>
									<input type="text" name="studycourse.cCtSubject"
										id="studycourse.cCtSubject"
										value="<s:property value="studycourse.cCtSubject"/>"
										class="{required:true,minlength:2,maxlength:50}" />
								</td>

							</tr>
							<tr>
								<td align="left">
									<font color="red">*</font>版本时间：
								</td>
								<td>
									<s:property value="pVersion" />
									<s:hidden id="pVersion" name="pVersion" />
								</td>
							</tr>
							<tr>
								<td align="left">
									<font color="red">*</font>学科说明：
								</td>
								<td>
									<textarea name="studycourse.cNote" rows="5" cols="18" id="studycourse.cNote" maxsize="255" eos_displayname="描述" chname="描述" nullable="no" datatype="text"></textarea>
								</td>
							</tr>
							<tr>
								<td align="center" colspan="2">
									<s:submit value=" 提 交 " />
									<input type="button" value=" 返 回 " onclick="window.location.href='<%=contextPath%>/kb/studyCourse!getStudyCourseList.action'"/>
								</td>
							</tr>
						</table>

					</td>
					<td width="16" class="lists_tright lists_bor2">
					</td>
				</tr>
				<tr>
					<td>
						<img src="<%=contextPath%>/back/images/tab_18.gif" />
					</td>
					<td class="lists_bottom">

					</td>
					<td>
						<img src="<%=contextPath%>/back/images/tab_20.gif" />
					</td>
				</tr>
			</table>
		</s:form>
	</body>
</html>
