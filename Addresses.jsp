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
<TITLE>ȸ�� ����</TITLE>
</HEAD>
<BODY>
	����ó�� �Է��Ͻʽÿ�.
	<FORM ACTION=Agreements.jsp METHOD=POST>
		�ּ�: <INPUT TYPE=TEXT NAME=ADDRESS><BR> 
		��ȭ��ȣ: <INPUT TYPE=PASSWORD NAME=TELNO><BR> 
		�̸���: <INPUT TYPE=TEXT NAME=EMAIL><BR> 
		<INPUT TYPE=SUBMIT VALUE='Ȯ��'>
	</FORM>
</BODY>
</HTML>