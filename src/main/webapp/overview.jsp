
<%
	Integer nbHotel = (Integer) request.getAttribute("nbHotel");
    if (nbHotel == null) nbHotel = 0;
%>

<jsp:include page="header.jsp"></jsp:include>
	<h1>Hello Booking - GAE - CapeDwarf!</h1>

	<h2>App Overwiew</h2>
	<p>This app is develop to illustrate the possibility of CapeWarf.
		API uses by this app are listed below :</p>
		<span class="label label-danger">Hotels in datastore : <%=nbHotel%></span>
		<%
			if (nbHotel == 0) {
		%>
		<div class="alert alert-warning"> Use the <a href="/jsp/taskqueue.jsp">TaskQueue to add hotel</a> to the datastore</div>
		<%
			}
		%>
	</ul>

<jsp:include page="msg.jsp"></jsp:include>

<jsp:include page="sidebar.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>

