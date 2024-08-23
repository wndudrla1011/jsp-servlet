<%@page import="com.javalec.ex.MemberDTO"%>
<%@page import="com.javalec.ex.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id= request.getParameter("id");
	String pw= request.getParameter("pw");
	
	MemberDAO dao = MemberDAO.getInstance();
	int checkNum = dao.userCheck(id, pw);
	if (checkNum == -1) { // 로그인하지 않은 회원
%>
		<script language="javascript">
			alert("아이디가 존재하지 않습니다.");
			history.go(-1); // 현재 페이지의 바로 직전 페이지로 이동
		</script>
<%
	} else if  (checkNum == 0) { // 로그인 실패
%>
		<script language="javascript">
			alert("비밀번호가 틀립니다.");
			history.go(-1); // 현재 페이지의 바로 직전 페이지로 이동
		</script>
<%
	} else if (checkNum == 1) { // 로그인 성공
		MemberDTO dto = dao.getMember(id);
	
		if (dto == null) {
%>
			<script language="javascript">
			alert("존재하지 않는 회원 입니다.");
			history.go(-1);
			</script>
<%
		} else {
			String name = dto.getName();
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			session.setAttribute("ValidMem", "yes");
			response.sendRedirect("main.jsp");
		}
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