<%@page import="Bsite_Classes.Validate"%>
<%
    String fname = request.getParameter("fname");
    String uname = request.getParameter("uname");
    String pwd = request.getParameter("pwd");
    String emid = request.getParameter("emid");
    String phno = request.getParameter("phno");
    String address = request.getParameter("add");
    int status = 1;
    String role = "Engineer";
    new Validate().insertusrdet(fname, uname, pwd, emid, phno, address, status, role);
    int elid = new Validate().getid(uname);
    int ecid = Integer.parseInt(session.getAttribute("cid").toString());
    new Validate().insertengdet(elid, ecid);
%>
<script>
    alert("Engineer Registered Successfully");
    window.location = "chead_main_page.jsp";
</script>