<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="beans.*" %>
<%@page import="datalayer.*" %>
<%@page import="java.util.*" %>
<%
    response.setHeader("Cache-Control", "no-cache");
    String id = request.getParameter("q");
//    String sel = request.getParameter("sel");
//    int selId = 0;
//    if (sel != null) {
//        if (!sel.equalsIgnoreCase("")) {
//            selId = Integer.parseInt(sel);
//        }
//    }
    ArrayList al = new LocationServices().getAllStates(Integer.parseInt(id));
    System.out.println(al.size());
    pageContext.setAttribute("al", al);
%>
<select id="ddlState" name="ddlState" onChange="getCities(this.value)" style="width: 126px" >
    <option value="0" selected="selected">Select</option>

    <c:forEach items="${al}" var="obj">
        <c:set var="select" value=""/>
        <c:if test="${obj.stateId eq param.sel}">
            <c:set var="select" value="selected"/>
        </c:if>
        <option value="${obj.stateId}" ${select}>${obj.txtStateName}</option>
    </c:forEach>

</select>  
