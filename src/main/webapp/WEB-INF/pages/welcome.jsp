<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" import="java.util.*"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="gtag"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<h1 style="color:red;text-align: center;"><gtag:message code="home.title"></gtag:message></h1>
<br>
<h3 style="text-align: center;"><a href="register"><gtag:message code="home.link1"></gtag:message></a></h3>
<p style="text-align: center;">
<a href="?lang=fr_FR">French</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="?lang=de_DE">Germani</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="?lang=te_IN">Telgu</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="?lang=od_IN">Odia</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="?lang=hi_IN">Hindi</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="?lang=en_US">English</a>
</p>
<h3>Current Active Locale Name : ${pageContext.response.locale}</h3>
<fmt:setLocale value="${pageContext.response.locale}"/>

<jsp:useBean id="dt" class="java.util.Date"/>
<fmt:formatDate var="fdt" value="${dt}" type="date" dateStyle="FULL"/>
<b>Formatted Date FULL :: ${fdt}</b><br>
<fmt:formatDate var="fdt" value="${dt}" type="date" dateStyle="MEDIUM"/>
<b>Formatted Date MEDIUM :: ${fdt}</b><br>
<fmt:formatDate var="fdt" value="${dt}" type="date" dateStyle="SHORT"/>
<b>Formatted Date SHORT :: ${fdt}</b><br>

<br>
<fmt:formatDate var="ftime" value="${dt}" type="time" timeStyle="FULL"/>
<b>Formatted Time FULL :: ${ftime}</b><br>
<fmt:formatDate var="ftime" value="${dt}" type="time" timeStyle="SHORT"/>
<b>Formatted Time SHORT :: ${ftime}</b><br>
<fmt:formatDate var="ftime" value="${dt}" type="time" timeStyle="MEDIUM"/>
<b>Formatted Time MEDIUM :: ${ftime}</b><br><br>

<fmt:formatNumber var="fnum" value="1000000" type="number"/>
<b>Formatted Number : ${fnum}</b><br>
<fmt:formatNumber var="fcurr" value="1000000" type="currency"/>
<b>Formatted Currency : ${fcurr}</b><br>
<fmt:formatNumber var="fperc" value="0.3" type="percent"/>
<b>Formatted Percentage : ${fperc}</b>
</body>
</html>