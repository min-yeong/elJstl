<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 같은 이름 속성들이 다른 범위 객체안에 있는 경우(중복)
	pageContext.setAttribute("name","page name");
	request.setAttribute("name", "request name");
	session.setAttribute("name", "session name");
	application.setAttribute("name", "application name");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>범주우선순위</h1>
	
	<h2>자바문법</h2>
	page name = <%=pageContext.getAttribute("name") %> <br/>
    request name = <%=request.getAttribute("name") %> <br/>
    session name = <%=session.getAttribute("name") %> <br/>
    application name = <%=application.getAttribute("name") %> <br/>
	
	<h2>el</h2>                   
	<!-- 여러 범위 영역에 같은 이름의 객체가 있는 경우, 우선순위는 1.page 2.request 3.session 4.application -->
	<p>name(Scope 없이) : ${name }</p> 
	<!-- 현재 경우에서는 page영역의 name 출력 -> 여러 영역에 같은 이름의 다른 값이 설졍되어있을 경우 scope영역을 지정하여 접근가능 -->
	<ul>
		<li>page scope : ${pageScope.name }</li>
		<li>request scope : ${requestScope.name }</li>
		<li>session scope : ${sessionScope.name }</li>
		<li>application scope : ${applicationScope.name }</li>
	</ul>
	<br/>
	
</body>
</html>