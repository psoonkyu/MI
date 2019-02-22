<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.mi.event.model.vo.* " %>
<%@ include file="/views/common/header.jsp" %>
<link href='<%=request.getContextPath() %>/css/fullcalendar.min.css' rel='stylesheet' />
<link href='<%=request.getContextPath() %>/css/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src='<%=request.getContextPath() %>/js/moment.min.js'></script>
<script src='<%=request.getContextPath() %>/js/jquery.min.js'></script>
<script src='<%=request.getContextPath() %>/js/fullcalendar.min.js'></script>

<%
	String defaultToday=(String)request.getAttribute("defaultToday");
	String memberId=(String)request.getAttribute("memberId");
	List<Event> list=(List<Event>)request.getAttribute("list");
	
	//그룹이름:색  key-value로 맵에 저장
	Map<String, String> map=new HashMap<String, String>();
	String Gcolor="";
	for(int i=0;i<list.size();i++){
		if(list.get(i).getGroupId()==null){
			Gcolor="RGB(236,056,067)";
			map.put("null", Gcolor);
		}
		else{
			switch(list.get(i).getGroupId()){
			case "G1" : Gcolor="RGB(236,056,067)"; break;
			case "G2" : Gcolor="RGB(247,193,000)"; break;
			case "G3" : Gcolor="RGB(000,186,201)"; break;
			case "G4" : Gcolor="RGB(140,124,091)"; break;
			case "G5" : Gcolor="RGB(178,209,053)"; break;
			case "G6" : Gcolor="RGB(124,089,119)"; break;
			}
			map.put(list.get(i).getGroupId(), Gcolor);
		}
		
	}
	System.out.println(map);
	
%>
<script>
var eventDataset=[
	<%
		for(int i=0;i<list.size();i++){
			if(i<list.size()-1){
	%>
				{
					"id":'<%=list.get(i).getEventId()%>',
					"title":'<%=list.get(i).getTitle()%>',
					"start":'<%=list.get(i).getStartDate()%>',
					"end":'<%=list.get(i).getEndDate()%>',
					"color":'<%=map.get(list.get(i).getGroupId())%>'
				},
				<%
			}else{%>
				{
					"id":'<%=list.get(i).getEventId()%>',
					"title":'<%=list.get(i).getTitle()%>',
					"start":'<%=list.get(i).getStartDate()%>',
					"end":'<%=list.get(i).getEndDate()%>',
					"color":'<%=map.get(list.get(i).getGroupId())%>'
				}
			<%}
		}%>
	];

  $(document).ready(function() {

    $('#calendar').fullCalendar({
      header: {
        left: 'prev',
        center: 'title',
        right: 'today, next'
      },
      defaultDate: '<%=defaultToday%>',
      navLinks: false, // can click day/week names to navigate views
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events:eventDataset,
      eventClick: function(event) {
    	    console.log(event);
    	    
    	  }
    });

  });

</script>
<style>

 body {
    margin: 20px 10px;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width:90%;
    max-width:500px;
    margin: 10px 20px;
  }
  aside{
  	width:70%;
  	float:right;

</style>
</head>
<body>
<aside>
  <div id='calendar'></div>
</aside>
</body>
<%@ include file="/views/common/footer.jsp" %>

</html>
