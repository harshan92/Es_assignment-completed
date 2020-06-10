
<%@page import="Database.Entities.Members"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>NoPay Drivers Associations</title>
		<meta charset="utf-8" />
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
									<a class="logo" href="index.jsp"><strong>Home</strong></a>
									  <ul class="icons">
                                                                                <jsp:include page="LoginStatus.jsp"/>
									</ul>
								</header>
                                                                   

							<!-- Content -->
								<section>
									<header class="main">
										<h1>Sign In</h1>
									</header>

								<div class="container">
                                                                    
            <%
                // This wiill auto enter username and password	
                Members member = (Members)session.getAttribute("Member");
                out.print("<div class='col-md-6 col-md-offset-3'>");
                   
                if(member == null)
                {
                   out.print(" <form action='SignInController' method='post'>");
                   out.print("      <div class='form-group'>");
                   out.print("          <label for='name'>Username:</label>"); 
                   out.print("          <input type='text' class='txtbox' id='username' name='username'>");
                   out.print("      </div>");
                   out.print("      <div class='form-group'>");
                   out.print("          <label for='name'>Password:</label>");
                   out.print("          <input type='password' class='txtbox' id='password' name='password'>");
                   out.print("      </div>");
                   out.print("      <br/>");
                   out.print("      <button type='submit' class='btn btn-primary '>Submit</button>");
                   out.print("  </form>");
                }else
                {
                     out.print("<h2> Please Signout first</h2>");
                }
                

                out.print("</div>");
                
            %>
            

									
								</section>

						</div>
					</div>

				

					

							
							

							

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