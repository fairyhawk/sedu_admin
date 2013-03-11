<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/include/header.inc"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>视频观看统计</title>
		<link rel="stylesheet" type="text/css" media="screen"	href="<%=contextPath%>/back/style/css_body.css" />
		<script type="text/javascript" src="<%=contextPath%>/back/script/jquery-1.3.2.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/back/script/back_util.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/back/script/My97DatePicker/WdatePicker.js" ></script>
		<script type="text/javascript">
			function createDateTwo(){
				var startTime=document.getElementById("createTimeBegin").value;
			    var endTime=document.getElementById("createTimeEnd").value;
			    if(startTime!='' && startTime>endTime){
				       alert("创建结束时间要大于开始时间!");
				       document.getElementById("createTimeEnd").value='';
				      return false;
			    }
			}
			function createDateOne(){
				var startTime=document.getElementById("createTimeBegin").value;
			    var endTime=document.getElementById("createTimeEnd").value;
			    if(endTime!='' && startTime>endTime){
				       alert("创建结束时间要大于开始时间!");
				       document.getElementById("createTimeBegin").value='';
				      return false;
			    }
			}
    	</script>
	</head>
	<body>
<div>
	<form action="<%=contextPath %>/vst/vidoTeacher!getTeacherCount.action" method="post" name="vstForm" id="vstForm">
	<table width="100%" border="0" cellspacing="0"  cellpadding="0" class="lists" onmouseover="changeto()" onmouseout="changeback()">
		<tr >
			<td class="td_wid_l">
			<img src="<%=contextPath%>/back/images/tab_03.gif" />
			</td>
			<td class="lists_top">
				<font class="lists_fleft">视频观看统计</font>
			</td>
			<td class="td_wid_l">
			<img src="<%=contextPath%>/back/images/tab_07.gif" />
			</td>
		</tr>
		
		<tr>
	            <td class="lists_bor"></td>
	            <td>
	              <div class="msg-zy">
				<table class="" border="0" cellspacing="0"  cellpadding="0">
					<tr>
						<td>
							教师姓名:<input type="text" name="condition.teacherName"/>
						 </td>
						<td>
							所在项目:<s:select name="condition.projectId" id="subjectId" list="subList" listKey="subjectId"
									listValue="subjectName" headerKey="-1" headerValue="--请选择专业--" theme="simple">
						 	</s:select>
						 </td>
						<td width="20px;"></td>
						<td>观看时间 ：<input type="text" name="condition.startTime" readonly="readonly" id="createTimeBegin" onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd HH:mm:ss',alwaysUseStartDate:true,autoPickDate:true})"
										onchange="createDateOne()"	 value="<s:date name="vstCondition.start"  format="yyyy-MM-dd HH:mm:ss"/>" />
								-<input type="text" name="condition.endTime" readonly="readonly" id="createTimeEnd" onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd HH:mm:ss',alwaysUseStartDate:true,autoPickDate:true})"
										onchange="createDateTwo()"	 value="<s:date name="vstCondition.end"  format="yyyy-MM-dd HH:mm:ss"/>"/>
						</td>
						<td width="20px;"></td>
						<td><a href="javascript:document.vstForm.submit()"><img src="<%=contextPath%>/back/images/add_a.gif"/>查询</a></td>
					</tr>
				</table>
					 </td>		
					 </td>
            <td class="lists_tright lists_bor2"></td>
        </tr>
        </form>
		
		<tr>
			<td width="12" class="lists_bor">
			</td>
			<td>
				<table width="100%" border="0" cellspacing="1" cellpadding="0" class="lists_info">
					<tr class="lists_infobg">
						<td>
							教师名称
						</td>
						<td>
							项目名称
						</td>
						<td>
							购买观看人数
						</td>
						
						<td>
							购买观看时长(分钟)
						</td>
						<td>
							购买平均时长(分钟)
						</td>
						
						<td>
							试听观看人数
						</td>
						<td>
							试听观看时长(分钟)
						</td>
						
						<td>
							试听平均时长(分钟)
						</td>
					</tr>
					<s:iterator value="data" var="vst">
						<tr>
							<td>
								<s:property value="#vst.teacherName"/>
							</td>
							<td>
								<s:property value="#vst.projectName"/>
							</td>
							<td>
								<s:property value="#vst.buyCusCount"/>
							</td>
							<td>
								<s:property value="#vst.buyCusAllWatchTime"/>
							</td>
							<td>
								<s:property value="#vst.buyCusAllWatchTimeAvg"/>
							</td>
							<td>
								<s:property value="#vst.tryCusCount"/>
							</td>
							<td>
								<s:property value="#vst.tryCusAllWatchTime"/>
							</td>
							<td>
								<s:property value="#vst.tryCusAllWatchTimeAvg"/>
							</td>
						</tr>
					</s:iterator>
				</table>
			</td>

		</tr>
		<tr>
			<td>
				<img src="<%=contextPath%>/back/images/tab_18.gif" />
			</td>
			<td class="lists_bottom">
				<jsp:include page="/back/jsp/common/showPage.jsp" />
			</td>
			<td>
				<img src="<%=contextPath%>/back/images/tab_20.gif" />
			</td>
		</tr>
	</table>
</div>
	</body>
</html>
