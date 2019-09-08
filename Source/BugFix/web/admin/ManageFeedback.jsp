<%@page import="bugfix.beans.common.FeedbackmasterBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="bugfix.services.admin.UserServices"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Manage Feedback</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <%UserServices objServices = new UserServices();
            List<FeedbackmasterBean> lstFeedbacks = null;
                lstFeedbacks = objServices.getAllFeedbacks();
        pageContext.setAttribute("LIST_FEEDBACKS",lstFeedbacks);
        %>
        <form>
            <table width="70%" align="center" cellpadding="5">
                <tr>
                    <td align="center">
                        <strong>Manage Feedback</strong><br/>
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
                        <table align="right" width="80%">
                            <tr>
                                <td>
                                    <label><b>From</b></label>
                                    <input type="text" name="txtFrom" class="txtStyle"/>
                                </td>
                                <td>
                                    <label><b>To</b></label>
                                    <input type="text" name="txtTo" class="txtStyle"/>
                                </td>
                                <td>
                                    <input type="submit" class="button" name="sbtnFilter" value="Filter"/>
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
                                    Feedback
                                </th>
                                <th>
                                    Posted By
                                </th>
                                <th>
                                    Time
                                </th>
                                <th>
                                    Manage
                                </th>
                            </tr>
                            <c:forEach items="${LIST_FEEDBACKS}" var="obj" varStatus="i">
                            <tr align="center">
                                <td>${i.index + 1}</td>
                                <td><a href="" id="linkfk">${obj.feedback}</a></td>
                                <td>${obj.username}</td>
                                <td>${obj.feedbackTime}</td>
                                <td><a href = "">Delete</a></td>
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
