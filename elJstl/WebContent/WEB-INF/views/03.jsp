﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>파라미터</h1>
	
	<!-- localhost:8080/elJstl/03?id=you&pw=1111&name=재석&num1=100&num2=200 -->	
	
	<h2>자바문법 parameter값 꺼내쓰기</h2>	
	<% 
	String id= request.getParameter("id");
	String pw= request.getParameter("pw");
	String name= request.getParameter("name");
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
		
	id = <%=id %> <br/>
    pw = <%=pw %> <br/>
    name = <%=name %> <br/>
	<%=num1 + num2 %> <br/><br/><br/>
		
		
	<h2>el parameter값 꺼내쓰기</h2>
	<%-- EL에서는 param 이라는 객체로 요청으로부터 넘어온 파라미터에 접근할 수 있다. --%>
	<ul>
		<li>id : ${param.id }</li>
		<li>pw : ${param.pw }</li>
		<li>name : ${param.name }</li>
		<li>num1 : ${param.num1 }</li>
		<li>num2 : ${param.num2 }</li>
		
		<li>num1+num2 : ${param.num1 + param.num2 }</li>
		<%-- request의 파라미터 값은 항상 String 타입을 갖지만 JSP는 자동형변환이 이뤄지기 때문에 가능, 안전하고 가독성증가 --%>
	</ul>
	<br/>	
</body>
</html>