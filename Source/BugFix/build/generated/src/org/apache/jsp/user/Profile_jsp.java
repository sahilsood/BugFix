package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Profile_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title></title>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "stylesheet.jsp", out, false);
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "mp_header.jsp", out, false);
      out.write("\r\n");
      out.write("        <form action=\"#\" method=\"post\">\r\n");
      out.write("            <table border=\"0\"  align=\"center\" cellpadding=\"5\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td align=\"center\" ><strong>Profile Detail</strong></td>\r\n");
      out.write("\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td >\r\n");
      out.write("                        <label style=\"color: red\">\r\n");
      out.write("                            <small>lblMsg</small>\r\n");
      out.write("                        </label>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("           \r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <table border=\"0\" width=\"100%\">\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td><strong>Username:  </strong><label>randeep</label></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </table>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <fieldset>\r\n");
      out.write("                            <legend><strong><em>Personal Information</em></strong> </legend>\r\n");
      out.write("                            <table border=\"0\">\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td ><strong>Name</strong></td>\r\n");
      out.write("                                    <td width=\"30%\"><input id=\"txtName\"  name=\"txtName\" type=\"text\" value=\"Randeep Singh\"/></td>\r\n");
      out.write("                                </tr> \r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td><strong>Date Of Birth</strong></td>\r\n");
      out.write("                                    <td><input id=\"txtDOB\"  name=\"txttxtDOB\" type=\"text\" value=\"1984-01-26\"/></td>\r\n");
      out.write("                                </tr> \r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td><strong>Gender</strong></td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <input type=\"radio\" name=\"rbtnGender\" id=\"rbtnMale\" value=\"Male\" checked=\"checked\">Male\r\n");
      out.write("                                        <input type=\"radio\" name=\"rbtnGender\" id=\"rbtnFeale\" value=\"Female\">Female\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td><strong>Phone</strong></td>\r\n");
      out.write("                                    <td><input id=\"txtPhone\"  name=\"txtPhone\" type=\"text\" value=\"0172-234321\"/></td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td><strong>Mobile</strong></td>\r\n");
      out.write("                                    <td><input id=\"txtMobile\"  name=\"txtMobile\" type=\"text\" value=\"9876567832\"/></td>\r\n");
      out.write("                                </tr> \r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td><strong>Email ID</strong></td>\r\n");
      out.write("                                    <td><input id=\"txtEmailID\"  name=\"txttxtEmailID\" type=\"text\" value=\"randeep@gmail.com\"/></td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </fieldset>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <fieldset>\r\n");
      out.write("                            <legend><strong><em>Address Information</em></strong> </legend>\r\n");
      out.write("                            <table border=\"0\" >\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td valign=\"top\"  ><strong>Address</strong></td>\r\n");
      out.write("                                    <td width=\"30%\"><textarea cols=\"23\" rows=\"3\" name=\"taAddress\" id=\"taAddress\">#24 Sec 20 A</textarea>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td><strong>Country</strong></td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <select id=\"ddlCountry\" name=\"ddlCountry\">\r\n");
      out.write("                                            <option value=\"0\" selected=\"selected\">India</option>\r\n");
      out.write("                                        </select>\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td><strong>State</strong></td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <div id=\"divState\">\r\n");
      out.write("                                            <select id=\"ddlState\" name=\"ddlState\">\r\n");
      out.write("                                                <option value=\"0\" selected=\"selected\">Punjab</option>\r\n");
      out.write("                                            </select>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td><strong>City</strong></td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <div id=\"divCity\">\r\n");
      out.write("                                            <select id=\"ddlCity\" name=\"ddlCity\">\r\n");
      out.write("                                                <option value=\"0\" selected=\"selected\">Mohali</option>\r\n");
      out.write("                                            </select>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("                                    <td><strong>PIN Code</strong></td>\r\n");
      out.write("                                    <td><input id=\"txtEmailID\"  name=\"txtPinCode\" type=\"text\" value=\"345345\"/></td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </fieldset>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <fieldset>\r\n");
      out.write("                            <legend><strong><em>Security Question</em></strong> </legend>\r\n");
      out.write("                            <table cellspacing=\"0\">\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td valign=\"top\"><strong>Ques</strong></td>\r\n");
      out.write("                                    <td width=\"30%\">\r\n");
      out.write("                                        <select>\r\n");
      out.write("                                            \r\n");
      out.write("                                            <option>\r\n");
      out.write("                                                Which is your fav color?\r\n");
      out.write("                                            </option>\r\n");
      out.write("                                        </select>\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                       <b> Answer</b>\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <input type=\"text\" name=\"txtAnswer\" value=\"Blue\" class=\"txtStyle\"/>\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </fieldset>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td align=\"right\">\r\n");
      out.write("                        <input type=\"button\" class=\"button\" name=\"sbtnBack\" value=\"Back\" id=\"sbtnBack\">&nbsp;\r\n");
      out.write("                        <input type=\"submit\" class=\"button\" name=\"sbtnSave\" value=\"Save\" id=\"sbtnSave\">\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </table>\r\n");
      out.write("        </form>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "mp_footer.jsp", out, false);
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
