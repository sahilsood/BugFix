package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>BugFix</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "stylesheet.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100%; height: 100%\">\n");
      out.write("            <tr>\n");
      out.write("                <td style=\"background-color: #d5d3d3\" width=\"100%\" height=\"100%\">\n");
      out.write("                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"margin: 0 auto;\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td width=\"100%\">\n");
      out.write("                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100%;height: 100%\">\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td style=\"background: #c24b8b;background: -moz-radial-gradient(top,#aa1d69 0%,#e084b6); background: -webkit-gradient(linear, left top, left bottom, from(#aa1d69),to(#e084b6));\">\n");
      out.write("                                            <div id=\"header\">\n");
      out.write("                                                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td style=\"border-top:solid 1px black;border-bottom:solid 1px black;height: 30%\">\n");
      out.write("\n");
      out.write("                                            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "topmenu.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>\n");
      out.write("                                            <div id=\"main\">\n");
      out.write("                                                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "homecontent.jsp", out, false);
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                </table>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td align=\"center\" width=\"100%\" height=\"30%\">\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
