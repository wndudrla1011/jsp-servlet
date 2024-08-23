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
		String id, pw;
	%>
	
	<%
		/* id, pw 값 얻기 */
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		/* 검증 */
		if (id.equals("abcde") && pw.equals("12345")) {
			session.setAttribute("id", id);
			response.sendRedirect("welcome.jsp");
		} else {
			response.sendRedirect("login.html");
		}
	%>
	
</body>
</html>