
<%@page import="bugfix.services.user.UserServices"%>
<jsp:useBean id="objAddFeedback" class="bugfix.beans.user.AddFeedbackBean">
    <jsp:setProperty property="*" name="objAddFeedback"></jsp:setProperty>
</jsp:useBean>

<%
    UserServices objUserServices = new UserServices();
    if (request.getParameter("sbtnPost") != null) {
        response.sendRedirect("PostFeedback.jsp?msg=" + objUserServices.addFeedback(objAddFeedback));
    }
%>