<%@page import="beans.*" %>
<%@page import="datalayer.*" %>
<%@page import="java.util.*" %>
<%
    response.setHeader("Cache-Control", "no-cache");
    int id= Integer.parseInt(request.getParameter("id"));
    FeedbackServices fsObj=new FeedbackServices();
    SendFeedbackBean objBean=fsObj.getFeedbackDetailById(id);
    pageContext.setAttribute("objBean", objBean);
%>
<form action="ManageFeedbackController.jsp?action=delete&id=${objBean.id}" method="post">
<fieldset>
    <table id="tbFeedback" align="center" border="0" cellpadding="5" cellspacing="0" >
        <tr>
            <td >
                <b>Feedback By</b>
            </td>
            <td>
                ${objBean.txtName}
            </td>
        </tr>
        <tr>
            <td >
                <strong>Post Date </strong>
            </td>
            <td>
                ${objBean.date.split(" ")[0]}
            </td>
        </tr>
        <tr>
            <td >
                <strong>Phone</strong></td>
            <td>
                ${objBean.txtPhone}
            </td>
        </tr>
        <tr>
            <td >
                <strong>Mobile</strong></td>
            <td>
                ${objBean.txtMobile}
            </td>
        </tr>
        <tr>
            <td >
                <strong>Email Id</strong></td>
            <td>
                ${objBean.txtEmail}
            </td>
        </tr>
        <tr>
            <td>
                <strong>Feedback Title</strong> 
            </td>
            <td>
                ${objBean.txtTitle}
            </td>
        </tr>
        <tr>
            <td >
                <strong>Description</strong> 
            </td>
            <td>
                ${objBean.taFeedback}
            </td>

        </tr>
        <tr>
            <td colspan="3" align="center">
                <input class="blue" id="btnCancel" type="button" value="Cancel" onclick="closeFeedback()" />
                <input class="blue" id="btnDelete" type="submit" value="Delete" />
            </td>
        </tr>
    </table>
</fieldset>
</form>