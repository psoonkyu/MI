<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mi.event.model.vo.Event, java.util.*, com.mi.group.model.vo.Group"%>
<%@ include file="/views/common/header.jsp" %>
<%
	Event e=(Event)request.getAttribute("event");
	String memberId=(String)request.getAttribute("memberId");
	List<Group> groupList=(List)request.getAttribute("groupList");
	
%>


<style>
	div.inline{
	display: inline-block;
  width: 200px;
  height: 100px;
  margin: 1em;}
  
  #teduri{
  	 position: absolute;
  width: 700px;
  height: 600px;
  z-index: 15;
  top: 45%;
  left: 32%;
  margin: -200px 0 0 -150px;
  /* border: 2px solid yellow; */
  }
  #title{
  	width: 230px;
  	height: 30px; 
  }
  #eUpdate{
  	width: 50px;
  	height: 30px;
  	background-color: #DCF3ED;
  }
  .dayday{
  	height: 25px;
  	width: 146px;
  }
  #inteduri{
  	/* border: 2px solid red; */
   height: 270px;
  }
  #area{
  	width: 230px;
  	height: 30px;
  }
  #memberSel
  {
  	/* border: 1px solid red; */
  	height:300px;
  }
  #date-container
  {
  	/* border: 1px solid blue; */
  }
</style>
<section id="calUpdate-container">
<form action="<%=request.getContextPath()%>/eventUpDate" method="post" enctype="multipart/form-data">
<fieldset>
<div id="teduri">
	<div id="nameUpdate">
	<input type="hidden" id="memberId" name="memberId" value=<%=memberId %> />
		<input type="text" id="title" name="title"/>
		&nbsp
		&nbsp
		<input type="submit" id="eUpdate" onclick="fn_calUpdate()" value="저장"/>
		<br/>
		<br/>
		<input type="date" id="startDate" name="startDate" class="dayday" />
		-
		<input type="date" id="endDate" name="endDate" class="dayday" />
		<br>
		<br>
		<hr>
	</div>
	<div id="inteduri">
	<div class="inline" id="date-container" style='overflow-x:hidden; width:400px; height:300px;'>
		<table id="tbl-date">
	
			<tr>
				<th>메 모</th>
				<td>
					<textarea id="memo" name="memo" style="resize: none; overflow-y:scroll"
					 cols="30" rows="20" ></textarea>
				</td>
			</tr>
			<tr>
			<tr>
				<th>파일업로드</th>
				<td>
					<input type="file" name="up_file" />
				</td>
			</tr>
			<!-- <tr>
				<th>To do List</th>
				<td>
					<textarea id="todo" name="todo" style="resize: none; overflow-y:scroll"
					 cols="30" rows="15"></textarea>
				</td>
			</tr> -->
		</table>
	</div>
	<div class="inline"id="memberSel">
		<input type="text" name="groupList" list="data"/>
                <datalist id="data">
                <%
                	for(int i=0; i<groupList.size();i++){
                %>
                	<option value=<%=groupList.get(i).getGroupName()%>></option>
                <%} %>
                </datalist>
		<table id="member-container">
			<tr>
				<th>그룹 선택</th>
				<td>
				</td>
			</tr>
		<%-- 	<%for(Group g:list) {%>
			<tr>
				<td>
					<%=g.getGroupId() %>
				</td>
			</tr>
			<%} %> --%>
		</table>
	</div>
	</div>
</div>
</fieldset>
</form>
</section>
<%@ include file="/views/common/footer.jsp" %>
