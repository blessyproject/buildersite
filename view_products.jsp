<%@page import="Bsite_Classes.Validate"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Construction Company</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link href="stylesheet/style.css" rel="stylesheet" type="text/css" />
        <script src="js/validations.js" type="text/javascript"></script>
    </head>
    <script>
        function upfn(pid)
        {
            window.location = "./update_product.jsp?pid=" + pid;
        }
        function delfn(pid)
        {
            window.location = "./del_product_action.jsp?pid=" + pid;
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
                    <div id="prdiv">
                        <h1>Products</h1>
                        <%
                            String agid = session.getAttribute("uid").toString();
                            ResultSet rs = new Validate().getproductinfo(agid);
                            while (rs.next()) {%>
                        <div class="vwpr">
                            <img src="./retreive_product_pic.jsp?pid=<%=rs.getString("pid")%>" height="160" width="160"/>
                            <table style="position: relative;left: 220px;bottom: 170px;font: 14px sans-serif;">
                                <tr height="32"><td>Product Name :</td><td><label><%=rs.getString("pname")%></label></td></tr>
                                <tr height="32"><td>Product Category :</td><td><label><%=rs.getString("pcat")%></label></td></tr>
                                <tr height="32"><td>Price :</td><td><label><%=rs.getString("ppu")%></label></td></tr>
                                <tr height="32"><td>Stock :</td><td><label><%=rs.getString("pstock")%></label></td></tr>
                                <tr height="32"><td><input type="button" value="Update" onclick="upfn('<%=rs.getString("pid")%>')"/>&nbsp;&nbsp;<input type="button" value="Delete" onclick="delfn('<%=rs.getString("pid")%>')"/></td></tr>
                            </table>
                        </div>
                        <%}
                        %>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="workzone-right">
                    <div>
                        <div>
                            <h1>Latest News &amp; Events</h1>
                            <div class="newszone" style="margin-bottom: 10px;">
                                <div>
                                    <div>
                                        <div class="newssubheading">18th January, 2009</div>
                                        <div class="newscontent"> Nunc consectetuer diam ac odio. Pellentesque vel mauris sit amet urna malesuada ornare. Curabitur venenatis est eget arcu. Donec vestibulum. </div>
                                    </div>
                                    <div>
                                        <div class="newssubheading">18th January, 2009</div>
                                        <div class="newscontent"> Fusce tristique, nisl vel gravida venenatis, risus magna eleifend pede, id bibendum mauris metus et erat. Morbi in leo. Quisque sollicitudin sagittis est. </div>
                                    </div>
                                    <div>
                                        <div class="newssubheading">25th January, 2009</div>
                                        <div class="newscontent"> Fusce tristique, nisl vel gravida venenatis, risus magna eleifend pede, id bibendum mauris metus et erat. Morbi in leo. Quisque sollicitudin sagittis est. </div>
                                    </div>
                                    <div class="morenews"><a href="http://all-free-download.com/free-website-templates/"><img src="images/more-news.jpg" alt="" border="0" /></a></div>
                                </div>
                            </div>
                            <div class="clear"></div>
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
        <div align=center>Developed By <a href="#"></a></div>
    </body>
</html>
