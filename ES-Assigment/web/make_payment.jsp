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
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="icon" href="images/favicon-car.png" sizes="16x16 32x32" type="image/png">
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
//                    session.setAttribute("Member", member);
                    if(member == null)
                    {
                        out.print("<h2> Please Signin first</h2>");
                    }else{
                        
                %>
                <div class="container" style="padding-top: 30px">
                    
        <form class="col-6 offset-3" action="makePaymentController" method="post">
            <h2>Payment Gateway</h2>
         <input type="hidden" name="mem_id" value="<% out.print(member.getId()); %>">
        
        <hr>
        <div class="form-group">
      <label for="fname">Amount</label>
      <input type="text" name="amount" class="form-control" id="amount"  required>
  
        
        
    <div class="form-group">
      <label for="fname">Name of card</label>
      <input type="text" name="namecard" class="form-control" id="nameoncard"  required>
    </div>

                
  
  <div class="form-group">
    <label for="upassword">Card Number</label>
    <input type="text" name="cardno" class="form-control" id="cardno"  required>
  </div>
        
        <div class="form-group">
    <label for="upassword">CSV</label>
    <input type="text" name="cv2" class="form-control" id="csv"  required>
  </div>
        
        <div class="form-group">
    <label for="upassword">Date of Expire</label>
    <input type="text" name="doe" class="form-control" id="doe"  required>
  </div>
  
       <br>    
       <div class="form-group">
           <i class="fab fa-cc-visa" style="font-size: 48px"></i> <i class="fab fa-cc-mastercard" style="font-size: 48px"></i> <i class="fab fa-cc-amex" style="font-size: 48px"></i> <i class="fab fa-cc-paypal" style="font-size: 48px"></i>
  </div>
  
  
  <button type="submit" class="btn btn-primary float-right">Pay Now</button>
  <div class="clearfix"></div>

</form>
    <hr>
</div>
                </div>
                     <%}%>

                    

                </div> 
            </div>
	<!-- Sidebar -->
<div id="sidebar">
    <div class="inner">
        <!-- Search -->
<!--        <section id="search" class="alt">
            <form method="post" action="#">
                <input type="text" name="query" id="query" placeholder="Search" />
            </form>
        </section>-->
        <nav id="menu">
            <header class="major">
                <h2>Menu</h2>
            </header>
            <ul>
               
                <li><a href="index.jsp">Home Page</a></li>
                <li><a href="user_dash_claims.jsp">Make Claims</a></li>
                <li><a href="user_dash_see_claims.jsp">See Claims</a></li>  
                <li><a href="make_payment.jsp">Make Payment</a></li>
            </ul>
        </nav>
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
