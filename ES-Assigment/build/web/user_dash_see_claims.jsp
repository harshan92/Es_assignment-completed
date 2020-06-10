<%
    HttpServletResponse httpResponse = (HttpServletResponse)response;

httpResponse.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); 
response.addHeader("Cache-Control", "post-check=0, pre-check=0");
httpResponse.setHeader("Pragma","no-cache"); 
httpResponse.setDateHeader ("Expires", 0); 
if (session.getAttribute("Member") == null ) {                               
                 response.sendRedirect("index.jsp");
                 return;
 }
    %>
<%@page import="Database.Entities.Members"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
    <head>
	<title>NoPay Drivers Associations</title>
        <meta charset="utf-8" />
        <link rel="icon" href="images/favicon-car.png" sizes="16x16 32x32" type="image/png">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">
            
            <!-- Main -->
            <div id="main">
		<div class="inner">
                    <!-- Header -->
                    <header id="header">
			<a href="user_dash.jsp" class="logo"><strong>User Dash</strong></a>
			<ul class="icons">              
                        <jsp:include page="LoginStatus.jsp"/>
                        &ensp;
<!--			<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
			<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
			<li><a href="#" class="icon fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
			<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
			<li><a href="#" class="icon fa-medium"><span class="label">Medium</span></a></li>-->
			</ul>
                    </header>

		<%
                    Members member = (Members)session.getAttribute("Member");
                    if(member == null)
                    {
                        out.print("<h2> Please Signin first</h2>");
                    }else
                    {
                %>
                        
                        <jsp:include page="./user_dash_see_claims_content.jsp"/>
                     <%}%>

                   
                   

                </div> 
            </div>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
