<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="chemin">
    
    <spring:url value="/reservationclient/payer"/>  
    
</c:set>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Paiement reservation</title>
    </head>
    <body>
        <c:import url="../_MENU.jsp"></c:import>
        <h1>Paiement reservation</h1>
        <contenu>
        <form:form modelAttribute="payer" action="${chemin}">
            <form:input path="checkIn"/>
            <form:input path="checkOut"/>
            <form:input path="chambres[0].nom"/>
            <form:input path="chambres[0].prix"/>
            <input type="submit" value="PAYER"/>

        </form:form>
    </contenu>
    <c:import url="../_PIED.jsp"></c:import>
</body>
</html>