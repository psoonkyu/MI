<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
	#mList
	{
		border: 1px solid red;
		width: 200px;
		height: 300px;
		display: inline-block;
	}
	#addM
	{
		border: 1px solid blue;
		width: 200px;
		height: 300px;
		display: inline-block;
	}
	#teduri{
		border: 1px solid black;
		width: 410px;
		height: 360px;
	}
	#anteduri
	{
		border: 1px solid green;
		width: 410px;
		height: 300px;
	}
	#gNamebar
	{
		width:170px;
		height: 30px;
	}
	#gUpdate
	{
		height:35px;
	}

</style>
<section id="calUpdate-container">
<form action="<%=request.getContextPath()%>/groupUpdate" method="post">
<div id="teduri">
		<input type="text" id="gNamebar" required placeholder="그룹 이름" />
		&nbsp
		&nbsp
		<input type="submit" id="gUpdate" onclick="fn_gUpdate()" value="저장"/>
		<br/>
		<br>
		<div id="anteduri" >
		<div id="mList">
		<table>
			<tr>
				<td>
					<input type="text" id="searchId" placeholder="아이디검색"/>
				</td>
			</tr>

		</table>
		</div>
		<div id="addM">
			<table>
				<tr>
					<td>
					</td>
				</tr>
			</table>
		
		</div>
</div>
</div>
</form>
</body>
</html>