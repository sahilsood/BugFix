<%@page import="bugfix.beans.common.UsermasterBean"%>
<%@page import="bugfix.services.common.UsermasterServices"%>
<div id="topmenu" align="center" style="background: black; background-repeat: repeat-x;
     background-position: center">
    <table><tr><td>
                <div class="menu">
                    <ul>
                        <li><a href="HomePageAdmin.jsp">Home</a></li>
                        <li><a href="AskQuestion.jsp">Ask Questions</a></li>
                        <li><a href="ManageUsers.jsp">Users</a></li>
                        <li><a href="#" >Manage</a>
                            <div>
                                <ul>
                                    <li><a href="ManageFAQ.jsp">FAQ</a></li>
                                    <li><a href="ManageFeedback.jsp">Feedback</a></li>
                                    <li><a href="ManageCountry.jsp">Countries</a></li>
                                    <li><a href="ManageResponses.jsp">Responses</a></li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="#" >Reports</a>
                            <div>
                                <ul>
                                    <li><a href="UsersReport.jasper(Report)">Users</a></li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="#" >Account</a>
                            <div>
                                <ul>
                                    <li><a href="ManageProfile.jsp">Profile</a></li>
                                    <li><a href="ChangePassword.jsp">Change Password</a></li>
                                    <li><a href="../LogoutServlet">Logout</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div></td>
            <td><div style="text-align: right">
                    <form method="get" action="/search" id="search">
                        <input name="q" type="text" size="40" placeholder="Search..." />
                    </form></div>
            </td>
            <td align = "right"><h3 style="color: red">&nbsp&nbsp&nbsp&nbspWelcome&nbsp</h3></td>
            <td>
                <%
                    UsermasterServices objServices = new UsermasterServices();
                    UsermasterBean obj = objServices.getUserInfoById((Integer) session.getAttribute("userId"));
                    pageContext.setAttribute("obj", obj);
                %>
                <h3 style="color: red"> ${obj.name} </h3>
            </td>
        </tr></table>
</div>