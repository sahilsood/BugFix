<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="bugfix.beans.common.CitymasterBean"%>
<%@page import="java.util.List"%>
<%@page import="bugfix.services.admin.CitymasterServices"%>
<html>
    <head>
        <title>Manage City</title>
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <form>
            <table cellpadding="5" cellspacing="0" align="center">
                <br/><br/><br/>
                <td align="center">
                    <h2>Manage Cities</h2>
                </td>
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
                    <td align="right">
                        <input id="btnBackToStates" name="btnBackToStates" onclick="window.location = 'ManageState.jsp'" class="button" type="button" value="Back to States" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <fieldset>
                            <table border="0" cellpadding="0" cellspacing="5">
                                <tr>
                                    <td>
                                        <input id="btnAddCity" class="button" name="btnAddCity" type="button" onclick="window.location = 'AddCity.jsp?stateId=<%= request.getParameter("stateId")%>&stateName=<%= request.getParameter("stateName")%>'" value="Add City" />
                                    </td>
                                </tr>   
                                <tr>
                                    <td>
                                        <table border="0" cellpadding="5" cellspacing="0">
                                            <tr>
                                                <td><strong>State</strong></td>
                                                <td><%= request.getParameter("stateName")%></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table border="1" cellpadding="5" cellspacing="0" >
                                            <tr>
                                                <th>City Id</th>
                                                <th>City</th>
                                                <th>Status</th>
                                                <th>
                                                    Links
                                                </th>
                                            </tr>
                                            <%
                                                CitymasterServices objServices = new CitymasterServices();

                                                List<CitymasterBean> lst = objServices.getCities(Integer.parseInt(request.getParameter("stateId")));
                                                pageContext.setAttribute("LIST_STATES", lst);
                                            %>
                                            <c:forEach items="${LIST_STATES}" var="obj" varStatus="i">   
                                                <tr>
                                                    <td>${i.index+1}</td>
                                                    <td>${obj.cityName}</td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${obj.status == 1}">
                                                                Active&nbsp;<a href="Controller.jsp?changeCityStatus=0&cityId=${obj.cityId}&stateId=<%= request.getParameter("stateId")%>&stateName=<%= request.getParameter("stateName")%>">Change</a>
                                                            </c:when>
                                                            <c:otherwise>
                                                                Inactive&nbsp;<a href="Controller.jsp?changeCityStatus=1&cityId=${obj.cityId}&stateId=<%= request.getParameter("stateId")%>&stateName=<%= request.getParameter("stateName")%>">Change</a>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
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
        <jsp:include page="mp_footer.jsp"/>
    </body>
</html>