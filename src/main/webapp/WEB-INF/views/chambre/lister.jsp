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
        <center>
        <a href="<spring:url value="/chambre/ajouter"/>">ajouter chambre</a>
        <contenu>
            
            <table border="2">
                
                <tr>
                    <td>Nom chambre</td>
                    <td>Prix chambre</td>
                    <td>Nom Hotel</td>
                </tr>
                
            
        <c:forEach items="${listeChambres}" var="ch">
                 <tr>
                    <td>${ch.nom}</td>
                    <td>${ch.prix}</td>
                    <td>${ch.hotel.nom}</td>
                    
                </tr>
               
         </c:forEach>
       </table>
                </center>
        </contenu>
        <c:import url="../_PIED.jsp"></c:import>
</body>
</html>
