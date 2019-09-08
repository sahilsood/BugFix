<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="beans.*" %>
<%@page import="datalayer.*" %>
<%@page import="java.util.*" %>
<%

    response.setHeader("Cache-Control", "no-cache");
    String id = request.getParameter("q");
    ArrayList al = new LocationServices().getAllCities(Integer.parseInt(id));
    pageContext.setAttribute("al", al);
%>
<select id="ddlCity" name="ddlCity" style="width: 126px" > 
    <option value="" selected="selected">Select</option>

    <c:forEach items="${al}" var="obj">
        <c:set var="select" value=""/>
        <c:if test="${obj.cityId eq param.sel}">
            <c:set var="select" value="selected"/>
        </c:if>
        <option value="${obj.cityId}" ${select}>${obj.txtCityName}</option>
    </c:forEach>
</select>  
