<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<center>
    <div class="menu">
        <c:choose>
            <c:when test="${!utilisateurConnecte}">
                <a href="<spring:url value="/identification" />">Identification</a>
                <a href="<spring:url value="/inscription" />">Inscription</a>
            </c:when>
            <c:when test="${typeUtilConnecte=='ADMIN'}">
                <ul>
                    <li>
                        <a href="<spring:url value="/hotel/lister"></spring:url>">Hotels</a>

                        </li>
                        <li>
                            <a href="<spring:url value="/chambre/lister"></spring:url>">Chambres</a>
                        </li>
                        <li>
                            <a href="<spring:url value="/client/lister" />">Clients</a>
                    </li>
                    <li>
                        <a href="<spring:url value="/reservations/lister" />">Reservations</a>
                    </li>
                    <li><a href="<spring:url value="/deconnexion" />">Déconnexion</a></li>
                </ul>
            </c:when>
            <c:otherwise>
                <ul>
                    <li><a href="<spring:url value="/reservationclient/lister" />">Mes réservations</a></li>
                </ul>
                <ul>
                    <li><a href="<spring:url value="/deconnexion" />">Déconnexion</a></li>
                </ul>
            </c:otherwise>
        </c:choose>

    </div>
</center>