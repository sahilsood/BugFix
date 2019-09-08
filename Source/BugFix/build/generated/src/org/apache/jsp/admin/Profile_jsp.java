package org.apache.jsp.admin;

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
      out.write("            <table border=\"0\" cellpadding=\"5\" align=\"center\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td align=\"center\"  valign=\"top\"><strong>Profile Detail</strong></td>\r\n");
      out.write("\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td align=\"left\">\r\n");
      out.write("                        <label id =\"lblMsg\" style=\"color: red\"><small>lblMsg</small></label>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <table border=\"0\" width=\"100%\">\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td><b>Username</b></td>\r\n");
      out.write("                                <td>:</td>\r\n");
      out.write("                                <td><input type=\"text\" id=\"txtUsername\" class=\"txtStyle\" name=\"txtUsername\" value=\"RandeepSingh\" readonly=\"\"/></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </table>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <fieldset>\r\n");
      out.write("                            <legend><strong><em>Personal Information</em></strong> </legend>\r\n");
      out.write("                            <table border=\"0\" >\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td><strong>Name</strong></td>\r\n");
      out.write("                                    <td><input id=\"txtName\"  name=\"txtName\" type=\"text\" value=\"Randeep Singh\"/></td>\r\n");
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
      out.write("                            <table border=\"0\">\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td valign=\"top\"><strong>Address</strong></td>\r\n");
      out.write("                                    <td><textarea cols=\"23\" rows=\"3\" name=\"taAddress\" id=\"taAddress\">#24 Sec 20 A</textarea>\r\n");
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
      out.write("                                                <option value=\"0\" selected=\"selected\">Chandigarh</option>\r\n");
      out.write("                                            </select>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td><strong>City</strong></td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <div id=\"divCity\">\r\n");
      out.write("                                            <select id=\"ddlCity\" name=\"ddlCity\">\r\n");
      out.write("                                                <option value=\"0\" selected=\"selected\">Chandigarh</option>\r\n");
      out.write("                                            </select>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td><strong>Pin</strong></td>\r\n");
      out.write("                                    <td><input id=\"txtPin\"  name=\"txtPin\" type=\"text\" value=\"123321\"/></td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </fieldset>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td align=\"right\">\r\n");
      out.write("                        <input type=\"submit\" class=\"button\" name=\"sbtnUpdate\" value=\"Update\" id=\"sbtnUpdate\">&nbsp;\r\n");
      out.write("                        <input type=\"reset\" class=\"button\" name=\"rbtnReset\" value=\"Reset\" id=\"rbtnReset\">\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </table>\r\n");
      out.write("        </form>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "mp_footer.jsp", out, false);
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
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
