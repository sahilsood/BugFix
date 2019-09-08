<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Post Feedback</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <form  method="post" action="FeedbackController.jsp">
            <table align="center" cellpadding="5">
                <tr>
                    <td align="center">
                        <strong>
                            Post Feedback
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
                            <table>
                                <tr>
                                    <td valign="top">
                                        <b>Feedback</b>
                                    </td>
                                    <td>
                                        <input type="hidden" name="txtUserId" id="txtUserId" value="${sessionScope.userId}"/>
                                        <textarea id="taFeedback" name="taFeedback" cols="50" rows="4"></textarea>
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
