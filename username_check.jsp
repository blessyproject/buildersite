<%@page import="Bsite_Classes.Validate"%>
<%
    String username = request.getParameter("uname");
    boolean stat = new Validate().chkusrname(username);
    String var = "";
    if (stat == true) {
        var = "true";
    } else {
        var = "false";
    }
    response.setContentType("text/html");
    response.getWriter().write(var);
    response.getWriter().flush();
    response.getWriter().close();
%>