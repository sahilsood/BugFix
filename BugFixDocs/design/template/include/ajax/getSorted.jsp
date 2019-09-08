<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="beans.*" %>
<%@page import="datalayer.*" %>
<%@page import="java.util.*" %>
<%
    response.setHeader("Cache-Control", "no-cache");
    String id = request.getParameter("q");
    RequestResponseServices rrsObj = new RequestResponseServices();
    List alst = new ArrayList();
    alst = rrsObj.getAllPendingRequestsAccSpecifiedCriteria(Integer.parseInt(id));
    pageContext.setAttribute("alst", alst);

%>    
<div id="showSortedData">
    <table border="1" cellpadding="5" cellspacing="0" class="styled" >
        <tr class="header">
            <th>
                Title
            </th>
            <th>
                Description
            </th>
            <th>
                Request
                Date
            </th>
            <th>
                Name
            </th>
        </tr>
        <c:choose>
            <c:when test="${alst.size()>0}">
                <c:forEach items="${alst}" var="objBean" varStatus="i">
                    <tr>
                        <td >
                            <a href="PostResponse.jsp?id=${objBean.requestId}">${objBean.txtRequestTitle}</a>
                        </td>
                        <td >
                            <label id="lblDescription" name="lblDescription" title="${objBean.taDescription}">
                                <c:choose>
                                    <c:when test="${objBean.taDescription.length() > 10}"> 
                                        ${objBean.taDescription.substring(0, 9)}
                                    </c:when>
                                    <c:otherwise>
                                        ${objBean.taDescription}
                                    </c:otherwise>
                                </c:choose>
                            </label>
                        </td>
                        <td >
                            <label id="lblRequestDate" name="lblRequestDate">
                                ${objBean.requestDate.split(" ")[0]}
                            </label>
                        </td>
                        <td >
                            <label id="lblName" name="lblResponseDate">${objBean.name}</label>
                        </td>
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="4">No requests</td>
                </tr>  
            </c:otherwise>
        </c:choose>
    </table>
</div>