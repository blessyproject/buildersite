<%@page import="Bsite_Classes.Validate"%>
<%
    String pname = request.getParameter("pname");
    String pcat = request.getParameter("pcat");
    String ppu = request.getParameter("ppu");
    String pstock = request.getParameter("pstock");
    int agid = new Validate().getid(session.getAttribute("uname").toString());
    String pid = session.getAttribute("maxid").toString();
    new Validate().updateproduct(pname, pcat, ppu, pstock, agid, pid);
    session.removeAttribute("maxid");
%>
<script>
    alert("Inserted Product");
    window.location = 'agency_main_page.jsp';
</script>