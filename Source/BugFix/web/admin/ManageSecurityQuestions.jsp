<%@page import="bugfix.beans.common.SecuritymasterBean"%>
<%@page import="java.util.List"%>
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
        <title>Manage Security Questions</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <%UsermasterServices objServices = new UsermasterServices();
            List<SecuritymasterBean> lstSecQues = null;
            lstSecQues = objServices.getAllSecQues();
            pageContext.setAttribute("LIST_SECQUES", lstSecQues);
        %>
        <form>
            <table width="50%" align="center" cellpadding="5">
                <tr>
                    <td align="center">
                        <strong>
                            Manage Security Question
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
                        <table width="100%" align="center">
                            <tr>
                                <td>
                                    <input type="button" class="button" name="sbtnAddSecurityQuestion" onclick="window.location = 'AddSecurityQuestion.jsp'" value="Add Security Question"/>
                                </td>
                                <td align="right">
                                    <label><b>Status</b></label>
                                    <select>
                                        <option>Select</option>
                                        <option>Active</option>
                                        <option>InActive</option>
                                    </select>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table align = "center" width="100%" border="1">
                            <tr>
                                <th>
                                    S.No
                                </th>
                                <th>
                                    Question
                                </th>
                                <th>
                                    Status
                                </th>
                                <th>
                                    Manage
                                </th>
                            </tr>
                            <c:forEach items="${LIST_SECQUES}" var="obj" varStatus="i">
                                <tr align="center">
                                    <td>
                                        ${i.index + 1}
                                    </td>
                                    <td>
                                        ${obj.question}
                                    </td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${obj.status == 1}">
                                                Active<a href="Controller.jsp?changeQuestionStatus=0&securityQuestionId=${obj.securityQuestionId}">&nbsp; Change</a>
                                            </c:when>
                                            <c:otherwise>
                                                Inactive<a href="Controller.jsp?changeQuestionStatus=1&securityQuestionId=${obj.securityQuestionId}">&nbsp; Change</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>
                                        <a href="EditSecurityQuestion.jsp">Edit</a>
                                    </td>
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
