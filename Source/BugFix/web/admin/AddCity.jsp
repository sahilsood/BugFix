<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title></title>
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <form name="" method="post" action="Controller.jsp">
            <table border="0" cellpadding="3" cellspacing="0" align="center">
                <tr>
                    <td align="center"><strong>Add New City</strong><br /></td>
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
                            <table border="0" cellpadding="2" cellspacing="5">
                                <tr>
                                    <td colspan="2">
                                        <table border="0" cellpadding="3" cellspacing="0">
                                            <tr>
                                                <td>
                                                    <strong>State</strong>
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    <label id="lblState"><%= request.getParameter("stateName")%></label>
                                                    <input type="hidden" value="<%= request.getParameter("stateId") %>" name="hdStateId" id="hdStateId"/>
                                                    <input type="hidden" value="<%= request.getParameter("stateName") %>" name="hdStateName" id="hdStateName"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td><strong>City Name </strong></td>
                                    <td colspan="2" >
                                        <input id="txtCityName" class="txtStyle" name="txtCityName" type="text" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <strong>Status </strong>
                                    </td>
                                    <td>
                                        <table border="0" cellpadding="3" cellspacing="0">
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
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="right">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td>
                                                    <input id="sbtnAddCity" name="sbtnAddCity" class="button" type="submit" value="Save" />
                                                </td>
                                                <td>
                                                </td>
                                                <td>
                                                    <input id="rbtnReset" class="button" name="rbtnReset" type="reset" value="Reset" />
                                                </td>
                                                <td align="right">
                                                    <input id="btnBack" name="btnBack" class="button" onclick="window.location='ManageCity.jsp?stateId=<%= request.getParameter("stateId") %>&stateName=<%= request.getParameter("stateName") %>'" type="button" value="Back" /></td>

                                            </tr>
                                        </table>
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
