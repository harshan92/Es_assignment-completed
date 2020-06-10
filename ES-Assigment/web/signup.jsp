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
										<h1>Sign Up</h1>
									</header>

              <%
                // This wiill auto enter username and password	
                Members member = (Members)session.getAttribute("Member");
                out.print("<div class='container'>");
                   
                if(member == null)
                {
                   

                    out.print("            <div class='col-md-6 col-md-offset-3'>   ");
                    out.print("            <form action='SignupController' method='post'>");
                    out.print("                <div class='form-group'>");
                    out.print("                    <label for='name'>Name:</label>");
                    out.print("                    <input type='text' class='form-control' id='name' name='name'>");
                    out.print("                </div>");
                    out.print("                <div class='form-group'>");
                    out.print("                    <label for='pwd'>Address:</label>");
                    out.print("                    <input type='text' class='form-control' id='address' name='address'>");
                    out.print("                </div>");
                    out.print("                </div>");
                    out.print("                <div class='form-group'>");
                    out.print("                    <label for='pwd'>Username:</label>");
                    out.print("                    <input type='text' class='form-control' id='username' name='username'>");
                    out.print("                </div>");
                    out.print("                <div class='form-group'>");
                    out.print("                    <label for='dob'>Date Of Birth</label>");
                    out.print("                    <input type='date' class='form-control' id='dob' name='dob'>");
                    out.print("                </div><br>");
                    out.print("                <label>A password will be generated for you.<br/> You can retrieve it from the front desk after paying the registration fees</label>");
                    out.print("                <button type='submit' class='btn btn-primary '>Submit</button>");
                    out.print("            </form> ");
                   
                } else
                {
                     out.print("<h2> Please Signout first</h2>");
                }
                
                 out.print("            </div>");
       
                
            %>
        </div>

									
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