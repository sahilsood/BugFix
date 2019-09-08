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
                    <td align="center">
                        <strong>View Questions</strong><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="5">
                            <tr>
                                <td>
                                  <b>  Question</b>
                                    <input type="text" class="txtStyle" name="txtQuestion"/>
                                </td>
                                <td>
                                    <b> Tags </b>
                                    <input type="text" class="txtStyle" name="txtTags"/>
                                </td>
                                <td>
                                    <input type="submit" name="sbtnSearch" value="Search"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="5" cellspacing="5">
                            <tr>
                                <td>
                                    <table>
                                        <tr>
                                            <td>
                                                +2
                                            </td>
                                            <td>
                                                <img src="images/like.png" alt="NoImage" height="50" width="50"/>
                                            </td>
                                            <td rowspan="2">
                                                <a href="">What is the difference between Array and ArrayList ?</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                3
                                            </td>
                                            <td>
                                                  <img src="images/answer.png" alt="NoImage" height="50" width="50"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <label style="background-color: lightgrey">JSP</label>
                                                &nbsp;&nbsp;<label style="background-color: lightgrey">JSTL</label>
                                                &nbsp;&nbsp;<label style="background-color: lightgrey">Core</label>
                                                &nbsp;&nbsp;<label style="background-color: lightgrey">Web</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td>3 hours ago&nbsp;|&nbsp;gagan&nbsp;|&nbsp;2345</td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <hr/>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr>
                                            <td>
                                                +4
                                            </td>
                                            <td>
                                                <img src="images/like.png" alt="NoImage" height="50" width="50"/>
                                            </td>
                                            <td rowspan="2">
                                                <a href="">What is the difference between rowspan and colspan ?</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                8
                                            </td>
                                            <td>
                                                 <img src="images/answer.png" alt="NoImage" height="50" width="50"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <label style="background-color: lightgrey">JSP</label>
                                                &nbsp;&nbsp;<label style="background-color: lightgrey">JSTL</label>
                                                &nbsp;&nbsp;<label style="background-color: lightgrey">Core</label>
                                                &nbsp;&nbsp;<label style="background-color: lightgrey">Web</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td>4 hours ago&nbsp;|&nbsp;chandan&nbsp;|&nbsp;9798</td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <hr/>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </form>
        <jsp:include page="mp_footer.jsp"/>
    </body>
</html>

