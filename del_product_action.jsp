<%@page import="Bsite_Classes.Validate"%>
<%
    String pid = request.getParameter("pid");
    new Validate().delproduct(pid);
%>
<script>
    alert("Product Deleted Successfully");
    window.location = 'view_products.jsp';
</script>