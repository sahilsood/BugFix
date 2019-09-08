<html>
    <head>
        <title></title>
        <jsp:include page="stylesheet.jsp"/>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <form action="AuthServlet" method="post">
            <table border="0" cellpadding="5" cellspacing="0" align="center">
                <br/><br/><br/>
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
                        <fieldset>
                            <legend><b>Login </b></legend>
                            <table border="0" cellpadding="5" cellspacing="0">
                                <tr>
                                    <td>
                                        <strong>Username</strong>
                                    </td>
                                    <td>
                                        <input name="txtUsername" type="text" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <strong>Password</strong>
                                    </td>
                                    <td>
                                        <input name="txtPassword" type="password" />
                                    </td>
                                </tr>

                                <tr>
                                    <td align="right" colspan="2">
                                        <input id="sbtnLogIn" name="sbtnLogin" type="submit" value="Login" />
                                        &nbsp;&nbsp;
                                        <input id="rbtnReset" name="rbtnReset" type="reset" value="Reset" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <a href="ForgotPassword.jsp"><em>Forgot Password ?</em></a>
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
