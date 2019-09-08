package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import bugfix.beans.common.CitymasterBean;
import java.util.List;
import bugfix.services.admin.CitymasterServices;

public final class ManageCity_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_varStatus_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_varStatus_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_varStatus_var_items.release();
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_otherwise.release();
    _jspx_tagPool_c_when_test.release();
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
      out.write("        <table   cellpadding=\"5\" cellspacing=\"0\" align=\"center\" style=\"background: #66A1DD\">\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\" align=\"center\"     ><strong>Manage City</strong><br/></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td align=\"left\"><label id=\"lblMsg\">lblMsg</label></td>\n");
      out.write("                <td align=\"right\">\n");
      out.write("                    <input id=\"btnBackToStates\" name=\"btnBackToStates\" onclick=\"window.location = 'ManageState.jsp?countryId=");
      out.print( request.getParameter("countryId") );
      out.write("'\" class=\"button\" type=\"button\" value=\"Back to States\" />\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    <fieldset>\n");
      out.write("                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"5\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <input id=\"btnAddCity\" class=\"button\" name=\"btnAddCity\" type=\"button\" onclick=\"window.location='AddCity.jsp?stateId=");
      out.print( request.getParameter("stateId") );
      out.write("&stateName=");
      out.print( request.getParameter("stateName") );
      out.write("'\" value=\"Add City\" />\n");
      out.write("                                </td>\n");
      out.write("                            </tr>   \n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <table border=\"0\" cellpadding=\"5\" cellspacing=\"0\">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><strong>State</strong></td>\n");
      out.write("                                            <td>");
      out.print( request.getParameter("stateName") );
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <table border=\"1\" cellpadding=\"5\" cellspacing=\"0\" >\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th>City Id</th>\n");
      out.write("                                            <th>City</th>\n");
      out.write("                                            <th>Status</th>\n");
      out.write("                                            <th>&nbsp;</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                        ");

                                            CitymasterServices objServices = new CitymasterServices();
                                            List<CitymasterBean> lst = objServices.getCities(Integer.parseInt(request.getParameter("stateId")));
                                            pageContext.setAttribute("LIST_STATES", lst);
                                        
      out.write("\n");
      out.write("                                        ");
      //  c:forEach
      org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_varStatus_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
      _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
      _jspx_th_c_forEach_0.setParent(null);
      _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${LIST_STATES}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
      _jspx_th_c_forEach_0.setVar("obj");
      _jspx_th_c_forEach_0.setVarStatus("i");
      int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
      try {
        int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
        if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("   \n");
            out.write("                                            <tr>\n");
            out.write("                                                <td>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.index+1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
            out.write("</td>\n");
            out.write("                                                <td>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${obj.cityName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
            out.write("</td>\n");
            out.write("                                                <td>\n");
            out.write("                                                    ");
            //  c:choose
            org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
            _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
            _jspx_th_c_choose_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
            int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
            if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
              do {
                out.write("\n");
                out.write("                                                        ");
                //  c:when
                org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
                _jspx_th_c_when_0.setPageContext(_jspx_page_context);
                _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
                _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${obj.status == 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
                int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
                if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                  do {
                    out.write("\n");
                    out.write("                                                            Active<a href=\"CityController.jsp?changeCityStatus=0&cityId=");
                    out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${obj.cityId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
                    out.write("&stateId=");
                    out.print( request.getParameter("stateId") );
                    out.write("&stateName=");
                    out.print( request.getParameter("stateName") );
                    out.write("\">Change</a>\n");
                    out.write("                                                        ");
                    int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
                    if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                      break;
                  } while (true);
                }
                if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                  _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
                  return;
                }
                _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
                out.write("\n");
                out.write("                                                        ");
                //  c:otherwise
                org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
                _jspx_th_c_otherwise_0.setPageContext(_jspx_page_context);
                _jspx_th_c_otherwise_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
                int _jspx_eval_c_otherwise_0 = _jspx_th_c_otherwise_0.doStartTag();
                if (_jspx_eval_c_otherwise_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                  do {
                    out.write("\n");
                    out.write("                                                            Inactive<a href=\"CityController.jsp?changeCityStatus=1&cityId=");
                    out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${obj.cityId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
                    out.write("&stateId=");
                    out.print( request.getParameter("stateId") );
                    out.write("&stateName=");
                    out.print( request.getParameter("stateName") );
                    out.write("\">Change</a>\n");
                    out.write("                                                        ");
                    int evalDoAfterBody = _jspx_th_c_otherwise_0.doAfterBody();
                    if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                      break;
                  } while (true);
                }
                if (_jspx_th_c_otherwise_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                  _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
                  return;
                }
                _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
                out.write("\n");
                out.write("                                                    ");
                int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
                if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                  break;
              } while (true);
            }
            if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
              _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
              return;
            }
            _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
            out.write("\n");
            out.write("                                                </td>\n");
            out.write("                                                <td><a href=\"#\">View & Edit</a></td>\n");
            out.write("                                            </tr>\n");
            out.write("                                        ");
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
      out.write("                                    </table>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </fieldset>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
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
