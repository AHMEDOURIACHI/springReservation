
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


                    </tr>


                </thead>

                <tbody>
                    <tr>
                    <td> ${detail.id}</td>
                    <td> ${detail.checkIn}</td> 
                    <td> ${detail.checkOut}</td>
                    <c:forEach items="${detail.chambres}" var="ch">
                        <td> ${ch.nom}</td>
                        <td> ${ch.prix}</td>
                    </tr>     
                </c:forEach>(
            </tbody>
        </table>
</contenu>
<c:import url="../_PIED.jsp"></c:import>
</body>
</html>
