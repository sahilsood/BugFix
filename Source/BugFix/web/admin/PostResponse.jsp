<%@page import="bugfix.beans.common.RequestmasterBean"%>
<%@page import="bugfix.services.admin.UserServices"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Post Response</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <form>
            <table align="center" cellpadding="5">
                <tr>
                    <td align="center" colspan="2">
                        <strong>
                            Post Response
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
                        <b>Request</b>
                    </td>
                    <td>
                        <label>Login Problem</label>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <label><b>Description</b></label>
                    </td>
                    <td>
                        <textarea id="taDescription"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Request Date</b>
                    </td>
                    <td>
                        <label>2014-09-09</label>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <label><b>Description</b></label>
                    </td>
                    <td>
                        <textarea id="taDescription"></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="right">
                        <input type="submit" class="button" name="sbtnPost" value="Post"/>
   <input type="submit" class="button" name="sbtnPost" value="Cancel"/>
                    </td>
                </tr>
            </table>
        </form>

<jsp:include page="mp_footer.jsp"/>
    </body>
</html>
