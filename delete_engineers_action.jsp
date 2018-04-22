<%@page import="Bsite_Classes.Validate"%>
<%
    String uid = request.getParameter("uid");
    new Validate().deluser(uid);
%>
<script>
    alert("Engineer Deleted Successfully");
    window.location = "view_engineers.jsp";
</script>