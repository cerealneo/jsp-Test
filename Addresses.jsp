<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
request.setCharacterEncoding("euc-kr");
String id = request.getParameter("ID");
String password = request.getParameter("PASSWORD");
String name = request.getParameter("NAME");
session.setAttribute("ID", id);
session.setAttribute("PASSWORD", password);
session.setAttribute("NAME", name);
%>
<HTML>
<HEAD>
<TITLE>회원 가입</TITLE>
</HEAD>
<BODY>
	연락처를 입력하십시오.
	<FORM ACTION=Agreements.jsp METHOD=POST>
		주소: <INPUT TYPE=TEXT NAME=ADDRESS><BR> 
		전화번호: <INPUT TYPE=PASSWORD NAME=TELNO><BR> 
		이메일: <INPUT TYPE=TEXT NAME=EMAIL><BR> 
		<INPUT TYPE=SUBMIT VALUE='확인'>
	</FORM>
</BODY>
</HTML>