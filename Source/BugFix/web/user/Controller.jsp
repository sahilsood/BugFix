<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@page import="bugfix.services.common.UsermasterServices"%>
<jsp:useBean id="objBean" class="bugfix.beans.common.SignUpBean">
    <jsp:setProperty name="objBean" property="*"/>
</jsp:useBean>

<%
    String result = "";
    if (request.getParameter("sbtnSave") != null) {
        result = new UsermasterServices().updateProfile(objBean);
         response.sendRedirect("ManageProfile.jsp?msg=" + result);
    }
   
%>

<%@page import="bugfix.services.common.UsermasterServices"%>
<jsp:useBean id="obj" class="bugfix.beans.common.AskQuestionBean">
    <jsp:setProperty name="obj" property="*"/>
</jsp:useBean>

<%
    result = "";
    if (request.getParameter("sbtnPost") != null) {
        result = new UsermasterServices().askQuestion(obj);
          response.sendRedirect("AskQuestion.jsp?msg=" + result);
    }
  
%>
