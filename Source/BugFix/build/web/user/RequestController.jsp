<%@page import="bugfix.services.user.UserServices"%>
<jsp:useBean id="objAddRequest" class="bugfix.beans.user.AddRequestBean">
    <jsp:setProperty property="*" name="objAddRequest"></jsp:setProperty>
</jsp:useBean>

<%
    UserServices objUserServices = new UserServices();
    if (request.getParameter("sbtnPost") != null) {
        response.sendRedirect("ManageRequest.jsp?msg=" + objUserServices.addRequest(objAddRequest));
    }
%>