package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import bugfix.beans.common.SecuritymasterBean;
import bugfix.services.common.UsermasterServices;
import bugfix.beans.common.CountrymasterBean;
import java.util.List;
import bugfix.services.common.CountryStateCityServices;

public final class SignUp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <title>SignUp</title>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("                var xmlObject;\n");
      out.write("                function getObject() {\n");
      out.write("                    try {\n");
      out.write("                        xmlObject = new XMLHttpRequest();\n");
      out.write("                    }\n");
      out.write("                    catch (err1) {\n");
      out.write("                        try {\n");
      out.write("                            xmlObject = new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("                        }\n");
      out.write("                        catch (err2) {\n");
      out.write("                            xmlObject = new ActiveXObject(\"Msxml2.XMLHTTP\");\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                }\n");
      out.write("                function getStates() {\n");
      out.write("                    getObject();\n");
      out.write("                    var url = \"State.jsp?countryId=\" + document.getElementById(\"ddlCountry\").value;\n");
      out.write("                    xmlObject.onreadystatechange = function () {\n");
      out.write("                        if (xmlObject.readyState == 4) {\n");
      out.write("                            document.getElementById(\"divS\").innerHTML = xmlObject.responseText;\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    xmlObject.open(\"GET\", url, true);\n");
      out.write("                    xmlObject.send(null);\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                function getCities() {\n");
      out.write("                    getObject();\n");
      out.write("                    var url = \"City.jsp?stateId=\" + document.getElementById(\"ddlState\").value;\n");
      out.write("                    xmlObject.onreadystatechange = function () {\n");
      out.write("                        if (xmlObject.readyState == 4) {\n");
      out.write("                            document.getElementById(\"divC\").innerHTML = xmlObject.responseText;\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    xmlObject.open(\"GET\", url, true);\n");
      out.write("                    xmlObject.send(null);\n");
      out.write("                }\n");
      out.write("            </script>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "stylesheet.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "mp_header.jsp", out, false);
      out.write("\n");
      out.write("        ");

            CountryStateCityServices objServices = new CountryStateCityServices();
            List<CountrymasterBean> lstCountries = objServices.getAllCountries();
            pageContext.setAttribute("LIST_COUNTRIES", lstCountries);
        
      out.write("\n");
      out.write("        ");

            UsermasterServices obj = new UsermasterServices();
            List<SecuritymasterBean> lstSecQues = null;
            lstSecQues = obj.getAllSecQues();
            pageContext.setAttribute("LIST_SECQUES", lstSecQues);
        
      out.write("\n");
      out.write("        <form action=\"Controller.jsp\" method=\"post\">\n");
      out.write("            <table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td align=\"center\" ><strong>Sign Up</strong></td>\n");
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
      out.write("                                                <td><input id=\"txtUsername\"  name=\"txtUsername\" type=\"text\"/></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>Password</strong></td>\n");
      out.write("                                                <td><input id=\"txtPassword\"  name=\"txtPassword\" type=\"password\"/></td>\n");
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
      out.write("                                                    <input type=\"radio\" name=\"rbGender\" id=\"rbGender\" value=\"Male\">Male\n");
      out.write("                                                    <input type=\"radio\" name=\"rbGender\" id=\"rbGender\" value=\"Female\">Female\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>Date Of Birth</strong></td>\n");
      out.write("                                                <td><input id=\"txtDOB\"  name=\"txtDOB\" type=\"date\"/></td>\n");
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
      out.write("                                                    <select onchange=\"getStates()\" id=\"ddlCountry\" name=\"ddlCountry\">\n");
      out.write("                                                        <option>Select</option>\n");
      out.write("                                                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                                    </select>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>State</strong></td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div id=\"divS\"> \n");
      out.write("                                                        <select onchange=\"getCities()\" id=\"ddlState\" name=\"ddlState\">\n");
      out.write("                                                            <option>Select</option>\n");
      out.write("                                                        </select>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("\n");
      out.write("                                                <td><strong>City</strong></td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div id=\"divC\">\n");
      out.write("                                                        <select id=\"ddlCity\" name=\"ddlCity\">\n");
      out.write("                                                            <option>Select</option>\n");
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
      out.write("                                                    <input type=\"text\" class=\"txtStyle\" name=\"txtSecAnswer\" id=\"txtSecAnswer\"/>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </table>\n");
      out.write("                                    </fieldset>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td colspan=\"2\" align=\"right\">\n");
      out.write("                                    <input type =\"submit\" name=\"sbtnSave\" value=\"Save\" />\n");
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
      out.write("    \n");
      out.write("\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${LIST_COUNTRIES}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("obj");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                            <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${obj.countryId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${obj.countryName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
