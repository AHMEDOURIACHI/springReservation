<%-- 
    Document   : _TEMPLATE
    Created on : 29 mai 2017, 14:45:29
    Author     : formation
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:import url="../_MENU.jsp"></c:import>
        <form:form modelAttribute="dto"/>
        <form:checkboxes items="${chambresID}"  itemValue="id" path="dto.id"></form:checkboxes>
        
        //form:select items="${hotels}" itemLabel="nom" itemValue="id" path="hotel.id"/>
        
        
        <c:import url="../_PIED.jsp"></c:import>
</body>
</html>
