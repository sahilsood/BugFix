<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Ask Question</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <form method="post" action="PostQuestionController.jsp">
            <table align="center" cellpadding="5">
                <tr>
                    <td align="center" colspan="2">
                        <strong>
                            Ask Question
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

                            <table >
                                <tr>
                                    <td>
                                        <input type="hidden" name="txtUserId" id="txtUserId" value="${sessionScope.userId}"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b> Title</b>
                                    </td>
                                    <td>
                                        <input type="text" name="txtTitle" id="txtTitle" class="txtStyle"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        <label><b> Body</b></label>
                                    </td>
                                    <td>
                                        <textarea id="taBody" name="taBody" cols="25" rows="4"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label><b> Tags</b></label>
                                    </td>
                                    <td>
                                        <input type="text" name="txtTags" id="txtTags" class="txtStyle"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="right">
                                        <input type="submit" class="button" name="sbtnPost" value="Post"/>
                                        <input type="button" class="button" name="btnBack" value="Back"/>
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
