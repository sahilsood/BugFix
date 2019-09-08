<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="bugfix.beans.common.RequestmasterBean"%>
<%@page import="java.util.List"%>
<%@page import="bugfix.services.common.UsermasterServices"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
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
            <table width="50%" align="center" cellpadding="5">
                <tr>
                    <td align="center">
                        <strong>Manage Request</strong>
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
                        <table align="center" width="100%">
                            <tr>
                                <td align="left">
                                    <input type="button" class="button" name="sbtnPostRequest"onclick="window.location = 'PostRequest.jsp'" value="Post Request"/>
                                </td>
                                <td align="right">
                                    <input type="text" name="txtSearch" class="txtStyle"/>
                                    <input type="submit" class="button" name="sbtnSearch" value="Search"/>
                                </td>
                            </tr>
                        </table>
                    </td> 
                </tr>
                <tr>
                    <td>
                        <table align="center"  border="1" width = 100%>
                            <tr>
                                <th>
                                    S.No.
                                </th>
                                <th>
                                    Request
                                </th>
                                <th>
                                    Date
                                </th>
                                <th>
                                    Status
                                </th>
                            </tr>
                            <c:forEach items="${LIST_REQUESTS}" var="obj" varStatus="i">
                            <tr align="center">
                                <td>${i.index + 1}</td>
                                <td><a href="#">${obj.requestTitle}</a></td>
                                <td>${obj.requestDate}</td>
                                <td>Pending</td>
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
