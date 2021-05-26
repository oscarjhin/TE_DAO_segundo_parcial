<%@page import="com.emergentes.modelo.*"%>
<%@page import="com.emergentes.dao.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menu.jsp" />
        <hr>
        
        <h1>LISTADO DE ROLES</h1>
        <p><a href="RolControlador?action=add">Nuevo</a></p>
        
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${list_obj}">        
            <tr>
                <td>${item.id}</td>
                <td>${item.descripcion}</td>
                <th><a href="RolControlador?action=edit&id=${item.id}">Editar</a></th>
                <td><a href="RolControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>

