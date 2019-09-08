<%@page import="bugfix.beans.common.CitymasterBean"%>
<%@page import="bugfix.beans.common.StatemasterBean"%>
<%@page import="bugfix.beans.common.CountrymasterBean"%>
<%@page import="java.util.List"%>
<%@page import="bugfix.services.common.CountryStateCityServices"%>
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
        <title>View User Details</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <%
            UsermasterServices objServices = new UsermasterServices();
            UsermasterBean obj = objServices.getUserInfoById(Integer.parseInt(request.getParameter("userId")));
            pageContext.setAttribute("obj", obj);
        %>
        <%
            CountryStateCityServices objCServices = new CountryStateCityServices();
            List<CountrymasterBean> lstCountries = objCServices.getAllCountries();
            pageContext.setAttribute("LIST_COUNTRIES", lstCountries);
        %>
        <%
            List<StatemasterBean> lstStates = objCServices.getAllStatesByCountryId(obj.getCountryId());
            pageContext.setAttribute("LIST_STATES", lstStates);
        %>
        <%
            List<CitymasterBean> lstCities = objCServices.getAllCitiesByStateId(obj.getStateId());
            pageContext.setAttribute("LIST_CITIES", lstCities);
        %>
        <jsp:include page="mp_header.jsp"/>
        <br/><br/><br/>
        <form action="Controller.jsp" method="GET">
            <input type="hidden" name="txtUserType" value="${obj.userType}"/>
            <table align="center" cellpadding="5">
                <tr>
                    <td align="center">
                        <strong>
                            View Details
                        </strong><br/>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <label id ="lblMsg" style="color: red">
                            <small>
                                <c:if test="${param.msg ne null}">
                                    <c:out value="${param.msg}"/>
                                </c:if>
                            </small>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr><td colspan="2" align="center"><input type="hidden" name="txtUserId" value="${obj.userId}"/></td></tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr>
                                            <td colspan="2">
                                                <label>${obj.name}&nbsp;230</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">24 Yrs, Male</td>
                                        </tr>

                                        <tr>
                                            <td colspan="2">
                                                <c:forEach items="${LIST_STATES}" var="objS">
                                                    <c:set var="str" value=""/>
                                                    <c:if test="${obj.stateId == objS.stateId}">
                                                        <c:set var="str" value="${objS.stateName}"/>
                                                    </c:if>
                                                    ${str}
                                                </c:forEach>,
                                                <c:forEach items="${LIST_COUNTRIES}" var="objC">
                                                    <c:set var="str1" value=""/>
                                                    <c:if test="${obj.countryId == objC.countryId}">
                                                        <c:set var="str1" value="${objC.countryName}"/>
                                                    </c:if>
                                                    ${str1}
                                                </c:forEach>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>Last Login</b></td>
                                            <td>2014-10-09 03:34:12.0</td>
                                        </tr>
                                        <tr>
                                            <td><b>Last Login IP</b></td>
                                            <td>192.169.117.140</td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <img src="boy.jpg" alt="No Image" height="150" width="150"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" style="color: white;background-color: black">
                            <tr>
                                <td>
                                    <label><b>Personal Info</b></label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%">
                            <tr>
                                <td><b>Mobile</b> </td>
                                <td>${obj.mobile}</td>
                            </tr>
                            <tr>
                                <td><b>Phone</b> </td>
                                <td>${obj.phone}</td>
                            </tr>
                            <tr>
                                <td><b>Email</b></td>
                                <td>${obj.email}</td>
                            </tr>
                            <tr>
                                <td><b>Country</b> </td>
                                <td><c:forEach items="${LIST_COUNTRIES}" var="objC">
                                        <c:set var="str1" value=""/>
                                        <c:if test="${obj.countryId == objC.countryId}">
                                            <c:set var="str1" value="${objC.countryName}"/>
                                        </c:if>
                                        ${str1}
                                    </c:forEach>
                                </td>
                            </tr>
                            <tr>
                                <td><b>State</b> </td>
                                <td>
                                    <c:forEach items="${LIST_STATES}" var="objS">
                                        <c:set var="str" value=""/>
                                        <c:if test="${obj.stateId == objS.stateId}">
                                            <c:set var="str" value="${objS.stateName}"/>
                                        </c:if>
                                        ${str}
                                    </c:forEach>
                                </td>
                            </tr>
                            <tr>
                                <td><b>City</b> </td>
                                <td>
                                    <c:forEach items="${LIST_CITIES}" var="objCi">
                                        <c:set var="str2" value=""/>
                                        <c:if test="${obj.cityId == objCi.cityId}">
                                            <c:set var="str2" value="${objCi.cityName}"/>
                                        </c:if>
                                        ${str2}
                                    </c:forEach>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top"><b>Address</b> </td>
                                <td>${obj.address}</td>
                            </tr>
                            <tr>
                                <td><b>Status</b> </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${obj.userStatus.equalsIgnoreCase('Active')}">
                                            <c:set var="active" value="checked"/>
                                        </c:when>
                                        <c:otherwise>
                                            <c:set var="inactive" value="checked"/>
                                        </c:otherwise>
                                    </c:choose>
                                    <input type="radio" name="rbUserStatus" value="Active" ${active}/>Active
                                    <input type="radio" name="rbUserStatus" value="Inactive" ${inactive}/>Inactive
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right">
                                    <input type="submit" class="button" name="sbtnUpdate" id="sbtnUpdate" value="Save"/>
                                    <c:choose>
                                        <c:when test="${obj.userType.equalsIgnoreCase('employee')}">
                                            <input type="button" class="button" name="btnBack" onclick="window.location='ManageEmployees.jsp'" value="Back"/>
                                        </c:when>
                                        <c:otherwise>
                                            <input type="button" class="button" name="btnBack" onclick="window.location='ManageUsers.jsp'" value="Back"/>
                                        </c:otherwise>
                                    </c:choose>
                                    
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </form>
        <jsp:include page="mp_footer.jsp"/>
    </body>
</html>
