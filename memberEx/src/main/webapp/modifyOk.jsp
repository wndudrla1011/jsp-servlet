<%@page import="com.javalec.ex.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="dto" class="com.javalec.ex.MemberDTO" scope="page" />
<jsp:setProperty name="dto" property="*" />

<%
	String id = (String)session.getAttribute("id");
	dto.setId(id);
	
	MemberDAO dao = MemberDAO.getInstance();
	int ri = dao.updateMember(dto);
	
	if (ri == 1) { // 수정 성공
%>
		<script language="javascript">
		alert("정보수정 되었습니다.");
		document.location.href="main.jsp";
		</script>
<%
	} else { // 수정 실패
%>
		<script language="javascript">
		alert("정보수정 실패 입니다.");
		history.go(-1);
		</script>
<%
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>