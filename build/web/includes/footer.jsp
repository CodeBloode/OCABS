<%@ page import="java.util.*" %>
<footer class="fixed-bottom text-center footer-copyright py-3 navbar-dark white-text" style="background-color: #808080">
    <% GregorianCalendar currentDate = new GregorianCalendar();
    int year = currentDate.get(Calendar.YEAR);
    %>
        &copy;Copyright <%= year %> <i>CodeBloode Sons Systems. </i>&checkmark;
</footer>
