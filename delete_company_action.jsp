<%@page import="java.sql.ResultSet"%>
<%@page import="Bsite_Classes.Validate"%>
<%
    String cid = request.getParameter("cid");
    ResultSet rs = new Validate().viewengineers(cid);
    while (rs.next()) {
        new Validate().deluser(rs.getString("elid"));
    }
    String chid = request.getParameter("chid");
    new Validate().deluser(chid);
%>
<script>
    alert("Company Deleted Successfully");
    window.location = "view_companies.jsp";
</script>