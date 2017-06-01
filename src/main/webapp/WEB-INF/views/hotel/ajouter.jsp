<%-- 
    Document   : _TEMPLATE
    Created on : 29 mai 2017, 14:45:29
    Author     : formation
--%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="cheminModif">
    <spring:url value="/hotel/modifier"/>
</c:set>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <center>
    <body>
        <c:import url="../_MENU.jsp"></c:import>
        <contenu>
            <h1>Ajout Hotel</h1>
        <form:form modelAttribute="hotel">
            <label>Nom hotel:</label>
            <form:input path="nom"/>
            <label>Rue:</label>
            <form:input path="adresse.rue"/>
            <label>Localite:</label>
            <form:input path="adresse.localite"/>
            <label>Pays:</label>
            <form:input path="adresse.pays"/>
            <label>Numero telephone:</label>
            <form:input path="adresse.num"/>
            <label>Code postal:</label>
            <form:input path="adresse.zip"/>
            
            <input type="Submit"/>
        </form:form>
        </contenu>
        <c:import url="../_PIED.jsp"></c:import>
</body>
</center>
</html>