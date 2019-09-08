<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="objAddCountry" class="bugfix.beans.admin.AddCountryBean">
    <jsp:setProperty property="*" name="objAddCountry"></jsp:setProperty>
</jsp:useBean>


<%@page import="bugfix.services.admin.CountrymasterServices"%>
<%
    CountrymasterServices objCountryServices = new CountrymasterServices();
    if (request.getParameter("changeCountryStatus") != null) {
        if (request.getParameter("changeCountryStatus").equals("0")) {
            response.sendRedirect("ManageCountry.jsp?msg=" + objCountryServices.changeStatusToInactive(Integer.parseInt(request.getParameter("countryId"))));
        } else if (request.getParameter("changeCountryStatus").equals("1")) {
            response.sendRedirect("ManageCountry.jsp?msg=" + objCountryServices.changeStatusToActive(Integer.parseInt(request.getParameter("countryId"))));
        }
    } else if (request.getParameter("sbtnAddCountry") != null) {
        response.sendRedirect("ManageCountry.jsp?msg=" + objCountryServices.addCountry(objAddCountry));
    }
%>

<%@page import="bugfix.services.admin.StatemasterServices"%>
<jsp:useBean id="objAddState" class="bugfix.beans.admin.AddStateBean">
    <jsp:setProperty property="*" name="objAddState"></jsp:setProperty>
</jsp:useBean>

<%
    StatemasterServices objStateServices = new StatemasterServices();
    if (request.getParameter("changeStateStatus") != null) {
        if (request.getParameter("changeStateStatus").equals("0")) {
            response.sendRedirect("ManageState.jsp?countryId=" + request.getParameter("countryId") + "&countryName=" + request.getParameter("countryName") + "&msg=" + objStateServices.changeStatusToInactive(Integer.parseInt(request.getParameter("stateId"))));
        } else if (request.getParameter("changeStateStatus").equals("1")) {
            response.sendRedirect("ManageState.jsp?countryId=" + request.getParameter("countryId") + "&countryName=" + request.getParameter("countryName") + "&msg=" + objStateServices.changeStatusToActive(Integer.parseInt(request.getParameter("stateId"))));
        }
    } else if (request.getParameter("sbtnAddState") != null) {
        response.sendRedirect("ManageState.jsp?countryId=" + objAddState.getHdCountryId() + "&countryName=" + objAddState.getHdCountryName() + "&msg=" + objStateServices.addState(objAddState));
    }
%>

<%@page import="bugfix.services.admin.CitymasterServices"%>
<jsp:useBean id="objAddCity" class="bugfix.beans.admin.AddCityBean">
    <jsp:setProperty property="*" name="objAddCity"></jsp:setProperty>
</jsp:useBean>

<%
    CitymasterServices objCityServices = new CitymasterServices();
    if (request.getParameter("changeCityStatus") != null) {
        if (request.getParameter("changeCityStatus").equals("0")) {
            response.sendRedirect("ManageCity.jsp?stateId=" + request.getParameter("stateId") + "&stateName=" + request.getParameter("stateName") + "&msg=" + objCityServices.changeStatusToInactive(Integer.parseInt(request.getParameter("cityId"))));
        } else if (request.getParameter("changeCityStatus").equals("1")) {
            response.sendRedirect("ManageCity.jsp?stateId=" + request.getParameter("stateId") + "&stateName=" + request.getParameter("stateName") + "&msg=" + objCityServices.changeStatusToActive(Integer.parseInt(request.getParameter("cityId"))));
        }
    } else if (request.getParameter("sbtnAddCity") != null) {
        response.sendRedirect("ManageCity.jsp?stateId=" + objAddCity.getHdStateId() + "&stateName=" + objAddCity.getHdStateName() + "&msg=" + objCityServices.addCity(objAddCity));
    }
%>

<%@page import="bugfix.services.admin.UserServices"%>
<jsp:useBean id="objAddSecQues" class="bugfix.beans.admin.AddSecQuesBean">
    <jsp:setProperty property="*" name="objAddSecQues"></jsp:setProperty>
</jsp:useBean>

<%
    UserServices objUserServices = new UserServices();
    if (request.getParameter("changeQuestionStatus") != null) {
        if (request.getParameter("changeQuestionStatus").equals("0")) {
            response.sendRedirect("ManageSecurityQuestions.jsp?msg=" + objUserServices.changeSQStatusToInactive(Integer.parseInt(request.getParameter("securityQuestionId"))));
        } else if (request.getParameter("changeQuestionStatus").equals("1")) {
            response.sendRedirect("ManageSecurityQuestions.jsp?msg=" + objUserServices.changeSQStatusToActive(Integer.parseInt(request.getParameter("securityQuestionId"))));
        }
    } else if (request.getParameter("sbtnAddSecQues") != null) {
        response.sendRedirect("ManageSecurityQuestions.jsp?msg=" + objUserServices.addSecQues(objAddSecQues));
    }
%>

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

<%@page import="bugfix.services.admin.UserServices"%>
<jsp:useBean id="objUserBean" class="bugfix.beans.common.SignUpBean">
    <jsp:setProperty name="objUserBean" property="*"/>
</jsp:useBean>
<%
    String userType = request.getParameter("txtUserType");
    pageContext.setAttribute("userType", userType);
%>
<c:choose>
    <c:when test="${param.sbtnUpdate ne null}">
        <% String result2 = new UserServices().updateUser(objBean);%>
        <c:choose>
            <c:when test="${userType.equalsIgnoreCase('employee')}">
                <% response.sendRedirect("ManageEmployees.jsp?msg=" + result2); %>
            </c:when>
            <c:otherwise>
                <% response.sendRedirect("ManageUsers.jsp?msg=" + result2);%>
            </c:otherwise>
        </c:choose>
    </c:when>
</c:choose>