<%-- 
    Document   : user_dash_claims
    Created on : Jul 15, 2018, 1:31:10 AM
    Author     : sean, harshan
--%>
<%@page import="java.text.DecimalFormat"%>
<!--Import libraries-->
<%@page import="Database.Models.ClaimModel"%>
<%@page import="Database.Entities.Members"%>
<%@page import="java.util.List"%>
<%@page import="Database.Entities.Claims"%>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
<!-- Banner -->
<script>
    $(document).ready( function () {
    $('#myTable').DataTable();
} );
    </script>
<section id="banner">
    <div class="content">
	<header>
            <h2><br />See Claim</h2>
            
	</header>


<div class="col-md-6 col-md-offset-3">    
            <div id="table_area">
                <table id="myTable">
            <tr>
                <th>No.</th>
                <th>Date</th>
                <th>Rationale</th>
                <th>Status</th>
                <th>Amount(Rs.)</th>
            </tr>
             <%
                 DecimalFormat df2 = new DecimalFormat(".00");
                 
                     Members member=(Members)session.getAttribute("Member");
                     ClaimModel claimModel = new ClaimModel();
                     List<Claims> list = claimModel.getClaims(ClaimModel.ATTRIBUTES.MEMBER_ID, member.getId());
                     int i=0;
                     for (Claims u : list) {
                         i++;
                 %>
                 <tr>
                     <td><%= i %></td>
                     <td><%= u.getDate() %></td>
                     <td><%= u.getRationale() %></td>
                     <td><%= u.getStatus() %></td>
                     <td><%=  df2.format(u.getAmount()) %></td>
                     
                 </tr>
                 
                 <%}%>
        </table>
    </div>
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
               
                <li><a href="index.jsp">Home Page</a></li>
                <li><a href="user_dash_claims.jsp">Make Claims</a></li>
                <li><a href="user_dash_see_claims.jsp">See Claims</a></li>  
                <li><a href="make_payment.jsp">Make Payment</a></li>
            </ul>
        </nav>
</div>
</div>


        



        