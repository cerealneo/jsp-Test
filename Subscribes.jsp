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
		writer.println("아이디: " + id);
		writer.println("패스워드: " + password);
		writer.println("이름: " + name);
		writer.println("주소: " + address);
		writer.println("전화번호: " + telNo);
		writer.println("이메일: " + email);
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