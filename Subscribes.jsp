<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.io.*"%>
<%
String agree = request.getParameter("AGREE");
String result = null;
if (agree.equals("YES")) {
	String id = (String) session.getAttribute("ID");
	String password = (String) session.getAttribute("PASSWORD");
	String name = (String) session.getAttribute("NAME");
	String address = (String) session.getAttribute("ADDRESS");
	String telNo = (String) session.getAttribute("TELNO");
	String email = (String) session.getAttribute("EMAIL");
	PrintWriter writer = null;
	try {
		String filePath = application.getRealPath("/WEB-INF/" + id + ".txt");
		writer = new PrintWriter(filePath);
		writer.println("���̵�: " + id);
		writer.println("�н�����: " + password);
		writer.println("�̸�: " + name);
		writer.println("�ּ�: " + address);
		writer.println("��ȭ��ȣ: " + telNo);
		writer.println("�̸���: " + email);
		result = "SUCCESS";
	} catch (IOException ioe) {
		result = "FAIL";
	} finally {
		try {
	writer.close();
		} catch (Exception e) {
		}
	}
} else {
	result = "FAIL";
}
session.invalidate();
response.sendRedirect("Result.jsp?RESULT=" + result);
%>