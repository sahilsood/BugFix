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
        <form method="post" action="Controller.jsp">
            <table align="center" cellpadding="5" width="40%">
                <tr>
                    <td colspan="2" align="center">
                        <strong>
                            Add Security Question
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
                            <table valign="top"  width="100%">
                                <tr>
                                    <td valign="top">
                                        <label><b>Question</b></label>
                                    </td>
                                    <td>
                                        <input value="" id="txtQuestion" class="txtStyle" name="txtQuestion" type="text" />
                                    </td> 
                                </tr>
                                <tr>
                                    <td>
                                        <label><b>Status</b></label>
                                    </td>
                                    <td>
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td>
                                                    <input id="rbStatus1" type="radio" name="rbStatus" value="1" checked="checked" />
                                                    <label for="rbStatus1">
                                                        Active</label>
                                                </td>
                                                <td>
                                                    <input id="rbStatus2" type="radio" name="rbStatus" value="0"/>
                                                    <label for="rbStatus2">
                                                        Inactive</label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="right">
                                        <input type="submit" class="button" name="sbtnAddSecQues" value="Save"/>
                                        <input id="rbtnReset" class="button"  name="rbtnReset" type="reset" value="Reset" />
                                        <input type="button" class="button" name="sbtnBack" onclick="window.location = 'ManageSecurityQuestions.jsp'" value="Back"/>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr></table>
        </form>
        <jsp:include page="mp_footer.jsp"/>
    </body>
</html>
