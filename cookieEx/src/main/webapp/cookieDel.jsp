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
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			String str = cookies[i].getName();
			if (str.equals("cookieN")) {
				out.println("name : " + cookies[i].getName() + "<br>");
				cookies[i].setMaxAge(0); // 쿠키 삭제
				response.addCookie(cookies[i]);
			}
		}
	%>
	
	<a href="cookieTest.jsp">Check cookie</a>

</body>
</html>