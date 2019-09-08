<%-- 
    Document   : State
    Created on : Mar 20, 2015, 12:28:34 PM
    Author     : sahilsood
--%>

<%@page import="java.util.List"%>
<%@page import="bugfix.beans.common.StatemasterBean"%>
<%@page import="bugfix.beans.common.CountrymasterBean"%>
<%@page import="bugfix.services.common.CountryStateCityServices"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>State</title>
    </head>
    <body>
        <%
            CountryStateCityServices objServices = new CountryStateCityServices();
            List<StatemasterBean> lstStates = objServices.getAllStatesByCountryId(Integer.parseInt(request.getParameter("countryId")));
            pageContext.setAttribute("LIST_STATES", lstStates);
        %>
        <select id="ddlState" name="ddlState" onchange="getCities()">
            <option>Select</option>
            <c:forEach items="${LIST_STATES}" var="obj">
                <option value="${obj.stateId}">${obj.stateName}</option>
            </c:forEach>
        </select>
    </body>
</html>
