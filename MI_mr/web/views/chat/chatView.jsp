<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.mi.chat.model.vo.Chat, com.mi.member.model.vo.Member"%>
<!DOCTYPE html>
<html>
<head>
<% 
	List<Chat> list = (List<Chat>) request.getAttribute("list"); 
  	Member loginMember = (Member) session.getAttribute("loginMember");
  	out.println(loginMember);
%>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>채팅방</title>
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
	
	<!-- 메시지 표시 영역 -->
    <textarea id="messageTextArea" readonly="readonly" rows="10" cols="45"></textarea><br />
    <!-- 송신 메시지 텍스트박스 -->
    <input type="text" id="messageText" size="50" />
    <!-- 송신 버튼 -->
    <input type="button" value="Send" onclick="sendMessage()" id="send"/>
	
	<% if (loginMember != null) { %>
    <script type="text/javascript">
    
        //웹소켓 초기화
        var url = "ws://" + document.location.host +"/MI_mr/broadsocket?username=<%=loginMember.getMemberId()%>";
        console.log(url);
        var webSocket = new WebSocket(url);
        <%-- var webSocket = new WebSocket("ws://localhost:9090/MI_mr/broadsocket?username=<%=loginMember.getMemberId()%>"); --%>
        var messageTextArea = document.getElementById("messageTextArea");
        //메시지가 오면 messageTextArea요소에 메시지를 추가한다.
        webSocket.onmessage = function processMessge(message){
        	console.log(message);
        	/*
        	MessageEvent
				bubbles: false
				cancelBubble: false
				cancelable: false
				composed: false
				currentTarget: WebSocket {url: "ws://localhost:9090/MI_mr/broadsocket?username=miri", readyState: 1, bufferedAmount: 0, onopen: null, onerror: null, …}
				data: "{"username":"miri","message":"sadf"}"
				defaultPrevented: false
				eventPhase: 0
				isTrusted: true
				lastEventId: ""
				origin: "ws://localhost:9090"
        	*/
            //Json 풀기
            var jsonData = JSON.parse(message.data);
           	switch(jsonData.type) {
           	case "message":
           		console.log("this is message : " + jsonData.content);
           		console.log($("#chatroom tr:last-child").html());
           		console.log(jsonData.time);
           	}
           	/*
           	Object
				message: "test"
				username: "miri"
           	*/
           	/* console.log(jsonData.message + " : " + jsonData.username);
            
            if(jsonData.message != null) {
                messageTextArea.value += jsonData.username + " : " + jsonData.message + "\n";
            }; */
        }
        //메시지 보내기
        function sendMessage(){
            var messageText = document.getElementById("messageText");
            // ajax 활용 chat 데이터 insert, type: message/alarm 중 message로 데이터 전송
            webSocket.send(JSON.stringify({"type" : "message", "content" : messageText.value, "time" : new Date()}));
            messageText.value = "";
        }
        
        $("#messageText").keyup(function(){
        	if (event.key == "Enter") {
        		$("#send").trigger("click");
        	}
        });
    </script>
    <%} %>
	
	<script>
	function addChat(memberName, chatContent, chatTime) {
		/* 스크롤바 위치 위에서부터 scrollHeight만큼 내림
		$("#chatroomBorder").scrollTop($("#chatroomBorder")[0].scrollHeight); */ 
	}
	
	</script>
</body>
</html>