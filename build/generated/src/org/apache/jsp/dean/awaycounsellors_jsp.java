package org.apache.jsp.dean;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class awaycounsellors_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Unavailable Counsellors</title>\n");
      out.write("        <title>Approve Counsellor Schedules</title>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <script type=\"text/javascript\" src=\"../jquery/jquery-3.3.1.js\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/datepicker.css\">\n");
      out.write("    <script type=\"text/javascript\" src=\"js/bootstrap-datepicker.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../bootstrap1/bootstrapcss/bootstrap.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../bootstrap1/bootstrapcss/bootstrap.min.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../bootstrap1/bootstrapcss/bootstrap-grid.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../bootstrap1/bootstrapcss/bootstrap-grid.min.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../bootstrap1/bootstrapcss/bootstrap-reboot.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../bootstrap1/bootstrapcss/bootstrap-reboot.min.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../bootstrap1/bootstrapcss/font-awesome.min.css\">\n");
      out.write("             <!-- MDB core JavaScript -->\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../bootstrap1/bootstrapcss/mdb.min.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    <link  rel=\"stylesheet\" href=\"../css/stylelogin.css\" type=\"text/css\" media=\"all\"> \n");
      out.write("\n");
      out.write("            <!-- Material Design Bootstrap -->\n");
      out.write("    <!--<link href=\"../bootstrap1/bootstrapcss/mdb.min.css\" rel=\"stylesheet\">-->\n");
      out.write("<style>\n");
      out.write("body {\n");
      out.write("  font-family: \"Lato\", sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".sidenav {\n");
      out.write("  height: 100%;\n");
      out.write("  width: 250px;\n");
      out.write("  position: fixed;\n");
      out.write("  z-index: 1;\n");
      out.write("  top: 0;\n");
      out.write("  left: 0;\n");
      out.write("  background-color: #004085;\n");
      out.write("  overflow-x: hidden;\n");
      out.write("  padding-top: 20px;\n");
      out.write("}\n");
      out.write(".sidenav1 {\n");
      out.write("    height: 60%;\n");
      out.write("  width: 220px;\n");
      out.write("  position: fixed;\n");
      out.write("  z-index: 1;\n");
      out.write("  top: 70px;\n");
      out.write("  left: 10px;\n");
      out.write("  background-color: #ffffff;\n");
      out.write("  overflow-x: hidden;\n");
      out.write("  padding-top: 15px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".sidenav1 a {\n");
      out.write("  padding: 6px 15px 6px 16px;\n");
      out.write("  text-decoration:none;\n");
      out.write("  font-size: 15px;\n");
      out.write("  color: #000000;\n");
      out.write("  display: block;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".sidenav1 a:hover {\n");
      out.write("    color: #ffffff;\n");
      out.write("    background-color: #59cbea ;\n");
      out.write("}\n");
      out.write(".change a:hover{\n");
      out.write("    color: blue;\n");
      out.write("    background-color: #ffffff;\n");
      out.write("}\n");
      out.write(".change a:active{\n");
      out.write("    color: blue;\n");
      out.write("    text-decoration: underline;\n");
      out.write("}\n");
      out.write("/*.main {\n");
      out.write("  margin-left: 160px;  Same as the width of the sidenav \n");
      out.write("  font-size: 28px;  Increased text to enable scrolling \n");
      out.write("  padding: 0px 10px;\n");
      out.write("}*/\n");
      out.write("\n");
      out.write("@media screen and (max-height: 450px) {\n");
      out.write("  .sidenav {padding-top: 15px;}\n");
      out.write("  .sidenav a {font-size: 18px;}\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("   <!-- Font Awesome -->\n");
      out.write("   <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.7.0/css/all.css\">\n");
      out.write("   <link rel=\"stylesheet\" type=\"text/css\" href=\"../cdn/all.css\">\n");
      out.write("   <link rel=\"stylesheet\" type=\"text/css\" href=\"../cdn/all1.css\"\n");
      out.write("<link rel=\"stylesheet\"   type=\"text/css\" href=\"../cdn/bootstrap.min.css\">\n");
      out.write("<link rel=\"stylesheet\"   type=\"text/javascript\" href=\"../cdn/buttons.bootstrap.min.js\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/javascript\" href=\"../cdn/buttons.colVis.min.js\">\n");
      out.write("<link rel=\"stylesheet\"  type=\"text/javascript\" href=\"../cdn/buttons.html5.min.js\">\n");
      out.write("<link rel=\"stylesheet\"  type=\"text/javascript\" href=\"../cdn/buttons.print.min.js\">\n");
      out.write("<link rel=\"stylesheet\"  type=\"text/javascript\" href=\"../cdn/dataTables.bootstrap.min.js\">\n");
      out.write("<link rel=\"stylesheet\"  type=\"text/javascript\" href=\"../cdn/dataTables.buttons.min.js\">\n");
      out.write("<link rel=\"stylesheet\"  type=\"text/javascript\" href=\"../cdn/jquery-3.3.1.js\">\n");
      out.write("<link rel=\"stylesheet\"  type=\"text/javascript\" href=\"../cdn/jquery.dataTables.min.js\">\n");
      out.write("<link rel=\"stylesheet\"  type=\"text/javascript\" href=\"../cdn/jszip.min.js\">\n");
      out.write("<link rel=\"stylesheet\"  type=\"text/javascript\"  href=\"../cdn/mdb.min.js\">\n");
      out.write("<link rel=\"stylesheet\"  type=\"text/javascript\" href=\"../cdn/pdfmake.min.js\">\n");
      out.write("<link rel=\"stylesheet\"  type=\"text/javascript\" href=\"../cdn/vfs_fonts.js\">\n");
      out.write("<link rel=\"stylesheet\"  type=\"text/javascript\" href=\"../cdn/font-awesome.min.js\">\n");
      out.write("<link rel=\"stylesheet\"  type=\"text/javascript\" href=\"../cdn/jquery-3.2.1.slim.min.js\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: whitesmoke\">\n");
      out.write("        <div class=\"sidenav\">\n");
      out.write("   <div class=\"sidenav1\">\n");
      out.write("  <a href=\"index.jsp\"><i class=\"fa fa-home\" style='font-size:18px'></i> Home</a>\n");
      out.write("  <a href=\"viewsessions.jsp\"><i class=\"fas fa-eye\" style='font-size:18px'></i> View Appointments</a>\n");
      out.write("  <a href=\"../ViewAllCounsellors\"><i class=\"fas fa-eye\" style='font-size:18px'></i> View Counsellors</a>\n");
      out.write("  <a href=\"../CounsellorSignup\"><i class=\"fas fa-user-plus\" style='font-size:18px'></i> Add Counsellor</a>\n");
      out.write("  <a href=\"approveschedules.jsp\"><i class='far fa-edit' style='font-size:18px'></i> Approve Schedules</a>\n");
      out.write("  <a href=\"../AboutUs/contact.jsp\"><i class=\"fas fa-address-book\" style='font-size:18px'></i> Contact Us</a>\n");
      out.write("  <a href=\"../AboutUs/about.jsp\"><i <i class=\"fas fa-users\" style='font-size:18px'></i> About Us</a>\n");
      out.write("  <div class=\"change\">\n");
      out.write("  <a href=\"changepassword.jsp\" style=\" font-style: italic\"><i class=\"fas fa-key\" style='font-size:18px'></i> Change Your Password ?</a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"topnav fixed-top\" style=\"background-color: #4062b7; margin-left: 250px\">\n");
      out.write("    <nav class=\"navbar navbar-expand-md \">\n");
      out.write("      <ul class=\"navbar-nav ml-auto\">\n");
      out.write("          <!--  \n");
      out.write("          \n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <a class=\"nav-link active\" href=\"deanhomepage.jsp\">Home</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <a class=\"nav-link\" href=\"viewsessions.jsp\"> View Appointments</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <a class=\"nav-link\" href=\"approveschedules.jsp\">Approve Counsellor Schedules</a>\n");
      out.write("            </li>>-->\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <p style=\"color: white; margin-right: 400px\"> Egerton University Appointment Booking Systems.</p> \n");
      out.write("            </li\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <a  class=\"nav-link\" href=\"../logout.jsp\"><i class=\"fa fa-power-off\" style=\"font-size:20px\"></i> logout</a>\n");
      out.write("            </li>  </ul>\n");
      out.write("      \n");
      out.write("    </nav>\n");
      out.write("    </div>\n");
      out.write("<h4 style=\"margin-left:500px; margin-top: 100px\">\n");
      out.write("    Unavailable Counsellors \n");
      out.write("</h4>\n");
      out.write("<br><br>\n");
      out.write("<div style=\"margin-left:500px\">\n");
      out.write("<div>\n");
      out.write("    <form action=\"#\" method=\"get\">\n");
      out.write("        <input type=\"text\" id= \"datepicker\" name=\"from\" placeholder=\"From\" autocomplete=\"off\" readonly=\"readonly\">\n");
      out.write("        \n");
      out.write("        <input type=\"text\" name=\"to\" placeholder=\"To\" id=\"to\" autocomplete=\"off\" readonly=\"readonly\">\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("$(document).ready(function(){\n");
      out.write("\n");
      out.write("\n");
      out.write("    $(\"#to\").datepicker({\n");
      out.write("        numberOfMonth:1,\n");
      out.write("        format: 'yyyy/mm/dd',\n");
      out.write("        todayHighlight:true,\n");
      out.write("        autoclose:true,\n");
      out.write("\n");
      out.write("    });\n");
      out.write("\n");
      out.write("})\n");
      out.write("    </script>\n");
      out.write("        <button type=\"submit\" name=\"get\"><span>Search <img src=\"../images/search.png\" title=\"\" alt=\"\" height=\"17\" width=\"17\" /></span></button>\n");
      out.write("    </form>\n");
      out.write("    </table>\n");
      out.write("</div>\n");
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
