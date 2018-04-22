<%@page import="Bsite_Classes.Validate"%>
<%
    String fname = request.getParameter("fname");
    String uname = request.getParameter("uname");
    String pwd = request.getParameter("pwd");
    String emid = request.getParameter("emid");
    String phno = request.getParameter("phno");
    String address = request.getParameter("add");
    int status = 1;
    String role = "chead";
    new Validate().insertusrdet(fname, uname, pwd, emid, phno, address, status, role);
    String cname = request.getParameter("cname");
    String cloc = request.getParameter("cloc");
    String cno = request.getParameter("cno");
    String cemid = request.getParameter("cemid");
    int chid = new Validate().getid(uname);
    new Validate().insertcompany(cname, cloc, cno, cemid, chid);
%>
<script>
    alert("Company Registered Successfully");
    window.location = "admin_main_page.jsp";
</script>