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
        
        <h1>LISTADO DE PERMISOS</h1>
        <p><a href="PermisoControlador?action=add">Nuevo</a></p>
        
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Usuario</th>
                <th>Rol</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${list_obj}">        
            <tr>
                <td>${item.id}</td>
                <td>${item.usuario}</td>
                <td>${item.rol}</td>
                <th><a href="PermisoControlador?action=edit&id=${item.id}">Editar</a></th>
                <td><a href="PermisoControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>

