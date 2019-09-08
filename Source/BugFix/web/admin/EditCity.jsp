<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
            <table align="center"  cellpadding="5">
                <tr>
                    <td align="center" colspan="2">
                        <strong>Edit City</strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label style="color: red" ><small>lblMsg</small></label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fieldset>
                            <table align="center"  width="100%">
                                <tr>
                                    <td>
                                        <table width="100%">
                                            <tr>
                                                <td>
                                                    <b>Country: </b>
                                                    <label id="lblCountry">India</label>
                                                </td>
                                                <td>
                                                    <b> State:  </b>
                                                    <label id="lblState">Punjab</label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width="100%">
                                            <tr>
                                                <td>
                                                    <label><b>City Name</b></label>
                                                </td>
                                                <td>
                                                    <input type="text" name="txtCityName" value="Mohali" class="txtStyle"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label><b>Status</b></label>
                                                </td>
                                                <td>
                                                    <input type="radio" name="rbStatus" value="Active" checked="checked"/>Active
                                                    <input type="radio" name="rbStatus" value="InActive"/>InActive
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <input type="submit" class="button" name="sbtnSave" value="Save"/>
                                        <input type="submit" class="button" name="sbtnBack" value="Back"/>
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
