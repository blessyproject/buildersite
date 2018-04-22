<%@page import="Bsite_Classes.Validate"%>
<%
    String cid = request.getParameter("cid");
    new Validate().delagency(cid);
%>
<script>
    alert("Agencies Deleted Successfully");
    window.location = "View_agencies.jsp";
</script>