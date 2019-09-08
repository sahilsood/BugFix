package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AddCountry_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <form method=\"post\" action=\"CountryController.jsp\">\n");
      out.write("            <table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td align=\"center\">\n");
      out.write("                        <strong>Add New Country</strong><br />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td align=\"left\">\n");
      out.write("                        <label id=\"lblMsg\">\n");
      out.write("                            lblMsg</label>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <fieldset>\n");
      out.write("                            <table border=\"0\" cellpadding=\"5\" cellspacing=\"0\">\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        <strong>Country Name </strong>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input value=\"\" id=\"txtCountryName\" class=\"txtStyle\" name=\"txtCountryName\" type=\"text\" />\n");
      out.write("                                    </td> \n");
      out.write("                                </tr>\n");
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        <strong>Status</strong>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <input id=\"rbStatus1\" type=\"radio\" name=\"rbStatus\" value=\"1\" checked=\"checked\" />\n");
      out.write("                                                    <label for=\"rbStatus1\">\n");
      out.write("                                                        Active</label>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <input id=\"rbStatus2\" type=\"radio\" name=\"rbStatus\" value=\"0\"/>\n");
      out.write("                                                    <label for=\"rbStatus2\">\n");
      out.write("                                                        Inactive</label>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </table>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td colspan=\"3\" align=\"right\">\n");
      out.write("                                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <input id=\"sbtnAddCountry\" class=\"button\" name=\"sbtnAddCountry\" type=\"submit\" value=\"Save\" />\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    &nbsp;\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <input id=\"rbtnReset\" class=\"button\"  name=\"rbtnReset\" type=\"reset\" value=\"Reset\" />\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </table>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                            </table>\n");
      out.write("                        </fieldset>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "mp_footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
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
