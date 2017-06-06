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
        <contenu>
            <h1>Liste des Reservations A_Payer</h1>
            <table border='1'>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>CLIENT</th>
                        <th>ETAT</th>
                        <th>DETAILS</th>

                    </tr> 

                </thead>
                <tbody>
                <c:forEach items="${reservationAPayer}" var="l">
                    <tr>
                        <td>${l.id}</td>
                        <td>${l.client.id}</td>
                        <td>${l.etatReservation}</td>

                        <td> <a href='<spring:url value="/reservationclient/detail/${l.id}"/>'>Détail</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <h1>Liste des Reservations Payer</h1>
        <table border='1'>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>CLIENT</th>
                    <th>ETAT</th>
                    <th>DETAILS</th>


                </tr> 

            </thead>
            <tbody>
                <c:forEach items="${reservationPayer}" var="r">
                    <tr>
                        <td>${r.id}</td>
                        <td>${r.client.id}</td>
                        <td>${r.etatReservation}</td>
                        <td> <a href='<spring:url value="/reservationclient/detail/${r.id}"/>'>Détail</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <h1>Liste des Reservations Annulé</h1>
        <table border='1'>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>CLIENT</th>
                    <th>ETAT</th>
                    <th>DETAILS</th>


                </tr> 

            </thead>
            <tbody>
                <c:forEach items="${reservationAnnule}" var="e">
                    <tr>
                        <td>${e.id}</td>
                        <td>${e.client.id}</td>
                        <td>${e.etatReservation}</td>
                        <td> <a href='<spring:url value="/resevationclient/detail/${e.id}"/>'>Détail</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </contenu>
    <c:import url="../_PIED.jsp"></c:import>
</body>
</html>

