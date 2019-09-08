<%@page import="bugfix.services.common.UsermasterServices"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="bugfix.beans.common.RequestmasterBean"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Manage Responses</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <%UsermasterServices objServices = new UsermasterServices();
            List<RequestmasterBean> lstRequests = null;
                lstRequests = objServices.getAllRequests();
        pageContext.setAttribute("LIST_REQUESTS",lstRequests);
        %>
        <form>
            <table width="60%" align="center" cellpadding="5">
                <tr>
                    <td align="center">
                        <strong>
                            Manage Response
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
                        <table align="right" width="100%">
                            <tr>
                                <td align="right">
                                    <input type="radio" name="rbOrder"/>A-Z&nbsp;&nbsp;
                                    <input type="radio" name="rbOrder"/>Z-A&nbsp;&nbsp;
                                    <input type="radio" name="rbOrder"/>Posted Date
                              
                                    <input type="text" name="txtName" class="txtStyle"/>
                                    <input type="submit" class="button" name="sbtnSearch" value="Search"/>
                                </td>
                            </tr>
                        </table>
                    </td> 
                </tr>
                <tr>
                    <td>
                        <table align="center" border="1" width = 100%>
                            <tr>
                                <th>
                                    S.No.
                                </th>
                                <th>
                                    Request
                                </th>
                                <th>
                                    Request Date
                                </th>
                                <th>
                                    Status
                                </th>
                                <th>
                                    Manage
                                </th>
                            </tr>
                            <c:forEach items="${LIST_REQUESTS}" var="obj" varStatus="i">
                            <tr align="center">
                                <td>${i.index + 1}</td>
                                <td>${obj.requestTitle}</td>
                                <td>${obj.requestDate}</td>
                                <td>Pending</td>
                                <td><a href="PostResponse.jsp">Post Response</a></td>
                            </tr>
                            </c:forEach>
                        </table>
                    </td>
                </tr>
            </table>
        </form>
        <jsp:include page="mp_footer.jsp"/>
    </body>
</html>
