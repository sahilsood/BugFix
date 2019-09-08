<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BugFix</title>
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 100%">
            <tr>
                <td style="background-color: #d5d3d3" width="100%" height="100%">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%" style="margin: 0 auto;">
                        <tr>
                            <td width="100%">
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;height: 100%">
                                    <tr>
                                        <td style="background: #c24b8b;background: -moz-radial-gradient(top,#aa1d69 0%,#e084b6); background: -webkit-gradient(linear, left top, left bottom, from(#aa1d69),to(#e084b6));">
                                            <div id="header">
                                                <jsp:include page="header.jsp" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="border-top:solid 1px black;border-bottom:solid 1px black;height: 30%">

                                            <jsp:include page="topmenu.jsp"/>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div id="main">
                                                <jsp:include page="homecontent.jsp" />
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>

            <tr>
                <td align="center" width="100%" height="30%">
                    <jsp:include page="footer.jsp" />
                </td>
            </tr>
        </table>
    </body>
</html>

