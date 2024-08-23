<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		int[] iArr = {10, 20, 30};
		String res = Arrays.toString(iArr).replaceAll("[\\r\\n]", "");
		out.println(res);
	%>

</body>
</html>