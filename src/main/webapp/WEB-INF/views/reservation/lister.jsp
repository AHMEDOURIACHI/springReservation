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
        <a href='<spring:url value="/reservation/ajouter"/>'>Ajouter Reservation</a>
    <contenu>
        <table border="1">
            <thead>

                <tr>
                    <th>ID</th>
                    <th>DATE RESERVATION</th>
                    <th>NOM CLIENT</th>
                    <th>CHAMBRE</th>
                    <th>ACTION</th>
                </tr> 
            </thead>
            <tbody>
                <c:forEach items="${reservation}" var="r">
                    <tr>
                        <td> ${r.id}</td> 
                        <td> ${r.dateReseravation}</td> 
                        <td> ${r.client.nom}</td> 
                        <td> 
                            <c:forEach items="${r.chambres}" var="c">
                                ${c.nom},
                            </c:forEach>
                        </td> 
                        <td><a href='<spring:url value="/reservation/supprimer/${r.id}"/>'>Supprimer</a></td>
                    </tr>   

                </c:forEach>
            </tbody>
        </table>
    </contenu>
    <c:import url="../_PIED.jsp"></c:import>
</body>
</html>