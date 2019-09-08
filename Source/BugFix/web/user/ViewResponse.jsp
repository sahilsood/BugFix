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
            <table align="center" cellpadding="5">
                <tr>
                    <td align="center" colspan="2">
                        <strong>
                            View Response
                        </strong><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fieldset>

                            <table >

                                <tr>
                                    <td>
                                        <b> Request Title</b>
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
                                        <textarea id="taDescription" cols="30" rows="3">Description about the request</textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b> Request Date</b>
                                    </td>
                                    <td>
                                        <label>2014-09-09</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        <label><b>Response</b></label>
                                    </td>
                                    <td>
                                        <textarea id="taDescription" cols="30" rows="3">Response to the request</textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="right">
                                        <input type="button" class="button" name="sbtnBack" value="Back"/>
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
