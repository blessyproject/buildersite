<%@page import="Bsite_Classes.Validate"%>
<%
    String aname = request.getParameter("aname");
    String uname = request.getParameter("uname");
    String pwd = request.getParameter("pwd");
    String emid = request.getParameter("emid");
    String phno = request.getParameter("phno");
    String address = request.getParameter("add");
    int status = 1;
    String role = "agency";
    new Validate().insertusrdet(aname, uname, pwd, emid, phno, address, status, role);
%>
<script>
    alert("Agency Registered Successfully");
    window.location = "admin_main_page.jsp";
</script>