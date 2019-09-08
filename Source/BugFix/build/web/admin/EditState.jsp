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
                        <strong>Edit State</strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label style="color: red"><small> lblMsg</small></label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fieldset>
                            <table>
                                <tr>
                                    <td colspan="2">
                                        <b>  Country: </b>
                                  
                                        <label id="lblCountry">India</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label><b>State Name</b></label>
                                    </td>
                                    <td>
                                        <input type="text" name="txtStateName" value="Punjab" class="txtStyle"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label><b>Status</b></label>
                                    </td>
                                    <td>
                                        <input type="radio" name="rbStatus" value="Active" checked=""/>Active
                                        <input type="radio" name="rbStatus" value="InActive"/>InActive
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="right">
                                        <input type="submit" class="button" name="sbtnUpdate" value="Update"/>
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
