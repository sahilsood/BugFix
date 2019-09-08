<%-- 
    Document   : City
    Created on : Mar 20, 2015, 12:46:07 PM
    Author     : sahilsood
--%>

<%@page import="java.util.List"%>
<%@page import="bugfix.beans.common.CitymasterBean"%>
<%@page import="bugfix.services.common.CountryStateCityServices"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>City</title>
    </head>
    <body>
       <%
            CountryStateCityServices objServices = new CountryStateCityServices();
            List<CitymasterBean> lstCities = objServices.getAllCitiesByStateId(Integer.parseInt(request.getParameter("stateId")));
            pageContext.setAttribute("LIST_CITIES", lstCities);
        %>
        <select name="ddlCity">
            <option>Select</option>
        <c:forEach items="${LIST_CITIES}" var="obj">
        <option value="${obj.cityId}">${obj.cityName}</option>
        </c:forEach></select>
    </body>
</html>
