<%@page import="Bsite_Classes.Validate"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Construction Company</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link href="stylesheet/style.css" rel="stylesheet" type="text/css" />
        <script src="lightbox/js/jquery-1.11.0.min.js" type="text/javascript"></script>
        <script src="lightbox/js/lightbox.min.js" type="text/javascript"></script>
        <link href="lightbox/css/lightbox.css" rel="stylesheet" type="text/css"/>
    </head>
    <%
        String eid = request.getParameter("eid");
        String ecid = request.getParameter("ecid");
    %>
    <script>
        function hirefn(eid)
        {
            window.location = 'hire_engineers_action.jsp?eid=' + eid;
        }
    </script>
    <body>
        <div id="container">
            <div class="header">
                <div class="topmenu">
                    <ul>
                        <li><a href="index.html">Welcome <%=session.getAttribute("uname")%></a></li>
                        <li style="border:none;"><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>
            <div class="clear"></div>
            <div class="banner">
                <div class="logozone"> <a href="#"><img src="images/logo.jpg" alt="" border="0" /></a> </div>
            </div>
            <div class="clear"></div>
            <div class="workzone">
                <div class="workzone-left">
                    <div class="mydiv">
                        <h1>Engineer Details</h1>
                        <table width="400">
                            <%
                                ResultSet rs = new Validate().getinfo(eid);
                                while (rs.next()) {%>
                            <tr height="40"><td><input type="button" value="Hire" onclick="hirefn('<%=eid%>')"/></td></tr>
                            <tr height="40"><td>Full Name :</td><td><%=rs.getString("fname")%></td></tr>
                            <tr height="40"><td>Email ID :</td><td><%=rs.getString("emid")%></td></tr>
                            <tr height="40"><td>Phone No. :</td><td><%=rs.getString("phno")%></td></tr>
                            <tr height="40"><td>Address :</td><td><%=rs.getString("address")%></td></tr>
                            <%
                                ResultSet rs1 = new Validate().getcompanyinfo(ecid);
                                while (rs1.next()) {%>
                            <tr height="40"><td>Company :</td><td><%=rs1.getString("cname")%></td></tr>
                            <%}
                                }
                            %>
                        </table>
                        <br/>
                        <h1>Portfolios</h1>
                        <div id="pfl">
                            <ul>
                                <%
                                    ResultSet rs2 = new Validate().getportfolio(eid);
                       
                                <li><a href="./retreive_portfolio.jsp?pid=<%=rs2.getString("pid")%>" data-lightbox="gallery" data-title="Portfolio"><img width="150" height="150" src="./retreive_portfolio.jsp?pid=<%=rs2.getString("pid")%>"/></a></li>
                                    <%}
                                    %>
                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="footer">
            <div class="footerinside">
                <div class="footerlink"> Copyright All rights reserved.</div>
            </div>
        </div>
        <div class="clear"></div>
        <div align=center>Developed By <a href="#"> </a></div>
    </body>
</html>
