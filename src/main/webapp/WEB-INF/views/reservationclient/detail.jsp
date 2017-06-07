
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Détails des Reservations</title>
    </head>
    <body>
        <c:import url="../_MENU.jsp"></c:import>
        <contenu>
            <h1>Détail de votre réservation</h1>
            <table border='1'>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>DATES IN</th>
                        <th>DATES OUT</th>
                        <th>NOM CHAMBRE</th>
                        <th>PRIX CHAMBRE</th>
                        <th>ACTION</th>
                        <th>ACTION</th>
                    </tr>


                </thead>

                <tbody>
                    <tr>
                        <td> ${detail.id}</td>
                    <td>     ${detail.checkIn}</td> 
                    <td> ${detail.checkOut}</td> 
                    <c:forEach items="${detail.chambres}" var="ch">
                        <td> ${ch.nom}</td>
                        <td> ${ch.prix}</td>
                    </c:forEach> 
                    <c:if test="${detail.etatReservation=='A_PAYER'}">
                        <td><a href='<spring:url value="/reservationclient/payer/${id}"/>'>PAYER</a></td>
                        <td><a href='<spring:url value="/reservationclient/annuler"/>'>ANNULER</a></td>
                    </c:if> 
                </tr>     

            </tbody>
        </table>
    </contenu>
    <c:import url="../_PIED.jsp"></c:import>
</body>
</html>
