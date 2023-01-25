<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page pageEncoding="UTF-8" contentType="text/html" />
<c:url var="estilo" value="/CSS/estilo.css" scope="application"/>
<c:set var="contexto" value="${pageContext.request.contextPath}" scope="application"/>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado</title>
        <link rel="stylesheet" type="text/css" href="${estilo}" />
    </head>
    <body>

        <div id="principal">
            <h1>Mapeo una entidad</h1>
            <h2>Elige una opci&oacute;n</h2>
            <div id="secundario">
                <form action="FrontController" method="post">
                    <p><input type="submit" name="boton" value="(C) A&ntilde;adir un nuevo registro" class="enlace" /></p>
                    <p><input type="submit" name="boton" value="(R) Visualizar todos los registros" class="enlace" /></p>
                    <p><input type="submit" name="boton" value="(U) Modificar el contenido de un registro" class="enlace" /></p>
                    <p><input type="submit" name="boton" value="(D) Eliminar uno registro" class="enlace" /></p>

                </form>
            </div>
        </div>


    </body>
</html>