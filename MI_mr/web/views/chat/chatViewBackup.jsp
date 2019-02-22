<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.mi.chat.model.vo.Chat"%>
<%@ include file="/views/common/header.jsp" %>
<% List<Chat> list = (List<Chat>) request.getAttribute("list"); %>

<div id="chatroomBorder">

	<table id="chatroom">
	<%for (Chat c : list) {%>
	<tr>
		<td><%=c.getMemberName() %></td>
		<td><%=c.getChatContent() %></td>
		<td><%=c.getChatTime() %></td>
	</tr>
	<%} %>
</div>
<%@ include file="/views/common/footer.jsp" %>