<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<center>
<div class="menu">
    <c:choose>
    <c:when test="${!utilsateurConnecte}">
        <a href="<spring:url value="/identification"/>"> Identification </a>
    </c:when> 
        <c:otherwise >
    
     
    <a href="<spring:url value='/hotel/lister'/>">gestion des hotels</a>
    <a href="<spring:url value="/chambre/lister"/>">gestion des chambres</a>
    <a href="<spring:url value="/client/lister"/>">gestion des clients</a>
    <a href="<spring:url value="/reservation/ajouter"/>">gestion des reservations</a>
    <a href="<spring:url value="/deconnexion"/>">Deconnexion</a>
    </c:otherwise>
    </c:choose>
    
</div>
</center>