<%@page import="bugfix.beans.common.AnswermasterBean"%>
<%@page import="bugfix.beans.common.QuestionmasterBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="bugfix.services.common.UsermasterServices"%>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>View Question Details</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <jsp:include page="stylesheet.jsp"/>
        <script type="text/javascript">
            function postAnswerComment(questionId,answerId) {
                var comment = $('#taAComment'+answerId).val();
                window.location = 'QAController.jsp?txtQuestionId='+questionId+'&txtAnswerId=' + answerId +'&txtUserId='+ ${sessionScope.userId} +'&taAComment='+comment ;
            }
        </script>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <%
            UsermasterServices objServices = new UsermasterServices();
            int questionId = 0;
            if (request.getParameter("questionId") != null) {
                questionId = Integer.parseInt(request.getParameter("questionId"));
                session.setAttribute("questionId", questionId);
            } else {
                questionId = (Integer) session.getAttribute("questionId");
            }
            QuestionmasterBean obj = objServices.getQuestionDetailsById(Integer.parseInt(request.getParameter("questionId")));
            pageContext.setAttribute("obj", obj);
        %>
        <form  method="post" action="QAController.jsp">
            <table align="center" cellpadding="5" width="50%">
                <tr>
                    <td>
                        <input type="hidden" name="txtUserId" id="txtUserId" value="${sessionScope.userId}"/>
                        <input type="hidden" name="txtQuestionId" id="txtQuestionId" value="${obj.questionId}"/>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <strong>
                            View Question Details
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
                <tr><td>
                        <fieldset>
                            <table width="80%">
                                <tr>
                                    <td>
                                        <table  align="center" width="100%">

                                            <tr>
                                                <td>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <h3><a href="">${obj.title}</a></h3>
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
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table style="border-collapse: collapse; border-style: outset" border="1" width="100%" align="center">
                                                        <tr>
                                                            <td style="font-size: 14px">
                                                                ${obj.body}
                                                            </td>
                                                        </tr>

                                                    </table>
                                                </td>
                                            <tr>
                                                <td align="right">
                                                    ${obj.questionDate}&nbsp;|&nbsp;<a href="">${obj.name}</a>&nbsp;|&nbsp;${obj.repo}
                                                    <br/><br/>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <table style="border-collapse: collapse; border-style: outset" border="1" width="100%" align="center">
                                                        <%
                                                            List<QuestionmasterBean> lstQCmnt;
                                                            lstQCmnt = objServices.getAllQuestionCommentsById(Integer.parseInt(request.getParameter("questionId")));
                                                            pageContext.setAttribute("LIST_QCMNT", lstQCmnt);
                                                        %>
                                                        <a href="">Comments</a>
                                                        <c:forEach items="${LIST_QCMNT}" var="obj3" varStatus="i">
                                                            <tr>
                                                                <td style="font-size: 14px">
                                                                    ${obj3.questionComment}
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" style="font-size: 14px">
                                                                    ${obj3.questionCommentDate}&nbsp; &nbsp;|&nbsp;&nbsp;${obj3.name}&nbsp;&nbsp;|&nbsp;&nbsp;${obj3.repo}
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table width="100%" align="center">
                                                        <tr>
                                                            <td colspan="2"></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2"></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2"></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2"></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left">
                                                                <a href="">Add Comment</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div>
                                                                    <table style="border-collapse: collapse; border-style: outset" border="0" width="100%" align="center">
                                                                        <tr>
                                                                            <td>
                                                                                <textarea id="taQComment" name="taQComment" cols="100" rows="4"></textarea>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left">
                                                                                <input type="submit" class="button" name="sbtnQCPost" value="Post"/>
                                                                                <input type="reset" class="button" name="rbtn" value="Cancel"/>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>

                                        </table> 
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td></tr>

                <tr>
                    <td>
                        <table style="border-collapse: collapse; border-style: outset" cellpadding="5" align="center" width="100%">
                            <tr>
                                <td>
                                    2&nbsp;&nbsp;Answers
                                </td>
                                <td align="right">
                                    Order By
                                    <select>
                                        <option>Select</option>
                                        <option>Votes</option>
                                        <option>Recent Posted</option>
                                    </select>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fieldset>
                            <table>
                                <%
                                    List<AnswermasterBean> lstAns;
                                    lstAns = objServices.getAllAnswersById(Integer.parseInt(request.getParameter("questionId")));
                                    pageContext.setAttribute("LIST_ANS", lstAns);
                                %>
                                <c:forEach items="${LIST_ANS}" var="obj4" varStatus="i">
                                    <tr>
                                        <td>
                                            <input type="hidden" name="txtAnswerId" id="txtAnswerId" value="${obj4.answerId}"/>
                                        </td>
                                        <td>
                                            <table cellpadding="5" align="center" width="100%">
                                                <tr>
                                                    <td>
                                                        <table>
                                                            <tr>
                                                                <td valign="top">
                                                                    <table>
                                                                        <tr>
                                                                            <td>
                                                                                <label><strong>17</strong></label>
                                                                            </td>
                                                                            <td>
                                                                                <table>
                                                                                    <tr>
                                                                                        <td>
                                                                                    <big><a href=""><img src="../images/like.png"/></a></big>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                        <big><a href=""><img src="../images/unlike.png"/></a></big>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>  
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><img src="../images/tick.png"/></td>
                                                </tr>
                                            </table>
                                        </td>

                                        <td>
                                            <table style="border-collapse: collapse; border-style: outset" border="0" width="100%" align="center">
                                                <tr>
                                                    <td style="font-size: 14px">
                                                        ${obj4.answer}
                                                        <br/><br/>
                                                    </td>
                                                </tr>
                                                <tr>

                                                    <td align="right">
                                                        2015-04-06&nbsp; &nbsp;|&nbsp;&nbsp;<a href="">${obj4.name}</a>&nbsp;&nbsp;|&nbsp;&nbsp;${obj4.repo}
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table style="border-collapse: collapse; border-style: outset" border="1" width="100%" align="center">
                                <%
                                    List<AnswermasterBean> lstACmnt;
                                    AnswermasterBean objAnswer = (AnswermasterBean) pageContext.getAttribute("obj4");
                                    int answerId = objAnswer.getAnswerId();
                                    pageContext.setAttribute("answerId", answerId);
                                    lstACmnt = objServices.getAllAnswerCommentsByAnswerId(answerId);
                                    pageContext.setAttribute("LIST_ACMNT", lstACmnt);
                                %>
                                <a href="">Comments</a>
                                <c:forEach items="${LIST_ACMNT}" var="obj5" varStatus="i">
                                    <tr>
                                        <td style="font-size: 14px">
                                            ${obj5.answerComment}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="font-size: 14px">
                                            ${obj5.answerCommentDate}&nbsp; &nbsp;|&nbsp;&nbsp;${obj5.name}&nbsp;&nbsp;|&nbsp;&nbsp;${obj5.repo}
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </td>
                    </tr>
                    <tr>
                       <td>
                            <table width="100%" align="center">
                                <tr>
                                    <td colspan="2"></td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <a href="">Add Comment</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <table style="border-collapse: collapse; border-style: outset" border="0" width="100%" align="center">
                                                <tr>
                                                    <td>

                                                        <textarea id="taAComment${answerId}" name="taAComment" cols="100" rows="4"></textarea>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <input type="button" onclick="postAnswerComment('${obj.questionId}','${obj4.answerId}')" class="button" name="btnACPost" value="Post"/>
                                                        <input type="reset" class="button" name="rbtn" value="Cancel"/>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
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
</fieldset>
</td>
</tr>
<tr>
    <td>
        <table style="border-collapse: collapse;background-color: lightgray; border-style: outset" border="0" cellpadding="5" align="center" width="100%">
            <tr>
                <td>
                    <label><strong>Post Your Answer</strong></label>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td>
        <fieldset>
            <table style="border-collapse: collapse; border-style: outset" border="0" cellpadding="5" align="center" width="100%">
                <tr>
                    <td align="center">
                        <textarea id="taPostAnswer" name="taPostAnswer" cols="100" rows="5"></textarea>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <input type="submit" class="button" name="sbtnPost" value="Post"/>
                        <input type="reset" class="button" name="rbtn" value="Cancel"/>
                        <input type="button" class="button" name="btnBack" value="Back" onclick="window.location = 'ViewQuestions.jsp'"/>
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