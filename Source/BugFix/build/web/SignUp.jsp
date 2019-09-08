<%@page import="bugfix.beans.common.SecuritymasterBean"%>
<%@page import="bugfix.services.common.UsermasterServices"%>
<%@page import="bugfix.beans.common.CountrymasterBean"%>
<%@page import="java.util.List"%>
<%@page import="bugfix.services.common.CountryStateCityServices"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <head>
        <title>SignUp</title>
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
                    var url = "State.jsp?countryId=" + document.getElementById("ddlCountry").value;
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
                    var url = "City.jsp?stateId=" + document.getElementById("ddlState").value;
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
    
        <jsp:include page="mp_header.jsp"/>
        <%
            CountryStateCityServices objServices = new CountryStateCityServices();
            List<CountrymasterBean> lstCountries = objServices.getAllCountries();
            pageContext.setAttribute("LIST_COUNTRIES", lstCountries);
        %>
        <%
            UsermasterServices obj = new UsermasterServices();
            List<SecuritymasterBean> lstSecQues = null;
            lstSecQues = obj.getAllSecQues();
            pageContext.setAttribute("LIST_SECQUES", lstSecQues);
        %>
        <form action="Controller.jsp" method="post">
            <table border="0" cellpadding="5" cellspacing="0" align="center">
                <tr>
                    <td align="center" ><strong>Sign Up</strong></td>
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
                    <td>
                        <table border="0" >

                            <tr>
                                <td>
                                    <fieldset>
                                        <legend><strong><em>Account Information</em></strong> </legend>
                                        <table border="0" >

                                            <tr>
                                                <td><strong>User Name</strong></td>
                                                <td><input id="txtUsername"  name="txtUsername" type="text"/></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Password</strong></td>
                                                <td><input id="txtPassword"  name="txtPassword" type="password"/></td>
                                            </tr>
                                            <tr>
                                                <td width="50%"><strong>Confirm Password</strong></td>
                                                <td><input id="txtConfirmPassword"  name="txtConfirmPassword" type="password"/></td>
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
                                                <td><input id="txtName"  name="txtName" type="text"/></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Gender</strong></td>
                                                <td>
                                                    <input type="radio" name="rbGender" id="rbGender" value="Male">Male
                                                    <input type="radio" name="rbGender" id="rbGender" value="Female">Female
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><strong>Date Of Birth</strong></td>
                                                <td><input id="txtDOB"  name="txtDOB" type="date"/></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Phone</strong></td>
                                                <td><input id="txtPhone"  name="txtPhone" type="text"/></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Mobile</strong></td>
                                                <td><input id="txtMobile"  name="txtMobile" type="text"/></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Email</strong></td>
                                                <td><input id="txtEmail"  name="txtEmail" type="text"/></td>
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
                                                <td><textarea cols="23" rows="3" name="taAddress" id="taAddress"></textarea>
                                            </tr>
                                            <tr>
                                                <td><strong>Country</strong></td>
                                                <td>
                                                    <select onchange="getStates()" id="ddlCountry" name="ddlCountry">
                                                        <option>Select</option>
                                                        <c:forEach items="${LIST_COUNTRIES}" var="obj">
                                                            <option value="${obj.countryId}">${obj.countryName}</option>
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
                                                        </select>
                                                    </div>
                                                </td>
                                            </tr>
					<tr>
                                                <td><strong>Pin Code</strong></td>
                                                <td><input id="txtPinCode"  name="txtPinCode" type="text"/></td>
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
                                                        <c:forEach items="${LIST_SECQUES}" var="obj">
                                                            <option value="${obj.securityQuestionId}">${obj.question}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td><strong>Answer</strong></td>
                                                <td>
                                                    <input type="text" class="txtStyle" name="txtSecAnswer" id="txtSecAnswer"/>
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
    



