<%@page import="vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터형</title>
</head>
<body>
	<h1>데이터형</h1>
	<h3>JSP</h3>
	<%--JSP방식으로 attribute를 받아올 때--%>
	<%  
		// 서블릿에서 설정한 sVal, nullVal, vo 를 받아와서 출력
		String sVal = (String)request.getAttribute("sVal");
		Object nullVal = request.getAttribute("nullVal");
		UserVo vo = (UserVo)request.getAttribute("vo");
		// Attribute를 받아올 대 Attribute 객체를 강제로 Casting 해야한다 -> 불안전, 코드복잡
	%>
	<ul>
		<li>문자열 : <%= sVal %></li>
		<li>null : <%= nullVal %></li>
		<li>UserVo : <%= vo %></li>
	</ul>
	
	<h3>EL 방식</h3>
	<!-- servlet에서 넘어온 값들을 표현할때 사용한다. java보다 간결하다 -->
	<!-- 보다 더 중요한 차이점은 특별한 경우가 아니면 TypeCasting을 하지 않아도 된다 -->
	<!-- Attribute에 담긴 객체가 어떤 타입이든 상관없이 자동으로 캐스팅, null값은 출력하지 않는다. -->
	<ul>
		<li>정수형 : ${iVal }</li>
		<li>실수형 : ${fVal }</li>
		<li>논리형 : ${bVal }</li>
		<li>문자형 : ${sVal }</li>
		<li>null : ${nullVal }</li>
		<li>UserVo : ${vo }</li>
	</ul>
	</p>
</body>
</html>