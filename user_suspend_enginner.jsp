<%@page import="Bsite_Classes.Validate"%>
<%
    String rid = request.getParameter("rid");
    new Validate().suspendagency(rid);
%>
<script>
    alert("Engineer Suspended");
    window.location = 'user_hired_engineers.jsp';
</script>