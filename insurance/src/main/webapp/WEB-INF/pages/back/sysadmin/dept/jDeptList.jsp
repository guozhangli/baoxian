<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<script type="text/javascript" src="../../../../../staticfile/js/jquery-1.6.2.js"></script>
	<script>
	$().ready(function(){
		
	});
	</script>
</head>

<body>
<form name="icform" method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
	<li id="view"><a href="#" onclick="formSubmit('toview','_self','deptId');this.blur();">查看</a></li>
	<li id="new"><a href="#" onclick="formSubmit2('tocreate','_self');this.blur();">新增</a></li>
	<li id="update"><a href="#" onclick="formSubmit('toupdate','_self','deptId');this.blur();">修改</a></li>
	<li id="delete"><a href="#" onclick="formSubmit('deleteone','_self','deptId');this.blur();">删除一个</a></li>
	<li id="delete"><a href="#" onclick="formSubmit('delete','_self','deptId');this.blur();">删除多个</a></li>
	<li id="new"><a href="#" onclick="formSubmit('start','_self','deptId');this.blur();">启用</a></li>
	<li id="new"><a href="#" onclick="formSubmit('stop','_self','deptId');this.blur();">停用</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
    部门列表
  </div> 
  
<div>


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<thead>
	<tr>
		<td class="tableHeader"><input type="checkbox" name="selid" onclick="checkAll('deptId',this)"></td>
		<td class="tableHeader">序号</td>
		<td class="tableHeader">上级部门名称</td>
		<td class="tableHeader">本部门名称</td>
		<td class="tableHeader">状态</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	<!-- 部门列表取值 -->
	<c:forEach items="${dateList }" var="dept" varStatus="o">
			<tr>
			<td><input type="checkbox" name="deptId" value="${dept.deptId }"></td>
			<td>${o.index+1 }</td>
			<td>${dept.parentDept.deptName }</td>
			<td>${dept.deptName }</td>
			<td>
			<c:if test="${dept.state==1}"><font color="green">启用</font></c:if>
			<c:if test="${dept.state==0}"><font color="red">停用</font></c:if>
			</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

