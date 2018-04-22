<%@page import="java.sql.ResultSet"%>
<%@page import="Bsite_Classes.Validate"%>
<%@page import="Bsite_Classes.Validate"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Construction Company</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link href="stylesheet/style.css" rel="stylesheet" type="text/css" />
    </head>
    <%
        int id = new Validate().getid(session.getAttribute("uname").toString());
        ResultSet rs = new Validate().getcompany(id);
        while (rs.next()) {
            session.setAttribute("cid", rs.getString("cid"));
            session.setAttribute("cname", rs.getString("cname"));
            session.setAttribute("chid", rs.getString("chid"));
    %>
    <body>
        <div id="container">
            <div class="header">
                <div class="topmenu">
                    <ul>
                        <li><a href="index.html">Welcome <%=session.getAttribute("uname")%> (<%=session.getAttribute("cname")%>)</a></li>
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
                        <h1>Company Main Page</h1>
                        <ul>
                            <li><a href="add_engineer.jsp">Add Engineers</a></li>
                            <li><a href="view_engineers.jsp">View Engineers</a></li>
                            <li><a href="update_company_profile.jsp">Update Company profile</a></li>
                        </ul>
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
                <div class="footerlink"> Copyright  All rights reserved.</div>
            </div>
        </div>
        <div class="clear"></div>
        <div align=center>Developed By <a href="#"></a></div>
        <%}%>
    </body>
</html>
