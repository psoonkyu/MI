<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<style>
 #teduri{
  	 position: absolute;
  width: 675px;
  height: 400px;
  z-index: 15;
  top: 45%;
  left: 32%;
  margin: -200px 0 0 -150px;
  border: 2px solid red;
  }
 
 #glist
 {
 	overflow-x:hidden;
 	width: 300px;
 	height: 400px;
 	border: 2px solid blue;
 }
 #changeView{
 	width:350px;
 	height: 400px;
 	border: 2px solid yellow;
 }
 .inline
 {
 	display: inline-block;
 	/* margin: 1em; */
 }
 #gth{
 	width:290px;
 	height : 40px;
 	font-size: 1.5em;
 }
</style>
<section id="groupUpdate-container">
<form action="<%=request.getContextPath()%>/groupList" method="post">
	<div id="teduri" name="teduri">
		<div class="inline" id="glist">
		<table width="295px"; height="45px";>
			<tr id="gtr">
				<th id="gth">채팅 목록</th>
			</tr>
			<tr>
				<td align="center">
					채팅 목록 들어갈곳
				</td>
			</tr>
			<tr>
				<td align='right' cellpadding=0 cellspacing=0 >
					<img src="plus.png" width="30px" id="plus"/>
				</td>
			</tr>
				
		</table>
		</div>
	<div class="inline" id="changeView">
	
	</div>
	</div>
</form>
</section>
<%@ include file="/views/common/footer.jsp" %>