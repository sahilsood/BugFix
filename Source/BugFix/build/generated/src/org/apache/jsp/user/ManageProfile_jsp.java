package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ManageProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title></title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "stylesheet.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "mp_header.jsp", out, false);
      out.write("\n");
      out.write("        <form action=\"#\" method=\"post\">\n");
      out.write("            <table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td align=\"center\" ><strong>Manage Profile</strong></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td align=\"left\">\n");
      out.write("                        <label id =\"lblMsg\" style=\"color: red\">\n");
      out.write("                            <small>lblMsg</small></label>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <table border=\"0\" >\n");
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <fieldset>\n");
      out.write("                                        <legend><strong><em>Account Information</em></strong> </legend>\n");
      out.write("                                        <table border=\"0\" >\n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>User Name</strong></td>\n");
      out.write("                                                <td><input id=\"txtUserName\"  name=\"txtUserName\" type=\"text\"/></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>Password</strong></td>\n");
      out.write("                                                <td><input id=\"txtPassword\"  name=\"txttxtPassword\" type=\"password\"/></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td width=\"50%\"><strong>Confirm Password</strong></td>\n");
      out.write("                                                <td><input id=\"txtConfirmPassword\"  name=\"txtConfirmPassword\" type=\"password\"/></td>\n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                        </table>\n");
      out.write("                                    </fieldset>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <fieldset>\n");
      out.write("                                        <legend><strong><em>Personal Information</em></strong> </legend>\n");
      out.write("                                        <table border=\"0\" >\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td  width=\"50%\"><strong>Name</strong></td>\n");
      out.write("                                                <td><input id=\"txtName\"  name=\"txtName\" type=\"text\"/></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>Gender</strong></td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <input type=\"radio\" name=\"rbtnGender\" id=\"rbtnMale\" value=\"Male\">Male\n");
      out.write("                                                    <input type=\"radio\" name=\"rbtnGender\" id=\"rbtnFeale\" value=\"Female\">Female\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>Date Of Birth</strong></td>\n");
      out.write("                                                <td><input id=\"txtDOB\"  name=\"txtDOB\" type=\"text\"/></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>Phone</strong></td>\n");
      out.write("                                                <td><input id=\"txtPhone\"  name=\"txtPhone\" type=\"text\"/></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>Mobile</strong></td>\n");
      out.write("                                                <td><input id=\"txtMobile\"  name=\"txtMobile\" type=\"text\"/></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>Email</strong></td>\n");
      out.write("                                                <td><input id=\"txtEmail\"  name=\"txtEmail\" type=\"text\"/></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </table>\n");
      out.write("                                    </fieldset>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <fieldset>\n");
      out.write("                                        <legend><strong><em>Address Information</em></strong> </legend>\n");
      out.write("                                        <table border=\"0\" >\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td valign=\"top\"  width=\"48%\"><strong>Address</strong></td>\n");
      out.write("                                                <td><textarea cols=\"23\" rows=\"3\" name=\"taAddress\" id=\"taAddress\"></textarea>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>Country</strong></td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <select id=\"ddlCountry\" name=\"ddlCountry\">\n");
      out.write("                                                        <option value=\"0\" selected=\"selected\">Select</option>\n");
      out.write("                                                    </select>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>State</strong></td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div id=\"divState\">\n");
      out.write("                                                        <select id=\"ddlState\" name=\"ddlState\">\n");
      out.write("                                                            <option value=\"0\" selected=\"selected\">Select</option>\n");
      out.write("                                                        </select>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("\n");
      out.write("                                                <td><strong>City</strong></td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div id=\"divCity\">\n");
      out.write("                                                        <select id=\"ddlCity\" name=\"ddlCity\">\n");
      out.write("                                                            <option value=\"0\" selected=\"selected\">Select</option>\n");
      out.write("                                                        </select>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("                                                <td><strong>Pin Code</strong></td>\n");
      out.write("                                                <td><input id=\"txtPinCode\"  name=\"txtPinCode\" type=\"text\"/></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </table>\n");
      out.write("                                    </fieldset>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <fieldset>\n");
      out.write("                                        <legend><strong><em>Security Question</em></strong> </legend>\n");
      out.write("                                        <table border=\"0\" >\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td valign=\"top\"  width=\"50%\"><strong>Question</strong></td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <select id=\"ddlCountry\" name=\"ddlCountry\">\n");
      out.write("                                                        <option value=\"0\" selected=\"selected\">Select</option>\n");
      out.write("                                                    </select>\n");
      out.write("                                                </td>\n");
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>Answer</strong></td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <input type=\"text\" class=\"txtStyle\" name=\"txtAnswer\"/>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </table>\n");
      out.write("                                    </fieldset>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td colspan=\"2\" align=\"right\">\n");
      out.write("                                    <input type =\"button\" name=\"btnSave\" value=\"Save\" />\n");
      out.write("                                    <input type =\"button\" name=\"btnCancel\" value=\"Cancel\" />\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "mp_footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
