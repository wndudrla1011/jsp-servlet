<%@page import="java.util.Enumeration"%>
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
		Object s1 = session.getAttribute("mySessionName");
		String mySession = (String) s1;
		out.println(mySession + "<br>");
		
		Object s2 = session.getAttribute("myNum");
		int myNum = (Integer) s2;
		out.println(myNum + "<br>");
		
		out.println("*********************** <br>");
		
		String sName;
		String sValue;
		Enumeration enumeration = session.getAttributeNames();
		while (enumeration.hasMoreElements()) {
			sName = enumeration.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " +sName + "<br>");
			out.println("sValue : " +sValue + "<br>");
		}
		
		out.println("*********************** <br>");
		
		String sessionID = session.getId(); // 식별값
		out.println("sessionID : " + sessionID + "<br>");
		int timeout = session.getMaxInactiveInterval(); // 유효 시간
		out.println("timeout : " + timeout + "<br>");
		
		out.println("*********************** <br>");
		
		session.removeAttribute("mySessionName"); // 세션의 특정 데이터 삭제
		Enumeration enumeration1 = session.getAttributeNames();
		while (enumeration1.hasMoreElements()) {
			sName = enumeration1.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " +sName + "<br>");
			out.println("sValue : " +sValue + "<br>");
		}
		
		out.println("*********************** <br>");
		
		session.invalidate(); // 세션의 모든 데이터 삭제
		if (request.isRequestedSessionIdValid()) {
			out.println("session valid");
		} else {
			out.println("session invalid");
		}
	%>

	

</body>
</html>