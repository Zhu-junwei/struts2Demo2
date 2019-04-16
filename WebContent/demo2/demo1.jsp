<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 判断 -->
	<s:set var="i" value="5" scope="request"/>
	<s:if test="#request.i>3">
		i 大于 3
	</s:if>
	<s:elseif test="#request.i<3">
		i 小于 3
	</s:elseif>
	<s:else>
		i 等于 3
	</s:else>
</body>
</html>