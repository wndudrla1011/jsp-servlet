<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%!
		Connection connection;
		Statement statement;
		ResultSet resultSet;
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String uid = "c##scott";
		String upw = "tiger";
		String query = "select * from member";
	%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		try{
			
			Class.forName(driver);	// 드라이버 연결
			connection = DriverManager.getConnection(url, uid, upw);	// DB 접속을 위한 Connection 획득
			statement = connection.createStatement(); // 쿼리를 수행하기 위해 statement 획득
			resultSet = statement.executeQuery(query); 	// 쿼리 후 결과 얻기 
			
			while(resultSet.next()){
				String id = resultSet.getString("id");
				String pw = resultSet.getString("pw");
				String name = resultSet.getString("name");
				String phone = resultSet.getString("phone");
				
				out.println("아이디 : " + id + ", 비밀번호 : " + pw + ", 이름 : " + name + ", 전화번호 : " + phone + "<br />");
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally { // 자원 해제
			try{
				if(resultSet != null) resultSet.close();
				if(statement != null) statement.close();
				if(connection != null) connection.close();
			} catch(Exception e2){
				e2.printStackTrace();
			}
		}
	%>

</body>
</html>