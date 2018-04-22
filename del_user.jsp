<%@page import="Bsite_Classes.Validate"%>
<%
    String uid = request.getParameter("uid");
    new Validate().deluser(uid);
%>
<script>
    alert("Deleted User Successfully");
    window.location = 'view_users.jsp';
</script>
