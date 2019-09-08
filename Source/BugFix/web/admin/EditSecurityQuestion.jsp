<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <form>
            <table align="center" cellpadding="5" >
                <tr>
                    <td colspan="2" align="center">
                        <strong>Edit Security Question</strong><br/>
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
                            <table align="center"  width="100%">

                                <tr>
                                    <td valign="top">
                                        <label><b>Question</b></label>
                                    </td>
                                    <td>
                                        <textarea name="taQuestion">What is your fav colour.?</textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label><b>Status</b></label>
                                    </td>
                                    <td>
                                        <input type="radio" name="rbStatus" value="Active" checked/>Active
                                        <input type="radio" name="rbStatus" value="InActive"/>InActive
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="right">
                                        <input type="submit" class="button" name="sbtUpdate" value="Update"/>
                                        <input type="button" class="button" name="sbtnBack" onclick="window.location = 'ManageSecurityQuestions.jsp'" value="Back"/>
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
