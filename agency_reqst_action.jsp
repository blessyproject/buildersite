<%@page import="Bsite_Classes.Validate"%>
<%
    String rid = request.getParameter("rid");
    String act = request.getParameter("act");
    if (act.equals("a")) {
        new Validate().updaterqstat(rid);
%>
<script>
    alert("Request Accepted");
    window.location = 'agency_requests.jsp';
</script>
<%
} else {
    new Validate().rmvrqst(rid);
%>
<script>
    alert("Request Rejected");
    window.location = 'agency_requests.jsp';
</script>
<%
    }
%>