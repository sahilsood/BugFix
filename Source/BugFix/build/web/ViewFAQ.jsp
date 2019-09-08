<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="bugfix.beans.common.FAQmasterBean"%>
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
        <title>View FAQ</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <%UsermasterServices objServices = new UsermasterServices();
            List<FAQmasterBean> lstFAQ = null;
                lstFAQ = objServices.getAllFAQ();
        pageContext.setAttribute("LIST_FAQ",lstFAQ);
        %>
        <form>
            <table cellpadding="5" align="center" width="80%">
                <tr>
                    <td align="center">
                        <strong>View FAQ</strong><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="border-collapse: collapse; border-style: inset" align="center" width="100%" cellpadding="5">
                            <c:forEach items="${LIST_FAQ}" var="obj" varStatus="i">
                            <tr>
                                <td width="20%">
                                    <b> Question : </b>
                                </td>
                                <td>
                                    ${obj.question}
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Answer : </b>
                                </td>
                                <td>
                                    ${obj.answer}
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