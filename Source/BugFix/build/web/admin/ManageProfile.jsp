<%@page import="bugfix.beans.common.CitymasterBean"%>
<%@page import="bugfix.beans.common.StatemasterBean"%>
<%@page import="bugfix.beans.common.SecuritymasterBean"%>
<%@page import="bugfix.beans.common.CountrymasterBean"%>
<%@page import="java.util.List"%>
<%@page import="bugfix.services.common.CountryStateCityServices"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="bugfix.beans.common.UsermasterBean"%>
<%@page import="bugfix.services.common.UsermasterServices"%>
<html>
    <head>
        <title>Manage Profile</title>
        <script type="text/javascript">
            var xmlObject;
            function getObject() {
                try {
                    xmlObject = new XMLHttpRequest();
                }
                catch (err1) {
                    try {
                        xmlObject = new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    catch (err2) {
                        xmlObject = new ActiveXObject("Msxml2.XMLHTTP");
                    }
                }

            }
            function getStates() {
                getObject();
                var url = "../State.jsp?countryId=" + document.getElementById("ddlCountry").value;
                xmlObject.onreadystatechange = function () {
                    if (xmlObject.readyState == 4) {
                        document.getElementById("divS").innerHTML = xmlObject.responseText;
                    }
                }
                xmlObject.open("GET", url, true);
                xmlObject.send(null);
            }

            function getCities() {
                getObject();
                var url = "../City.jsp?stateId=" + document.getElementById("ddlState").value;
                xmlObject.onreadystatechange = function () {
                    if (xmlObject.readyState == 4) {
                        document.getElementById("divC").innerHTML = xmlObject.responseText;
                    }
                }
                xmlObject.open("GET", url, true);
                xmlObject.send(null);
            }
        </script>
        <jsp:include page="stylesheet.jsp"/>
    </head>
    <body>
        <%
            UsermasterServices objServices = new UsermasterServices();
            UsermasterBean obj = objServices.getUserInfoById((Integer) session.getAttribute("userId"));
            pageContext.setAttribute("obj", obj);
        %>

        <%
            //UsermasterServices obj = new UsermasterServices();
            List<SecuritymasterBean> lstSecQues = null;
            lstSecQues = objServices.getAllSecQues();
            pageContext.setAttribute("LIST_SECQUES", lstSecQues);
        %>
        <%
            CountryStateCityServices objCServices = new CountryStateCityServices();
            List<CountrymasterBean> lstCountries = objCServices.getAllCountries();
            pageContext.setAttribute("LIST_COUNTRIES", lstCountries);
        %>
        <%
            List<StatemasterBean> lstStates = objCServices.getAllStatesByCountryId(obj.getCountryId());
            pageContext.setAttribute("LIST_STATES", lstStates);
        %>
        <%
            List<CitymasterBean> lstCities = objCServices.getAllCitiesByStateId(obj.getStateId());
            pageContext.setAttribute("LIST_CITIES", lstCities);
        %>
        <jsp:include page="mp_header.jsp"/>
        <form action="Controller.jsp" method="post">
            <table border="0" cellpadding="5" cellspacing="0" align="center">
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
                    <td align="center" ><strong>Manage Profile</strong></td>
                </tr>
                <tr>
                    <td>
                        <table border="0" >
                            <tr><td colspan="2" align="center"><input type="hidden" id="txtUserId" name="txtUserId" value="${obj.userId}"/></td></tr>
                            <tr>
                                <td>
                                    <fieldset>
                                        <legend><strong><em>Account Information</em></strong> </legend>
                                        <table border="0" >

                                            <tr>
                                                <td><strong>User Name</strong></td>
                                                <td><input id="txtUserName"  name="txtUsername" type="text" value="${obj.username}"/></td>
                                            </tr>
                                        </table>
                                    </fieldset>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <fieldset>
                                        <legend><strong><em>Personal Information</em></strong> </legend>
                                        <table border="0" >
                                            <tr>
                                                <td  width="50%"><strong>Name</strong></td>
                                                <td><input id="txtName"  name="txtName" type="text" value="${obj.name}"/></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Gender</strong></td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${obj.gender.equalsIgnoreCase('male')}">
                                                            <c:set var="male" value="checked"/>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <c:set var="female" value="checked"/>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <input type="radio" name="rbGender" id="rbGender" value="Male" ${male}>Male
                                                    <input type="radio" name="rbGender" id="rbGender" value="Female" ${female}>Female
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><strong>Date Of Birth</strong></td>
                                                <td><input id="txtDOB"  name="txtDOB" type="text" value="${obj.dob}"/></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Phone</strong></td>
                                                <td><input id="txtPhone"  name="txtPhone" type="text" value="${obj.phone}"/></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Mobile</strong></td>
                                                <td><input id="txtMobile"  name="txtMobile" type="text" value="${obj.mobile}"/></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Email</strong></td>
                                                <td><input id="txtEmail"  name="txtEmail" type="text" value="${obj.email}"/></td>
                                            </tr>
                                        </table>
                                    </fieldset>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <fieldset>
                                        <legend><strong><em>Address Information</em></strong> </legend>
                                        <table border="0" >
                                            <tr>
                                                <td valign="top"  width="48%"><strong>Address</strong></td>
                                                <td><textarea cols="23" rows="3" name="taAddress" id="taAddress">${obj.address}</textarea>
                                            </tr>
                                            <tr>
                                                <td><strong>Country</strong></td>
                                                <td>
                                                    <select onchange="getStates()" id="ddlCountry" name="ddlCountry">
                                                        <option>Select</option>

                                                        <c:forEach items="${LIST_COUNTRIES}" var="objC">
                                                            <c:set var="str" value=""/>
                                                            <c:if test="${obj.countryId == objC.countryId}">
                                                                <c:set var="str" value="selected"/>
                                                            </c:if>
                                                            <option value="${objC.countryId}" ${str}>${objC.countryName}</option>
                                                        </c:forEach>

                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><strong>State</strong></td>
                                                <td>
                                                    <div id="divS"> 
                                                        <select onchange="getCities()" id="ddlState" name="ddlState">
                                                            <option>Select</option>
                                                            <c:forEach items="${LIST_STATES}" var="objS">
                                                                <c:set var="str" value=""/>
                                                                <c:if test="${obj.stateId == objS.stateId}">
                                                                    <c:set var="str" value="selected"/>
                                                                </c:if>
                                                                <option value="${objS.stateId}" ${str}>${objS.stateName}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>

                                                <td><strong>City</strong></td>
                                                <td>
                                                    <div id="divC">
                                                        <select id="ddlCity" name="ddlCity">
                                                            <option>Select</option>
                                                            <c:forEach items="${LIST_CITIES}" var="objCi">
                                                                <c:set var="str" value=""/>
                                                                <c:if test="${obj.cityId == objCi.cityId}">
                                                                    <c:set var="str" value="selected"/>
                                                                </c:if>
                                                                <option value="${objCi.cityId}" ${str}>${objCi.cityName}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><strong>Pin Code</strong></td>
                                                <td><input id="txtPinCode"  name="txtPinCode" type="text" value="${obj.pinCode}"/></td>
                                            </tr>
                                        </table>
                                    </fieldset>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <fieldset>
                                        <legend><strong><em>Security Question</em></strong> </legend>
                                        <table border="0" >
                                            <tr>
                                                <td valign="top"  width="50%"><strong>Question</strong></td>
                                                <td>
                                                    <select id="ddlSecQues" name="ddlSecQues">
                                                        <option value="0" selected="selected">Select</option>
                                                        <c:forEach items="${LIST_SECQUES}" var="objSQ">
                                                            <c:set var="str" value=""/>
                                                            <c:if test="${obj.securityQuestionId == objSQ.securityQuestionId}">
                                                                <c:set var="str" value="selected"/>
                                                            </c:if>
                                                            <option value="${objSQ.securityQuestionId}" ${str}>${objSQ.question}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td><strong>Answer</strong></td>
                                                <td>
                                                    <input type="text" class="txtStyle" name="txtSecAnswer" id="txtSecAnswer" value="${obj.secAnswer}"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </fieldset>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right">
                                    <input type ="submit" name="sbtnSave" value="Save" />
                                    <input type ="button" name="btnCancel" value="Cancel" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </form>
        <jsp:include page="mp_footer.jsp"/>
    </body>
</html>


