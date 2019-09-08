<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@page import="bugfix.services.common.UsermasterServices"%>
<jsp:useBean id="obj" class="bugfix.beans.common.PostAnswerBean">
    <jsp:setProperty name="obj" property="*"/>
</jsp:useBean>

<%
    String result = "";
    if (request.getParameter("sbtnPost") != null) {
        result = new UsermasterServices().postAnswer(obj);
          response.sendRedirect("ViewQuestionDetails.jsp?questionId="+ obj.getTxtQuestionId() + "&msg=" + result);
    }
  
%>

<%@page import="bugfix.services.common.UsermasterServices"%>
<jsp:useBean id="objC" class="bugfix.beans.common.PostCommentBean">
    <jsp:setProperty name="objC" property="*"/>
</jsp:useBean>

<%
    String result1 = "";
    if (request.getParameter("sbtnQCPost") != null) {
        result1 = new UsermasterServices().postQuestionComment(objC);
          response.sendRedirect("ViewQuestionDetails.jsp?questionId="+ obj.getTxtQuestionId() + "&msg=" + result1);
    }
  
    result1 = "";
    if (request.getParameter("txtAnswerId") != null) {
        result1 = new UsermasterServices().postAnswerComment(objC);
          response.sendRedirect("ViewQuestionDetails.jsp?questionId="+ obj.getTxtQuestionId() + "&answerId="+ obj.getTxtAnswerId()+ "&msg=" + result1);
    }
  
%>