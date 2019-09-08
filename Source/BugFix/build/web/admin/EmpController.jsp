<%@page import="bugfix.services.admin.UserServices"%>
<jsp:useBean id="objAddEditEmp" class="bugfix.beans.common.UsermasterBean">
    <jsp:setProperty property="*" name="objAddEditEmp"></jsp:setProperty>
</jsp:useBean>

<%
    UserServices objUserServices = new UserServices();
    if (request.getParameter("changeUserType") != null) {
        if (request.getParameter("changeUserType").equals("user")) {
            System.out.println("user");
            response.sendRedirect("ManageEmployees.jsp?msg=" + objUserServices.addEditEmp(Integer.parseInt(request.getParameter("userId")), request.getParameter("changeUserType")));
        } else if (request.getParameter("changeUserType").equals("employee")) {
            System.out.println("emp");
            response.sendRedirect("ManageEmployees.jsp?msg=" + objUserServices.addEditEmp(Integer.parseInt(request.getParameter("userId")), request.getParameter("changeUserType")));
        }
    }
%>