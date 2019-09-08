<%@page import="java.util.List"%>
<%@page import="bugfix.beans.common.UsermasterBean"%>
<%@page import="bugfix.services.common.UsermasterServices"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <br/><br/><br/>
        <table align="center" style="text-align: center;">
            <tr><td><h2>Have a Bug in your Code?</h2></td></tr>

            <tr><td><h2>We will Fix it!!</h2></td></tr>
            <tr><td><h2><a href="Login.jsp">Just Ask Us..</h2></td></tr>
            <tr><td><h2>Or</h2></td></tr>
            <tr><td><h2>Search it..</h2></td></tr>
            <tr><td>
                    <form method="get" action="/search" id="search">
                        <input name="q" type="text" size="40" placeholder="Type here..." />
                    </form>
                </td></tr>
        </table>
        <jsp:include page="mp_footer.jsp"/>
    </body>
</html>