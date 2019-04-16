<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	遍历list集合<br>
	<s:iterator var="i" value="{'aa','bb','cc'}">
		<s:property value="#i"/>
	</s:iterator>
	<hr/>
	遍历set集合<br>
	<s:iterator var="entry" value="#{'aaa':'111','bbb':'222','ccc':'333'}">
		<s:property value="#entry.key"/>--<s:property value="#entry.value"/>
	</s:iterator>
	<hr/>
	遍历set集合:有开始结束<br>
	<s:iterator var="i" begin="1" end="10" step="1">
		<s:property value="#i"/>
	</s:iterator>
	<hr/>
	遍历set集合:遇到某个被3整除的颜色变红<br>
	<s:iterator var="i" begin="100" end="300" step="5" status="status">
		<s:if test="#status.count % 3 == 0">
			<font color="red"><s:property value="#i"/></font>
		</s:if>
		<s:else>
			<s:property value="#i"/>
		</s:else>
	</s:iterator>
</body>
</html>