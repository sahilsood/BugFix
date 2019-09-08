<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title></title>
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <form method="post" action="Controller.jsp">
            <table border="0" cellpadding="5" cellspacing="0" align="center">
                <tr>
                    <td align="center">
                        <strong>Add New Country</strong><br />
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
                            <table border="0" cellpadding="5" cellspacing="0">
                                <tr>
                                    <td>
                                        <strong>Country Name </strong>
                                    </td>
                                    <td>
                                        <input value="" id="txtCountryName" class="txtStyle" name="txtCountryName" type="text" />
                                    </td> 
                                </tr>

                                <tr>
                                    <td>
                                        <strong>Status</strong>
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
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="right">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td>
                                                    <input id="sbtnAddCountry" class="button" name="sbtnAddCountry" type="submit" value="Save" />
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    <input id="rbtnReset" class="button"  name="rbtnReset" type="reset" value="Reset" />
                                                </td>
                                                <td align="right">
                                                    <input id="btnBackToCountries" name="btnBackToCountries" onclick="window.location = 'ManageCountry.jsp'" class="button" type="button" value="Back" />
                                                </td>
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