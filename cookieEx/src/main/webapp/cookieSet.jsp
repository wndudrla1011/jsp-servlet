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
		Cookie cookie = new Cookie("cookieN", "cookieV");
		cookie.setMaxAge(60*60); // 초 단위 -> 1시간
		response.addCookie(cookie);
	%>
	
	<a href="cookieGet.jsp">cookie get</a>

</body>
</html>