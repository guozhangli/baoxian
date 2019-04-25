<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.tableRegion td{
  height:50px;
  vertical-align:bottom;
  

}

.tableRegin .td1{
text-align:right;
    padding:15px;
}

.tableRegin .td2{
text-align:left;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form name="icform" method="post">
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
	<li id="back"><a href="#" onclick="history.go(-1);return false;this.blur();">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
    部门详情
  </div> 
  
<div>


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<tr>
		<td class="td1">上级部门名称：</td>
	<td class="td2"><label for="fname">${deptInfo2.deptName }</label></td>
	
	</tr>
	<tr>
	<td class="td1">本部门名称：</td>
	<td class="td2"><label for="name">${deptInfo.deptName }</label></td>
	</tr>
	<tr>
	<td class="td1">部门状态：</td>
	<td class="td2">
	<c:if test="${deptInfo.state==1}"><font color="green"><label for="state">启用</label></font></c:if>
	<c:if test="${deptInfo.state==0}"><font color="red"><label for="state">停用</label></font></c:if></td>
	</tr>
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>