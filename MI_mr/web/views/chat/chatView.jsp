<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.mi.chat.model.vo.Chat"%>
<!DOCTYPE html>
<html>
<head>
<% List<Chat> list = (List<Chat>) request.getAttribute("list"); %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="chatroomBorder">
		<table id="chatroom">
		<%for (Chat c : list) {%>
		<tr>
			<td><%=c.getMemberName() %></td>
			<td><%=c.getChatContent() %></td>
			<td><%=c.getChatTime() %></td>
		</tr>
		<%} %>
		</table>
	</div>
</body>
</html>