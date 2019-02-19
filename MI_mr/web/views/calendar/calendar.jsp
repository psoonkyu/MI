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
					"end":'<%=list.get(i).getEndDate()%>'
				},
				<%
			}else{%>
				{
					"id":'<%=list.get(i).getEventId()%>',
					"title":'<%=list.get(i).getTitle()%>',
					"start":'<%=list.get(i).getStartDate()%>',
					"end":'<%=list.get(i).getEndDate()%>'
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
