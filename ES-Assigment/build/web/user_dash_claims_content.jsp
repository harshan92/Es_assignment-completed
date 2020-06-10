<%-- 
    Document   : user_dash_claims
    Created on : Jul 15, 2018, 1:31:10 AM
    Author     : sean, harshan
--%>
<!--Import libraries-->
<%@page import="org.hibernate.Hibernate"%>
<%@page import="Database.Utils.DBAccessUtil"%>
<%@page import="Database.Entities.Members"%>
<%@page import="Database.Entities.Claims"%>
<%
//    This member session declared for get member id from logged users
    Members member = (Members)session.getAttribute("Member");
    
    
 %>
<!-- Banner -->
<section id="banner">
    <div class="content">
	<header>
            <h2><br />Make Claim</h2>
            
                <%
                    
                    String message=( String )session.getAttribute("message");
                    
//                        out.print(message);
                        
                    
                    %>
            
	</header>


<div class="col-md-6 col-md-offset-3">    
            <form action="MakeClaimsController" method="post">
               
                <div class="form-group">
                    <label for="status">Rationale:</label>
                    <input type="text" class="txtbox" id="status" name="claim_rationale" required>
                </div>
               
                    
                    <input type="hidden" class="txtbox" value="NA" id="status" name="claim_status" required>
                
                <div class="form-group">
                    <label for="name">Amount:</label>
                    <input type="text" class="txtbox" id="name" name="claim_amount">
                </div>
				<br>
                                <!--parse logged member id to claim table-->
                                <input type="hidden" name="mem_id" value="<% out.print(member.getId()); %>">
                <button type="submit" class="btn btn-primary ">Submit</button>
            </form> 
            </div>
</div>
</section>



    </div>
</div>

<!-- Sidebar -->
<div id="sidebar">
    <div class="inner">
<!--         Search 
        <section id="search" class="alt">
            <form method="post" action="#">
                <input type="text" name="query" id="query" placeholder="Search" />
            </form>
        </section>-->
        <nav id="menu">
            <header class="major">
                <h2>Menu</h2>
            </header>
            <ul>
               
                <li><a href="index.jsp">Dashboard</a></li>
                <li><a href="user_dash_claims.jsp">Make Claims</a></li>
                <li><a href="user_dash_see_claims.jsp">See Claims</a></li>  
                <li><a href="make_payment.jsp">Make Payment</a></li>
            </ul>
        </nav>
</div>
</div>


        



        