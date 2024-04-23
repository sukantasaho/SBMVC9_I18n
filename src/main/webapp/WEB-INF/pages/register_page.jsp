<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="gtag" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="stag"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align: center; color: red;"><gtag:message code="register.title"/></h1>
<stag:form  modelAttribute="cust">
  <table border="1" align="center" bgcolor="cyan">
     <tr>
        <td><gtag:message code="register.name"/></td>
        <td><stag:input path="cname"/></td>
     </tr>
     <tr>
        <td><gtag:message code="register.address"/></td>
        <td><stag:input path="caddr"/></td>
     </tr>
     <tr>
        <td><gtag:message code="register.billAmt"/></td>
        <td><stag:input path="billAmt"/></td>
     </tr>
     <tr>
        <td><gtag:message code="register.name"/></td>
        <td><stag:input path="cname"/></td>
     </tr>
     <tr>
        <td><input type="submit" value="<gtag:message code="register.btn.submit"/>"/></td>
     </tr>
  </table>
</stag:form>
<br><br>
<p style="text-align: center;">
<a href="?lang=fr_FR">French</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="?lang=de_DE">Germani</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="?lang=te_IN">Telgu</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="?lang=od_IN">Odia</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="?lang=hi_IN">Hindi</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="?lang=en_US">English</a>
</p>

</body>
</html>