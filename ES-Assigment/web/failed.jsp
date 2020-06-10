
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
										<h1>Sign Up Failed!</h1>
									</header>
                                                                    <br>
                                                                    <p><%
                                                                        out.print(session.getAttribute("msg"));
                                                                        %></p>
                                                                    <a class="button" href="signup.jsp">Back</a>

            
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