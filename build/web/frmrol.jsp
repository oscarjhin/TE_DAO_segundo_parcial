<%@page import="com.emergentes.modelo.*"%>
<%@page import="com.emergentes.dao.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Rol</title>
    </head>
    <body>
        <jsp:include page="menu.jsp" />
        <hr>
        
        <h1>
            <c:if test="${objeto.id == 0}">Nuevo </c:if>
            <c:if test="${objeto.id > 0}">Editar </c:if>
            Rol    
        </h1>
        <form action="RolControlador" method="post">
            <input type="hidden" name="id" value="${objeto.id}">
            <table width="311">       
                <tr>
                    <td>Descripcion</td>
                    <td ><input name="descripcion" type="text" value="${objeto.descripcion}" required></td>                   
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="enviar"></td>
                </tr>

            </table>
        </form>
        <p><a href="RolControlador">Volver</a></p>
    </body>
</html>
