<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page pageEncoding="UTF-8" contentType="text/html" />

<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/INC/cabecera.jsp">
            <jsp:param name="titulo" value="Actualización" />
            <jsp:param name="estilo" value="${applicationScope.estilo}" />
        </jsp:include>
    </head>
    <body>

        <div id="principal">
            <h2>Modificar registro</h2>
            <form method="post" action="${applicationScope.contexto}/Update">
                <div class="dato">
                    <label for="ident">Identificativo</label>
                    <input type="text" name="id" value="${sessionScope.profesor.id}" id="ident" readonly="readonly" />
                    <div class="limpiar"></div>
                </div>
                <div class="dato">
                    <label for="nombre">Nombre</label>
                    <input type="text" name="nombre" size="20" value="${sessionScope.profesor.nombre}" id="nombre"/>
                    <div class="limpiar"></div>
                </div>
                <div class="dato">
                    <label for="ap1">Primer apellido</label>
                    <input type="text" name="ape1" size="20" value="${sessionScope.profesor.ape1}" id="ap1"/>
                    <div class="limpiar"></div>
                </div>
                <div class="dato">
                    <label for="ap2">Segundo apellido</label>
                    <input type="text" name="ape2" size="20" value="${sessionScope.profesor.ape2}" id="ap2"/>
                    <div class="limpiar"></div>
                </div>
                <div class="flex">
                    <input type="submit" name="boton" class="envio" value="Enviar"/>
                    <input type="submit" name="boton" class="envio" value="Cancelar"/>
                </div>

            </form>
            
        </div>


    </body>
</html>