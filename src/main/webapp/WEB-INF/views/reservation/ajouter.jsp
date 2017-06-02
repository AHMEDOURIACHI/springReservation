<%-- 
    Document   : _TEMPLATE
    Created on : 29 mai 2017, 14:45:29
    Author     : formation
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="chemin">

    <spring:url value="/reservation/ajouter" />

</c:set>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:import url="../_MENU.jsp"></c:import>
        <form:form modelAttribute="dto" action="${chemin}">
            <label>date de reservation</label>
            <form:input path="dateReseravation"/>
            
            <label>Nom du client</label>
            <form:select items="${clients}" itemLabel="nom" itemValue="id" path="client.id"/>
            
            <form:checkboxes items="${liste}"   path="chambresID" itemLabel="nom" itemValue="id"
                             />
            <input type="Submit" value="ajouter"/> 
            



            <c:import url="../_PIED.jsp"></c:import>
        </form:form>
    </body>
</html>
