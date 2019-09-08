package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class homecontent_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<table style=\"margin: 0 auto\">\n");
      out.write("    <caption>\n");
      out.write("        <h3>\n");
      out.write("            This is Sample Table - User Maintenance</h3>\n");
      out.write("    </caption>\n");
      out.write("    <tr>\n");
      out.write("        <td>\n");
      out.write("            <a href=\"#\" class=\"blue\">Add User</a>\n");
      out.write("        </td>\n");
      out.write("        <td align=\"right\">\n");
      out.write("            <input type=\"text\" name=\"txtSearch\" class=\"txtStyle\"/>&nbsp;<input type=\"submit\" class=\"button\" name=\"sbtnSubmit\"\n");
      out.write("                                                               value=\"Search\" class=\"blue\" />\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td valign=\"top\" colspan=\"2\">\n");
      out.write("            <table class=\"styled\">\n");
      out.write("                <tr class=\"header\">\n");
      out.write("                    <th>\n");
      out.write("                        User Id\n");
      out.write("                    </th>\n");
      out.write("                    <th>\n");
      out.write("                        User Name\n");
      out.write("                    </th>\n");
      out.write("                    <th>\n");
      out.write("                        Registration Date\n");
      out.write("                    </th>\n");
      out.write("                    <th>\n");
      out.write("                        User Plan Type\n");
      out.write("                    </th>\n");
      out.write("                    <th>\n");
      out.write("                        Links\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        001\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        mohit@yahoo.com\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        2012-03-20\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        General\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"\">View</a>/<a href=\"\">Activate</a>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr class=\"alt\">\n");
      out.write("                    <td>\n");
      out.write("                        002\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        deepak@gmail.com\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        2012-03-20\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        Premium\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"\">View</a>/<a href=\"\">Activate</a>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        003\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        rakesh@yahoo.com\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        2012-03-20\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        General\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"\">View</a>/<a href=\"\">Activate</a>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr class=\"alt\">\n");
      out.write("                    <td>\n");
      out.write("                        002\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        mukesh@gmail.com\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        2012-03-20\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        Premium\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"\">View</a>/<a href=\"\">Activate</a>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("<h1>\n");
      out.write("    Test</h1>\n");
      out.write("<h2>\n");
      out.write("    Test\n");
      out.write("</h2>\n");
      out.write("<br />\n");
      out.write("<a href=\"#\">content</a><br />\n");
      out.write("Mid Mid Mid Mid Mid Mid Mid MidMid Mid Mid Mid Mid Mid Mid MidMid Mid Mid Mid Mid Mid Mid Mid\n");
      out.write("<br />\n");
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
