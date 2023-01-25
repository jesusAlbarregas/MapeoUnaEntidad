<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page pageEncoding="UTF-8" contentType="text/html" />

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
        <link rel="stylesheet" type="text/css" href="${estilo}" />
    </head>
    <body>

        <div id="principal">
            <h2>Modificar registro</h2>
            <form method="post" action="${contexto}/Update">
                <div class="dato">
                    <label for="ident">Identificativo</label>
                    <input type="text" name="id" value="${profesor.id}" id="ident" readonly="readonly" />
                    <div class="limpiar"></div>
                </div>
                <div class="dato">
                    <label for="nombre">Nombre</label>
                    <input type="text" name="nombre" size="20" value="${profesor.nombre}" id="nombre"/>
                    <div class="limpiar"></div>
                </div>
                <div class="dato">
                    <label for="ap1">Primer apellido</label>
                    <input type="text" name="ape1" size="20" value="${profesor.ape1}" id="ap1"/>
                    <div class="limpiar"></div>
                </div>
                <div class="dato">
                    <label for="ap2">Segundo apellido</label>
                    <input type="text" name="ape2" size="20" value="${profesor.ape2}" id="ap2"/>
                    <div class="limpiar"></div>
                </div>
                <div class="dato">
                    <input type="submit" class="envio" value="Enviar"/>
                    <input type="reset" name="Reset" class="envio"/>
                </div>

            </form>
            
        </div>


    </body>
</html>