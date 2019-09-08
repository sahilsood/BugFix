<%@page import="bugfix.beans.common.CountrymasterBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="bugfix.beans.common.CountrymasterBean"%>
<%@page import="bugfix.services.admin.CountrymasterServices"%>
<html>
    <head>
        <title>Manage Country</title>
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <table align="center">
            <tr>
                <td>
                    <form action="#" method="post">
                        <table border="0" cellpadding="0" cellspacing="0" align="center">
                            <br/><br/><br/>
                            <tr>
                                <td align="center">
                                    <h2>Manage Countries</h2><br/><br/>
                                </td>
                            </tr>
                            <td align="left">
                                <label id ="lblMsg" style="color: red">
                                    <small>
                                        <c:if test="${param.msg ne null}">
                                            <c:out value="${param.msg}"/>
                                        </c:if>
                                    </small>
                                </label>
                            </td>
                            <tr>
                                <td>
                                    <fieldset>
                                        <table border="0" cellpadding="5" cellspacing="0"> 
                                            <tr>
                                                <td>
                                                    <input id="btnAddCountry" name="btnAddCountry" class="button" type="button" value="Add Country" onclick="window.location = 'AddCountry.jsp'"/>
                                                </td>
                                            </tr>       
                                            <tr>
                                                <td>
                                                    <table border="1" cellpadding="5" cellspacing="0" width="100%">
                                                        <tr>
                                                            <th>Country Id</th>
                                                            <th>Country</th>
                                                            <th>Status</th>
                                                            <th>Manage</th>
                                                            <th>
                                                                Links
                                                            </th>
                                                        </tr>
                                                        <%
                                                            CountrymasterServices obj = new CountrymasterServices();
                                                            List<CountrymasterBean> lst = obj.getCountries();
                                                            pageContext.setAttribute("LIST_COUNTRIES", lst);
                                                        %>
                                                        <c:forEach items="${LIST_COUNTRIES}" var="obj" varStatus="i">
                                                            <tr>
                                                                <td>${i.index+1}</td>
                                                                <td>${obj.countryName}</td>
                                                                <td>
                                                                    <c:choose>
                                                                        <c:when test="${obj.status == 1}">
                                                                            Active&nbsp;<a href="Controller.jsp?changeCountryStatus=0&countryId=${obj.countryId}">Change</a>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            Inactive&nbsp;<a href="Controller.jsp?changeCountryStatus=1&countryId=${obj.countryId}">Change</a>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </td>
                                                                <td><a href="ManageState.jsp?countryId=${obj.countryId}&countryName=${obj.countryName}">States</a></td>
                                                                <td><a href="#">Delete</a></td>
                                                            </tr>
                                                        </c:forEach>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </fieldset>
                                </td>
                            </tr>
                        </table>
                    </form>
                </td>
            </tr>
        </table>
        <jsp:include page="mp_footer.jsp"/>
    </body>
</html>