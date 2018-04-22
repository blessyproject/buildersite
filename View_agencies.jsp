<%@page import="Bsite_Classes.Validate"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Construction Company</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link href="stylesheet/style.css" rel="stylesheet" type="text/css" />
    </head>
    <script>
        function rmvfn(cid)
        {
            var a = confirm("Are you sure ?")
            if (a === true)
            {
                window.location = "./delete_agency_action.jsp?cid=" + cid;
            }
        }
    </script>
    <body>
        <div id="container">
            <div class="header">
                <div class="topmenu">
                    <ul>
                        <li><a href="index.html">Welcome Administrator</a></li>
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
                    <div class="mydiv" style="height: 380px;width:1024px;overflow: auto;">
                        <h1>Agencies Registered</h1>
                        <table width="700">
                            <tr height="40">
                                <th><center>Id</center></th>
                                <th><center>Agency Name</center></th>
                                <th><center>Phone No.</center></th>
                                <th><center>Email</center></th>
                                <th><center>Action</center></th>
                            </tr>
                            <%
                                ResultSet rs = new Validate().viewagencies();
                                while (rs.next()) {%>
                            <tr height="40">
                                <td><center><%=rs.getString("id")%></center></td>
                                <td><center><%=rs.getString("fname")%></center></td>
                                <td><center><%=rs.getString("phno")%></center></td>
                                <td><center><%=rs.getString("emid")%></center></td>
                                <td><center><input type="button" value="Remove" onclick="rmvfn('<%=rs.getString("id")%>')"/></center></td>
                            </tr>
                            <%}%>
                        </table>
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
