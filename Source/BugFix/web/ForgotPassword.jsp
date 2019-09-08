<html>
    <head>
        <title></title>
        
<jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <form action="ForgotPasswordServlet" method="post">
            <table border="0" cellpadding="5" cellspacing="0" align="center">
                <tr>
                    <td align="center"><strong>Forgot Password</strong></td>
                </tr>
                <tr>
                    <td><label id="lblMsg" style="color: red"><small>
                                lblMsg</small></label></td>
                </tr>
                <tr>
                    <td>
                        <fieldset>
                            <div>If you have forgotten your password, you can have it recover.
                                    <br />
                                    Please enter your username address below to do so.<br />
                                <br />
                                <label>  An email with the instructions to recover your password will be sent to you.</label>
                            </div>
                            <table border="0" cellpadding="5" cellspacing="0">
                                <tr>
                                    <td><strong>Username</strong></td>
                                    <td><input id="txtUsername" name="txtUsername" type="text" /></td>
                                </tr>
                                <tr>
                                    <td><strong>Security Question</strong></td>
                                    <td><select>
                                            <option selected="selected">Select</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td><strong>Answer</strong></td>
                                    <td><input type="text" class="txtStyle" name="txtAnswer"/></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td align="right"><input id="sbtnSubmit" name="sbtnSubmit" type="submit" value="Submit" >    <input id="sbtnSubmit" name="sbtnCancel" type="submit" value="Cancel" />
                                    </td>
                                </tr>
                            </table>
                            <hr/>
                            <div>
                                Your Password has been sent to your email id.<br/>
                                Please check your email for further instruction.<br/>
                                Please <a href="#">Click here</a> to go back to the login page.
                            </div>
                        </fieldset>
                    </td>
                </tr>
            </table>
        </form>
        <jsp:include page="mp_footer.jsp"/>
    </body>
</html>
