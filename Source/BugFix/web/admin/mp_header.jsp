<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="bugfix.beans.common.UsermasterBean"%>
<%
    String type = session.getAttribute("userType").toString();
    pageContext.setAttribute("type", type);
    %>
<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
    <tr>
        <td style="width: 100%;height: 20%">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;height: 100%">
                <tr>
                    <td style="background: #66A1DD;width: 100%;height: 20%">
                        <div id="header">
                            <jsp:include page="header.jsp" />
                        </div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr style="width: 100%;height: 5%">
        <td style="border-top:solid 1px black;border-bottom:solid 1px black">
            <c:if test="${type=='administrator'}" >
            <jsp:include page="topmenuadmin.jsp"/>
            </c:if>
            <c:if test="${type=='employee'}" >
            <jsp:include page="topmenuemp.jsp"/>
            </c:if>
            
        </td>
    </tr>
    <tr style="width: 100%;height: 100%">
        <td>
            <div id="main" style="min-height: 560px">