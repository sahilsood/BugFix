<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Change Password</title>
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        
<jsp:include page="mp_header.jsp"/>

        <form name="frm" action="../ChangePasswordServlet" method="post" >
            <table border="0" align="center" cellpadding="5" >
                <tr><td align="center"><strong>Change Password</Strong></td></tr>
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

                            <table  align="center"  width="100%">
                                <tr>
                                    <td><b>Current Password</b></td>
                                    <td><input type="password" id="txtOldPassword" name="txtOldPassword"  class="txtStyle"/></td>
                                </tr>
                                <tr>
                                    <td><b>New Password</b> </td>
                                    <td><input type="password"  id="txtNewPassword" name="txtNewPassword" class="txtStyle"/></td>
                                </tr>
                                <tr>
                                    <td><b>Confirm Password</b></td>
                                    <td><input type="password"  id="txtConfirmPassword" name="txtConfirmPassword" class="txtStyle"/></td>
                                </tr>
                                <tr>
                                    <td align="right" width="100%" colspan="2">
                                        <input type="submit" class="button"  value="Change" name="sbtnChange">
                                        <input type="reset" class="button"  value="Reset" name="rbtnReset">
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