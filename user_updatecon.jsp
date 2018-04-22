<%@page import="Bsite_Classes.Validate"%>
<%
    String cid = session.getAttribute("uid").toString();
 
    String fname = request.getParameter("fname");
    String emid = request.getParameter("emid");
    String phno = request.getParameter("phno");
    new Validate().updatedet(cid, fname, emid, phno);
   
%>
<script>
    alert(" Details Updated Successfully");
    window.location = "User_main_page.jsp";
</script>