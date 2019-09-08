<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="bugfix.beans.common.StatemasterBean"%>
<%@page import="java.util.List"%>
<%@page import="bugfix.services.admin.StatemasterServices"%>
<html>
    <head>
        <title>Manage State</title>
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <%
            StatemasterServices objServices = new StatemasterServices();
            int countryId = 0;
            String countryName = "";
            if (request.getParameter("countryId") != null) {
                countryId = Integer.parseInt(request.getParameter("countryId"));
                countryName = request.getParameter("countryName");
                session.setAttribute("countryId", countryId);
                session.setAttribute("countryName", countryName);
            } else {
                countryId = (Integer) session.getAttribute("countryId");
                countryName = session.getAttribute("countryName").toString();
            }
            List<StatemasterBean> lst = objServices.getStates(countryId);
            pageContext.setAttribute("LIST_STATES", lst);
        %>
        <table   cellpadding="5" cellspacing="0" align="center" border="0">
            <br/><br/><br/>
            <tr>
                <td align="center">
                    <h2>Manage States</h2>
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
                <td align="right">
                    <input id="btnBackToCountries" name="btnBackToCountries" onclick="window.location = 'ManageCountry.jsp'" class="button" type="button" value="Back to Countries" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <fieldset>
                        <table border="0" cellpadding="0" cellspacing="5">
                            <tr>
                                <td>
                                    <input id="btnAddState" class="button" name="btnAddState" type="button" onclick="window.location = 'AddState.jsp?countryId=<%= request.getParameter("countryId")%>&countryName=<%= request.getParameter("countryName")%>'" value="Add State" />
                                </td>
                            </tr>   
                            <tr>
                                <td>
                                    <table border="0" cellpadding="5" cellspacing="0">
                                        <tr>
                                            <td><strong>Country</strong></td>
                                            <td>${sessionScope.countryName}</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table border="1" cellpadding="5" cellspacing="0" >
                                        <tr>
                                            <th>State Id</th>
                                            <th>State</th>
                                            <th>Status</th>
                                            <th>Manage</th>
                                            <th>Links</th>
                                        </tr>

                                        <c:forEach items="${LIST_STATES}" var="obj" varStatus="i">   
                                            <tr>
                                                <td>${i.index+1}</td>
                                                <td>${obj.stateName}</td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${obj.status == 1}">
                                                            Active&nbsp;<a href="Controller.jsp?changeStateStatus=0&stateId=${obj.stateId}&countryId=<%= request.getParameter("countryId")%>&countryName=<%= request.getParameter("countryName")%>">Change</a>
                                                        </c:when>
                                                        <c:otherwise>
                                                            Inactive&nbsp;<a href="Controller.jsp?changeStateStatus=1&stateId=${obj.stateId}&countryId=<%= request.getParameter("countryId")%>&countryName=<%= request.getParameter("countryName")%>">Change</a>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                                <td><a href="ManageCity.jsp?stateId=${obj.stateId}&stateName=${obj.stateName}">Cities</a></td>
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
        <jsp:include page="mp_footer.jsp"/>
    </body>
</html>