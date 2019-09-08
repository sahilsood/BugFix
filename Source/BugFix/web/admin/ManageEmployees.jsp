<%@page import="java.util.List"%>
<%@page import="bugfix.beans.common.UsermasterBean"%>
<%@page import="bugfix.services.admin.UserServices"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Manage Employees</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <jsp:include page="mp_header.jsp"/>
        <%UserServices objServices = new UserServices();
            List<UsermasterBean> lstUsers = null;
            lstUsers = objServices.getAllEmployees();
            pageContext.setAttribute("LIST_USERS", lstUsers);
        %>
        <form action="#">
            <table align="center" cellpadding="5" border="0">
                <tr>
                    <td align="center">
                        <strong>Manage Employees</strong><br/>
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
                <tr>
                    <td align="left">
                        <input id="btnAddEmployee" name="btnAddEmployee" onclick="window.location = 'AddEmployee.jsp'" class="button" type="button" value="Add Employee" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table align="right" >
                            <tr>
                                <td>
                                    <label><b>Order By</b></label>
                                    <select>
                                        <option>Select</option>
                                        <option>A-Z</option>
                                        <option>Z-A</option>
                                        <option>Last Login</option>
                                    </select>
                                </td>
                                <td>
                                    <label><b>Status</b></label>
                                    <select>
                                        <option>Select</option>
                                        <option>Active</option>
                                        <option>InActive</option>
                                    </select>
                                </td>
                                <td>
                                    <input type="text" name="txtSearch" class="txtStyle"/>
                                </td>
                                <td>
                                    <input type="submit" class="button" name="sbtnSearch" value="Search"/>
                                </td>
                            </tr>
                        </table>
                    </td> 
                </tr>
                <tr>
                    <td>
                        <table align="center"  border="1" width = 100%>
                            <tr>
                                <th>
                                    S.No.
                                </th>
                                <th>
                                    Name
                                </th>
                                <th>
                                    Mobile
                                </th>
                                <th>
                                    Email
                                </th>
                                <th>
                                    Status
                                </th>
                                <th>
                                    Links
                                </th>
                            </tr>
                            <c:forEach items="${LIST_USERS}" var="obj" varStatus="i">
                                <tr>
                                    <td>${i.index + 1}</td>
                                    <td>${obj.name}</td>
                                    <td>${obj.mobile}</td>
                                    <td>${obj.email}</td>
                                    <td>${obj.userStatus}</td>
                                    <td>
                                        <a href="ViewUserDetails.jsp?userId=${obj.userId}">
                                            View</a>
                                        <a href="EmpController.jsp?changeUserType=employee&userId=${obj.userId}">
                                            Remove Employee</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </td>
                </tr>
            </table>
        </form>

        <jsp:include page="mp_footer.jsp"/>
    </body>
</html>
