<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="bugfix.beans.common.FAQmasterBean"%>
<%@page import="java.util.List"%>
<%@page import="bugfix.services.common.UsermasterServices"%>
<head>
    <title>Manage FAQ</title>
    <jsp:include page="stylesheet.jsp"/>
</head>
<body>
    <jsp:include page="mp_header.jsp"/>
    <%UsermasterServices objServices = new UsermasterServices();
        List<FAQmasterBean> lstFAQ = null;
        lstFAQ = objServices.getAllFAQ();
        pageContext.setAttribute("LIST_FAQ", lstFAQ);
    %>
    <table border="0" cellpadding="5" align="center">
        <tr>
            <td align="center" colspan="2">
                <strong>
                    Manage FAQ</strong><br />
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
            <td align="left">
                <input type="button" class="button" id="btnAddFAQ" name="btnAddFAQ" value="Add FAQ" onclick="window.location = 'AddFAQ.jsp'"/>
            </td>
            <td align="right">
                <b> Status</b>

                <select>
                    <option>Select</option>
                    <option>Active</option>
                    <option>InActive</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table border="1" cellpadding="5" cellspacing="0" >
                    <tr>
                        <th>
                            FAQ Id
                        </th>
                        <th>
                            FAQ</th>
                        <th>
                            Answer</th>
                        <th>
                            Status
                        </th>
                        <th>Manage
                        </th>
                    </tr>
                    <c:forEach items="${LIST_FAQ}" var="obj" varStatus="i">
                        <tr align="center">
                            <td>${i.index + 1}</td>
                            <td>${obj.question}</td>
                            <td>${obj.answer}</td>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td align="left">
                                            <a href="">Active</a>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <a href="EditFAQ.jsp">Edit</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </td>
        </tr>
    </table>

    <jsp:include page="mp_footer.jsp"/>
</body>
</html>