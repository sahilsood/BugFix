package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ManageCities_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <form>\n");
      out.write("            <table align=\"center\" width=\"50%\" cellpadding=\"5\">\n");
      out.write("                <tr>\n");
      out.write("                    <td align=\"center\">\n");
      out.write("                        <strong>\n");
      out.write("                            Manage Cities\n");
      out.write("                        </strong>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <label style=\"color: red\">\n");
      out.write("                            <small>   lblMsg</small>\n");
      out.write("                        </label>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td >\n");
      out.write("                        <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <b>Country</b>:India\n");
      out.write("                                </td>\n");
      out.write("                                 <td align=\"right\" width=\"100%\">\n");
      out.write("                                    <b>State</b>:Punjab\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table> \n");
      out.write("                    </td>\n");
      out.write("               \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <table width=\"100%\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write(" <input type=\"button\" class=\"button\" value=\"<\"/>\n");
      out.write("                                    <input type=\"button\" class=\"button\" value=\"Add City\"/>\n");
      out.write("                                </td>\n");
      out.write("                                <td align=\"right\">\n");
      out.write("                                    <input type=\"text\" name=\"txtSearch\" class=\"txtStyle\"/>\n");
      out.write("                                    <input type=\"submit\" class=\"button\" name=\"sbtnSearch\" value=\"Search\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <table width=\"100%\"  border=\"1\">\n");
      out.write("                            <tr>\n");
      out.write("                                <th>\n");
      out.write("                                    S.No.\n");
      out.write("                                </th>\n");
      out.write("                                <th>\n");
      out.write("                                    Country Name\n");
      out.write("                                </th>\n");
      out.write("                                <th>\n");
      out.write("                                    Status\n");
      out.write("                                </th>\n");
      out.write("                                <th>\n");
      out.write("                                    Links\n");
      out.write("                                </th>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr align=\"center\">\n");
      out.write("                                <td>\n");
      out.write("                                    1\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Mohali\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <a href=\"\">Active</a>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <a href=\"\">View & Edit</a>\n");
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
