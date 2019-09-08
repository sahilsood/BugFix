<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <title></title>
    <jsp:include page="stylesheet.jsp"/>
</head>
<body>
    <jsp:include page="mp_header.jsp"/>
    <form action="#" method="post">
        <table border="0" cellpadding="5" cellspacing="0" align="center">
            <tr>
                <td align="center">
                    <strong>
                        Edit  FAQ</strong><br />
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
                <td align="center">
                    <fieldset>
                        <table border="0" cellpadding="5"  >
                            <tr>
                                <td valign="top">
                                    <strong>FAQ</strong>
                                </td>
                                <td>
                                    <textarea id="taFAQ" name="taFAQ" cols="30" rows="7">How to Register?</textarea>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <strong>Answer</strong>
                                </td>
                                <td>
                                    <textarea id="taAnswer" name="taAnswer" cols="30" rows="7">For this contact administration.</textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Status</b>
                                </td>
                                <td>
                                    <input type="radio" name="rbStatus" value="" />Active
                                    <input type="radio" name="rbStatus" value="" />InActive
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right">
                                    <input id="sbtnUpdate" name="sbtnUpdate" type="submit" class="button" value="Update" />
                                    <input id="rbtnReset" name="rbtnReset" type="reset" class="button" value="Reset" />
                                    <input type="button" class="button" id="sbtnBack" name="sbtnBack" value="Back"/>
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