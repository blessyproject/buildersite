<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Construction Company</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link href="stylesheet/style.css" rel="stylesheet" type="text/css" />
        <script src="js/validations.js" type="text/javascript"></script>
    </head>
    <script>
        function performAjaxSubmit() {
            var sampleFile = document.getElementById("upldcvrpic").files[0];//changing the array value we can support multiple file upload
            var formdata = new FormData();
            formdata.append("sampleFile", sampleFile);
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "insert_product_pic.jsp", true);
            xhr.send(formdata);
            xhr.onload = function (e) {
                if (this.status === 200) {
                    alert(this.responseText);
                }
            };
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
                        <h1>Add Product</h1>
                        <form action="add_product_action.jsp" method="post">
                            <table>
                                <tr><td><label>Product Image :</label></td><td><input type="file" id="upldcvrpic"/>&nbsp;&nbsp;<input type="button" value="Upload" onclick="performAjaxSubmit()"/></td></tr>
                                <tr><td><label>Product Name :</label></td><td><input type="text" name="pname" required/></td></tr>
                                <tr><td><label>Category :</label></td><td><input type="text" name="pcat" required/></td></tr>
                                <tr><td><label>Price Per Unit :</label></td><td><input type="number" name="ppu"required onkeypress="return isNumberKey(event)"/></td></tr>
                                <tr><td><label>Stock :</label></td><td><input type="text" name="pstock" required onkeypress="return isNumberKey(event)"/></td></tr>
                                <tr height="40"><td><input class="btn" type="submit" value="Add"/>&nbsp;&nbsp;<input class="btn" type="reset" value="Reset"/></td></tr>
                            </table>
                        </form>
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
