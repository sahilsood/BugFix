package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import bugfix.beans.common.QuestionmasterBean;
import java.util.List;
import bugfix.services.common.UsermasterServices;

public final class ViewQuestions_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_varStatus_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_varStatus_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_varStatus_var_items.release();
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>View Questions</title>\n");
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
      out.write("        ");
UsermasterServices objServices = new UsermasterServices();
            List<QuestionmasterBean> lstQues = null;
            lstQues = objServices.getAllQuestions();
            pageContext.setAttribute("LIST_QUES", lstQues);
        
      out.write("\n");
      out.write("        <form>\n");
      out.write("            <table align=\"center\" cellpadding=\"5\">\n");
      out.write("                <tr>\n");
      out.write("                    <td align=\"center\">\n");
      out.write("                        <strong>View Questions</strong><br/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <table cellpadding=\"5\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <b> Question</b>\n");
      out.write("                                    <input type=\"text\" name=\"txtQuestion\" class=\"txtStyle\"/>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <b> Tags</b>\n");
      out.write("                                    <input type=\"text\" name=\"txtTags\" class=\"txtStyle\"/>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"submit\" class=\"button\" name=\"sbtnSearch\" value=\"Search\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                ");
      //  c:forEach
      org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_varStatus_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
      _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
      _jspx_th_c_forEach_0.setParent(null);
      _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${LIST_QUES}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
      _jspx_th_c_forEach_0.setVar("obj");
      _jspx_th_c_forEach_0.setVarStatus("i");
      int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
      try {
        int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
        if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\n");
            out.write("                    <tr>\n");
            out.write("                        <td>\n");
            out.write("                            <table cellpadding=\"5\" cellspacing=\"10\">\n");
            out.write("                                <tr>\n");
            out.write("                                    <td>\n");
            out.write("                                        <table>\n");
            out.write("                                            <tr>\n");
            out.write("                                                <td>\n");
            out.write("                                                    +2\n");
            out.write("                                                </td>\n");
            out.write("                                                <td>\n");
            out.write("                                                    <img src=\"../images/like.png\"/>    </td>\n");
            out.write("                                                <td rowspan=\"2\">\n");
            out.write("                                                    <a href=\"ViewQuestionDetails.jsp?questionId=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${obj.questionId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
            out.write('"');
            out.write('>');
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${obj.title}", java.lang.String.class, (PageContext)_jspx_page_context, null));
            out.write("</a>\n");
            out.write("                                                </td>\n");
            out.write("                                            </tr>\n");
            out.write("                                            <tr>\n");
            out.write("                                                <td align=\"center\">\n");
            out.write("                                                    3\n");
            out.write("                                                </td><td>\n");
            out.write("                                                    <img src=\"../images/answer.png\"/>\n");
            out.write("                                                </td>\n");
            out.write("                                            </tr>\n");
            out.write("                                            <tr>\n");
            out.write("                                                <td></td>\n");
            out.write("                                                <td></td>\n");
            out.write("                                                <td>\n");
            out.write("                                                    ");

                                                        QuestionmasterBean obj1 = (QuestionmasterBean) pageContext.getAttribute("obj");
                                                        String tags = obj1.getTags();
                                                        String arr[] = tags.split(",");
                                                    
            out.write("\n");
            out.write("                                                    ");

                                                        for (int i = 0; i < arr.length; i++) {
                                                    
            out.write("\n");
            out.write("                                                    <label style=\"background-color: lightgrey\">");
            out.print(arr[i]);
            out.write("</label>\n");
            out.write("                                                    &nbsp;&nbsp;\n");
            out.write("                                                    ");
}
            out.write("\n");
            out.write("                                                   \n");
            out.write("                                                </td>\n");
            out.write("                                            </tr>\n");
            out.write("                                            <tr>\n");
            out.write("                                                <td></td>\n");
            out.write("                                                <td></td>\n");
            out.write("                                                <td>3 hours ago&nbsp;|&nbsp;");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${obj.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
            out.write("&nbsp;|&nbsp;");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${obj.repo}", java.lang.String.class, (PageContext)_jspx_page_context, null));
            out.write("</td>\n");
            out.write("                                            </tr>\n");
            out.write("                                            <tr>\n");
            out.write("                                                <td colspan=\"3\">\n");
            out.write("                                                    <hr/>\n");
            out.write("                                                </td>\n");
            out.write("                                            </tr>\n");
            out.write("                                        </table>\n");
            out.write("                                    </td>\n");
            out.write("                                </tr>\n");
            out.write("                            </table>\n");
            out.write("                        </td>\n");
            out.write("                    </tr>\n");
            out.write("                ");
            int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_forEach_0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_forEach_0.doFinally();
        _jspx_tagPool_c_forEach_varStatus_var_items.reuse(_jspx_th_c_forEach_0);
      }
      out.write("\n");
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
