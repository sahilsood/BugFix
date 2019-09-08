<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="bugfix.services.user.UserServices"%>
<jsp:useBean id="objBean" class="bugfix.beans.common.SignUpBean">
    <jsp:setProperty name="objBean" property="*"/>
</jsp:useBean>

<c:choose>
    <c:when test="${param.sbtnSave ne null}">
        <%
            UserServices objServices = new UserServices();
            String result= objServices.signUp(objBean);
            response.sendRedirect("Login.jsp?msg="+result);
        %>
    </c:when>
</c:choose>