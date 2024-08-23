<%@page import="java.sql.Timestamp"%>
<%@page import="com.javalec.ex.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dto" class="com.javalec.ex.MemberDTO"/>
<jsp:setProperty name="dto" property="*" /> <!-- 자바 빈 dto의 모든 속성에 입력 폼의 값을 바인딩 -->
<%
		dto.setrDate(new Timestamp(System.currentTimeMillis())); // 가입 날짜/시간
		MemberDAO dao = MemberDAO.getInstance();
		if(dao.confirmId(dto.getId()) == MemberDAO.MEMBER_EXISTENT) { // 회원 존재 확인
%>
		<script language="javascript">
			alert("아이디가 이미 존재 합니다.");
			history.back();
		</script>
<%
		} else { // 존재하지 않는 회원 -> 회원가입 진행
			int ri = dao.insertMember(dto);
			if(ri == MemberDAO.MEMBER_JOIN_SUCCESS) { // 회원가입 성공
				session.setAttribute("id", dto.getId());
%>
			<script language="javascript">
				alert("회원가입을 축하 합니다.");
				document.location.href="login.jsp";
			</script>
<%
			} else { // 회원가입 실패
%>
			<script language="javascript">
				alert("회원가입에 실패했습니다.");
				document.location.href="login.jsp";
			</script>
<%
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