package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class EditEmployee_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "stylesheet.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "mp_header.jsp", out, false);
      out.write("\n");
      out.write("        <table align=\"center\" cellpadding=\"5\" >\n");
      out.write("            <tr>\n");
      out.write("                <td align=\"center\">\n");
      out.write("                    <strong>Edit Employee</strong>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("              <tr>\n");
      out.write("                    <td align=\"left\">\n");
      out.write("                        <label id =\"lblMsg\" style=\"color:red\"><small>\n");
      out.write("                                lblMsg</small></label>\n");
      out.write("                    </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <table width=\"100%\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <fieldset>\n");
      out.write("                                    <legend>\n");
      out.write("                                        <b>Account Info</b>\n");
      out.write("                                    </legend>\n");
      out.write("                                    <table width=\"100%\">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b>Username</b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <input type=\"text\" name=\"txtUsername\" value=\"deepak\" readonly class=\"txtStyle\"/>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        \n");
      out.write("                                    </table>\n");
      out.write("                                </fieldset>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <table width=\"100%\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <fieldset>\n");
      out.write("                                    <legend><b>Personal Info</b></legend>\n");
      out.write("                                    <table width=\"100%\">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td width=\"30%\">\n");
      out.write("                                                <b>Name</b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <input type=\"text\" name=\"txtName\" value=\"Deepak Jindal\" class=\"txtStyle\"/>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b>Gender</b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <input type=\"radio\" name=\"rbGender\" value=\"Male\" checked=\"\" />Male\n");
      out.write("                                                <input type=\"radio\" name=\"rbGender\" value=\"Female\"/>Female\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b> DOB</b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <input type=\"text\" name=\"txtDob\" value=\"1990-09-09\" class=\"txtStyle\"/>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b> Phone</b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <input type=\"text\" name=\"txtPhone\" value=\"01232-698787\" class=\"txtStyle\"/>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b>Mobile</b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <input type=\"text\" name=\"txtMobile\" value=\"9876765656\" class=\"txtStyle\"/>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b>Email</b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <input type=\"text\" name=\"txtEmail\" value=\"deepak@gmail.com\" class=\"txtStyle\"/>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                </fieldset>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <table width=\"100%\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <fieldset>\n");
      out.write("                                    <legend>\n");
      out.write("                                        <b>Address Info</b>\n");
      out.write("                                    </legend>\n");
      out.write("                                    <table width=\"100%\">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td valign=\"top\">\n");
      out.write("                                                <b>Address  </b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <textarea>House no: 132,sec-33A,chd</textarea>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b>Country</b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <select>\n");
      out.write("\t\t\t\t\t\t  <option value=\"0\">Select</option>\n");
      out.write("                                                  <option selected=\"selected\" value=\"India\">India</option>\n");
      out.write("\t\t\t\t\t\t  <option value=\"USA\">USA</option>\n");
      out.write("\t\t\t\t\t\t  <option value=\"China\">China</option>\n");
      out.write("\t\t\t\t\t\t  <option value=\"Japan\">Japan</option>\n");
      out.write("                                                </select>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b>State</b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <select>\n");
      out.write("\t\t\t\t\t\t  <option value=\"0\">Select</option>\n");
      out.write("                                                  <option selected=\"selected\" value=\"Punjab\">Punjab</option>\n");
      out.write("\t\t\t\t\t\t  <option value=\"Harayana\">Harayana</option>\n");
      out.write("\t\t\t\t\t\t  <option value=\"Ferozepur\">Ferozepur</option>\n");
      out.write("\t\t\t\t\t\t  <option value=\"Himachal\">Himachal</option>\n");
      out.write("                                                </select>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b>City</b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <select>\n");
      out.write("\t\t\t\t\t\t  <option value=\"0\">Select</option>\n");
      out.write("                                                  <option selected=\"selected\" value=\"Chd\">Chd</option>\n");
      out.write("\t\t\t\t\t\t  <option value=\"Amritsar\">Amritsar</option>\n");
      out.write("\t\t\t\t\t\t  <option value=\"Ferozepur\">Ferozepur</option>\n");
      out.write("\t\t\t\t\t\t  <option value=\"Bathinda\">Bathinda</option>\n");
      out.write("                                                </select>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("<tr>\n");
      out.write("                                            <td width=\"30%\">\n");
      out.write("                                                <b>Pin Code</b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <input type=\"text\" name=\"txtPin\" value=\"74676\" class=\"txtStyle\"/>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                </fieldset>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td align=\"right\">\n");
      out.write("                    <input type=\"submit\" class=\"button\" name=\"sbtnUpdate\" value=\"Update\"/>\n");
      out.write("  <input type=\"submit\" class=\"button\" name=\"sbtnCancel\" value=\"Cancel\"/>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "mp_footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
