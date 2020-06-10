<%-- 
    Document   : LoginStatus
    Created on : Jul 14, 2018, 1:33:11 PM
    Author     : sean
--%>
<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
<%@page import="org.hibernate.Hibernate"%>
<%@page import="Database.Utils.DBAccessUtil"%>
<%@page import="Database.Entities.Members"%>
<%
    Members member = (Members)session.getAttribute("Member");
    String user_type = (String)session.getAttribute("user_type");
    if(member != null )
    {
        if(user_type.equals("ADMIN"))
        {
          out.print("<i class='fas fa-user-tie' style='font-size:24px;'></i> : " + member.getName() + " <a class='btn btn-outline-success my-2 my-sm-0 button' href='admin_dash.jsp'>Dash</a> <a href='SignOutController' class='btn btn-outline-success my-2 my-sm-0 button'>Logout</a>");  
        }else
        {
            out.print("<i class='fas fa-user' style='font-size:24px;'></i>: " + member.getName() + " <a class='btn btn-outline-success my-2 my-sm-0 button' href='user_dash.jsp'>Dash</a> <a href='SignOutController' class='btn btn-outline-success my-2 my-sm-0 button'>Logout</a>");
        }
    }else{

%>
<a class='btn btn-outline-success my-2 my-sm-0 button' onclick="location.href='signin.jsp';">Sign In </a>
<a class='btn btn-outline-success my-2 my-sm-0 button' onclick="location.href='signup.jsp';" >Sign Up </a>
<%
    }
    %>

