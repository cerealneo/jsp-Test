<%@page contentType="text/html; charset=euc-kr"%>
<%
request.setCharacterEncoding("euc-kr");
String address = request.getParameter("ADDRESS");
String telNo = request.getParameter("TELNO");
String email = request.getParameter("EMAIL");
session.setAttribute("ADDRESS", address);
session.setAttribute("TELNO", telNo);
session.setAttribute("EMAIL", email);
%>
<HTML>
<HEAD>
<TITLE>ȸ�� ����</TITLE>
</HEAD>
<BODY>
	<H3>���</H3>
	----------------------------------------------------------
	<BR> 1. ȸ�� ������ �� ����Ʈ�� ��� ���ؼ��� ���˴ϴ�.
	<BR> 2. �� ����Ʈ�� ���� ��� �����ϴ� ȸ���� Ż�� ó���մϴ�.
	<BR> ----------------------------------------------------------
	<BR>
	<FORM ACTION=Subscribes.jsp METHOD=POST>
		���� ����� �����Ͻʴϱ�? <INPUT TYPE=RADIO NAME=AGREE VALUE=YES>������ <INPUT
			TYPE=RADIO NAME=AGREE VALUE=NO>�������� ����<BR>
		<BR> <INPUT TYPE=SUBMIT VALUE='Ȯ��'>
	</FORM>
</BODY>
</HTML>