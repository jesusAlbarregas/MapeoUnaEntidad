<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page pageEncoding="UTF-8" contentType="text/html" />

<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/INC/cabecera.jsp">
            <jsp:param name="titulo" value="Confirmar borrado" />
            <jsp:param name="estilo" value="${applicationScope.estilo}" />
        </jsp:include>
    </head>
    <body>

        <div id="principal">
            <h2>Profesor que se eliminará</h2>

            <div class="dato">
                <label for="nombre">Nombre</label>
                <span>${sessionScope.profesor.nombre}</span>
                <div class="limpiar"></div>
            </div>
            <div class="dato">
                <label for="nombre">Primer apellido</label>
                <span>${sessionScope.profesor.ape1}</span>
                <div class="limpiar"></div>
            </div> 
            <div class="dato">
                <label for="nombre">Segundo apellido</label>
                <span>${sessionScope.profesor.ape2}</span>
                <div class="limpiar"></div>
            </div>
             
            <form method="post" action="${contexto}/Delete">
                <div class="flex">
                    <input type="submit" value="Confirmar" class="envio" name="boton" />
                    <input type="submit" value="Cancelar" class="envio" name="boton" />
                </div>
            </form>

        </div>


    </body>
</html>