<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page pageEncoding="UTF-8" contentType="text/html" />
<c:url var="estilo" value="/CSS/estilo.css" scope="application"/>
<c:set var="contexto" value="${pageContext.request.contextPath}" scope="application"/>

<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/INC/cabecera.jsp">
            <jsp:param name="titulo" value="Inicio" />
            <jsp:param name="estilo" value="${applicationScope.estilo}" />
        </jsp:include>
    </head>
    <body>

        <div id="principal">
            <h1>Mapeo una entidad</h1>
            <h2>Elige una opci&oacute;n</h2>
            <div id="secundario">
                <form action="${applicationScope.contexto}/FrontController" method="post">
                    <p><input type="submit" name="boton" value="(C) A&ntilde;adir un nuevo profesor" class="enlace" /></p>
                    <p><input type="submit" name="boton" value="(R) Visualizar todos los profesores" class="enlace" /></p>
                    <p><input type="submit" name="boton" value="(U) Modificar el contenido de un profesor" class="enlace" /></p>
                    <p><input type="submit" name="boton" value="(D) Eliminar un profesor" class="enlace" /></p>

                </form>
            </div>
        </div>


    </body>
</html>