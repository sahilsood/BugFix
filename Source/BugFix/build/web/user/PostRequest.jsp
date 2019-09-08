<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Post Request</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <form method="post" action="RequestController.jsp">
            <table align="center" cellpadding="5">
                <tr>
                    <td align="center" colspan="2">
                        <strong>
                            Post Request
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
                        <fieldset>
                            <table cellpadding="5">
                                <tr>
                                    <td >
                                        <b> Request Title</b>
                                    </td>
                                    <td>
                                        <input type="hidden" name="txtUserId" id="txtUserId" value="${sessionScope.userId}"/>
                                        <input type="text" value="" id="txtRequestTitle" name="txtRequestTitle" class="txtStyle"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        <label><b>Description</b>
                                        </label>
                                    </td>
                                    <td>
                                        <textarea id="taDescription" class="txtStyle" name="taDescription" cols="25" rows="3"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="right">
                                        <input type="submit" class="button" name="sbtnPost" value="Post"/>
                                        <input type="submit" class="button" name="sbtnCancel" value="Cancel"/>
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
