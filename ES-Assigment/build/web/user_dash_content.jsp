<%--
    Document   : user_dash_conent
    Created on : Jul 15, 2018, 1:31:10 AM
    Author     : sean
--%>



<%@page import="java.text.DecimalFormat"%>
<%@page import="Database.Entities.Members"%>
<!-- Banner -->
<section id="banner">
    <%
        Members member = (Members)session.getAttribute("Member");
        DecimalFormat df=new DecimalFormat("0.00");
                
        
        %>
                        <div class="content">
                                <header>
                                    <h2>Nopay Insurance</h2>
                                        <p>Welcome</p>
                                </header>
                                <p>Our settlement history speaks for itself ? over Rs. 6 billion paid in claims and stated capital of Rs. 4.8 billion. Our commitment to our customers is served by our 3000+ employee base who have been pacesetters in customer service and in developing benefits that go the extra mile. This has all enabled us to achieve many firsts in Sri Lanka, many of which were achieved in our early years of operations</p>
                                <ul class="actions">

                                </ul>
                                <hr>
                                <h4>Your Balance: Rs <%=df.format(member.getBalance()) %></h4>
                        </div>
                        <span class="image object">
<!--										<img src="images/pic10.jpg" alt="" />-->
<img src="http://www.leiebilispania.no/wp-content/uploads/2014/03/Aldersgrense-leiebil-spania.jpg"/>
                        </span>
                </section>
</div>
    </div>
<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">
        <!-- Menu -->
        <nav id="menu">
            <header class="major">
                <h2>Menu</h2>
            </header>
            <ul>
                <%
//                    Members member=(Members)session.getAttribute("Member");
//                    session.setAttribute("Member", member);
                    %>
                <li><a href="index.jsp">Home Page</a></li>
                <li><a href="user_dash_claims.jsp">Make Claims</a></li>
                <li><a href="user_dash_see_claims.jsp">See Claims</a></li>  
                <li><a href="make_payment.jsp">Make Payment</a></li>
            </ul>
        </nav>
</div>
                                        </div>
                


       
