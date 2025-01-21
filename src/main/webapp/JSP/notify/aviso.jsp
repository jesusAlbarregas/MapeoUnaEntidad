<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page pageEncoding="UTF-8" contentType="text/html" />

<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/INC/cabecera.jsp">
            <jsp:param name="titulo" value="Aviso" />
            <jsp:param name="estilo" value="${applicationScope.estilo}" />
        </jsp:include>
    </head>
    <body>

        <div id="principal">
            <h2>Listado de profesores</h2>
            <div id="secundario">

                <p class="error">${requestScope.aviso}</p>
            
            </div>
            <div class="limpiar"></div>
            <div class="flex">
                <a href="${applicationScope.contexto}/FrontController" class="enlace">Men&uacute; inicial</a>
            </div>
        </div>


    </body>
</html>