<%@page import="bugfix.beans.common.QuestionmasterBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="bugfix.services.common.UsermasterServices"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <%UsermasterServices objServices = new UsermasterServices();
            List<QuestionmasterBean> lstQues = null;
            lstQues = objServices.getAllQuestions();
            pageContext.setAttribute("LIST_QUES", lstQues);
        %>
        <form>
            <table align="center" cellpadding="5" border="0">
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <table cellpadding="5" align="center">
                                        <tr>
                                            <td>
                                                <b> Question</b>
                                                <input type="text" name="txtQuestion" class="txtStyle"/>
                                            </td>
                                            <td>
                                                <b> Tags</b>
                                                <input type="text" name="txtTags" class="txtStyle"/>
                                            </td>
                                            <td>
                                                <input type="submit" class="button" name="sbtnSearch" value="Search"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <hr/>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <c:forEach items="${LIST_QUES}" var="obj" varStatus="i">
                                <tr>
                                    <td>
                                        <table cellpadding="5" cellspacing="10">
                                            <tr>
                                                <td>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                +2
                                                            </td>
                                                            <td>
                                                                <table>
                                                                    <tr>
                                                                        <td>
                                                                    <big><a href="javascript:void(0)" onclick="#"><img src="../images/like.png"/></a></big>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                        <big><a href="javascript:void(0)" onclick="#"><img src="../images/unlike.png"/></a></big>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table width="100%" align="center">
                                            <tr>
                                                <td rowspan="2">
                                                    <a href="ViewQuestionDetails.jsp?questionId=${obj.questionId}"><h3>${obj.title}</h3></a>
                                                </td>
                                            </tr>                                
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        2
                                    </td>
                                    <td>
                                        <img src="../images/answer.png"/>
                                    </td>
                                    <td>
                                        <table align="left">
                                            <tr>
                                                <td>
                                                    <%
                                                        QuestionmasterBean obj1 = (QuestionmasterBean) pageContext.getAttribute("obj");
                                                        String tags = obj1.getTags();
                                                        String arr[] = tags.split(",");
                                                    %>
                                                    <%
                                                        for (int i = 0; i < arr.length; i++) {
                                                    %>
                                                    <label style="background-color: lightgrey"><%=arr[i]%></label>
                                                    &nbsp;&nbsp;
                                                    <%}%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    ${obj.questionDate}&nbsp;|&nbsp;${obj.name}&nbsp;|&nbsp;${obj.repo}
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
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
    </c:forEach>
</table>
</td>
<td valign="top" width="20%">
    <table border="0" width="30%" align="center">
        <tr>
            <th>Useful Tags</th>

        </tr>
        <tr>
            <td>
                <hr/>
                <h3><a href="#">Java</a><br/></h3>
                <h3><a href="#">C++</a><br/></h3>
                <h3><a href="#">OOPS</a><br/></h3>
                <h3><a href="#">OS</a><br/></h3>
                <h3><a href="#">Software</a><br/></h3>
                <h3><a href="#">Programming</a><br/></h3>
                <h3><a href="#">Inheritance</a><br/></h3>
                <h3><a href="#">Arrays</a><br/></h3>
                <h3><a href="#">DBMS</a><br/></h3>
                <h3><a href="#">SQL</a><br/></h3>
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
