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
		function addTree() {
			var kName = document.getElementById("knowledge.kName").value;
			var kSort = document.getElementById("knowledge.kSort").value;
			if(kName.length==0){
				alert("名称不能为空！");
				return;
			}
			if(isNaN(kSort)) {//is not a number
				alert("排序只能为数字！");
				return;
			} else {
				document.editKnowledgeForm.submit();
			}
		}
		</script>
	</head>
	<body>
		<div>
			<s:form action="knowledge!editKnowledge" method="post"
				name="editKnowledgeForm" id="editKnowledgeForm">
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="lists">
					<tr >
						<td class="td_wid_l">
							<img src="<%=contextPath%>/back/images/tab_03.gif" />
						</td>
						<td class="lists_top">
							<font class="lists_fleft">当前位置:[知识体系管理>>修改信息]</font>
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
							<table width="100%" border="0" cellspacing="1" cellpadding="0"
								class="lists_info" id="addTable">
								<tbody id="tagTb">
									<tr>
										<td align="left">
											<font color="red">*</font>名称：
										</td>
										<td class="lists_tleft">
										<input type="text" name="knowledge.kName"
												id="knowledge.kName"
												value="<s:property value="knowledge.kName"/>" class="{required:true,minlength:2,maxlength:50}" />
										</td>
									</tr>
									<tr>
									<td><font color="red">*</font>排序：</td>
									<td class="lists_tleft"><input type="text" name="knowledge.kSort"
												id="knowledge.kSort"
												value="<s:property value="knowledge.kSort"/>" /></td>
									</tr>
									<tr>
										<td align="left">
											<font color="red">*</font>说明：
										</td>
										<td class="lists_tleft">
												<textarea rows="" cols="" name="knowledge.kNote" style="height: 60px; width: 40%;"><s:property value="knowledge.kNote" /></textarea>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
						<td width="16" class="lists_tright lists_bor2">
						</td>
					</tr>
					<tr>
						<td width="12" class="lists_bor">
							<input type="hidden" name="knowledge.kId"
								value="<s:property value="knowledge.kId"/>" >
							<input type="hidden" name="knowledge.kIndex"
								value="<s:property value="knowledge.kIndex"/>" >
							<input type="hidden" name="knowledge.kPId"
								value="<s:property value="knowledge.kPId"/>">
							<input type="hidden" name="knowledge.plId"
								value="<s:property value="knowledge.plId"/>" >
							<input type="hidden" name="knowledge.upIndex"
								value="<s:property value="knowledge.upIndex"/>">
							<input type="hidden" name="knowledge.kVersion"
								value="<s:property value="knowledge.kVersion"/>">
							<input type="hidden" name="knowledge.scId"
								value="<s:property value="knowledge.scId"/>">
						</td>
						<td align="center">
							<input type="button" name="su" value=" 提 交 " onclick="addTree()"/>
							<input type="button" name="but" value=" 返 回 " onclick="history.go(-1)"/>
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
		</div>
	</body>
</html>
