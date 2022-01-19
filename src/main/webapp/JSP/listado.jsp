<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page pageEncoding="UTF-8" contentType="text/html" />

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado</title>
        <link rel="stylesheet" type="text/css" href="${estilo}" />
    </head>
    <body>

        <div id="principal">
            <h2>Listado de profesores</h2>

            <div id="interior">


            <ul>
                <c:forEach var="item" items="${listado}">


                    <li>${item.nombre} ${item.ape1} ${item.ape2}</li>

                </c:forEach>
            </ul>
            </div>
            <br />
            <p class="boton"><a href="${contexto}/" class="enlace">Men&uacute; inicial</a></p>
        </div>


    </body>
</html>