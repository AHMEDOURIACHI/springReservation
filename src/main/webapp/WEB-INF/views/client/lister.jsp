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
        <contenu>
            <tr>
                <td>Nom</td>
                <td>Prenom</td>
                <td>reservation</td>
                
                 <td>Modifier</td>
                  <td>Suppression</td>
                
                
               
            </tr>
        <c:forEach items="${clients}" var="cl">
            <tr>
                <td>${cl.nom}</td>
                <td>${cl.prenom}</td>
                <td>reservation</td>
                 <td><a href="/client/modifier.jsp">modifier</a></td>
                <td><a href="/client/supprimer.jsp">Supprimer</a></td>
              </tr>
               
        </c:forEach>
               

        </contenu>
        </center>
        <c:import url="../_PIED.jsp"></c:import>
</body>
</html>
