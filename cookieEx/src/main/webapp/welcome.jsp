<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
		String id;
	%>

	<%
		Cookie[] cookies = request.getCookies();	
	
		for (Cookie c : cookies) {
			if (c.getValue().equals("abcde")) { // 타깃 id 출력
				id = c.getValue();
				out.println(id + "님 안녕하세요. <br>");
				break;
			}
		}
	%>
	
	<a href="logout.jsp">Logout</a>

</body>
</html>