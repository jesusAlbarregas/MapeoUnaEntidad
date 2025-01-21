<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page pageEncoding="UTF-8" contentType="text/html" />

<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/INC/cabecera.jsp">
            <jsp:param name="titulo" value="Selección" />
            <jsp:param name="estilo" value="${applicationScope.estilo}" />
        </jsp:include>
    </head>
    <body>

        <div id="principal">
            <h2>Elige un profesor para modificarlo</h2>

            <form method="post" action="${applicationScope.contexto}/Update">
                <table>
                    <thead>
                        <tr>
                            <th style="width: 5%;">Elige</th>
                            <th>Apellidos y nombre</th>
                        </tr>
                    </thead>
                    <c:set var="primera" value="si"/>
                    <tbody>
                        <c:forEach var="item" items="${requestScope.listado}">
                            <tr>
                                <c:set var="check" value=""/>
                                <c:if test="${primera eq 'si'}">
                                    <c:set var="check" value="checked" />
                                    <c:set var="primera" value="no" />
                                </c:if>
                                <td><input type="radio" name="registro" value="${item.id}" ${pageScope.check} /></td>
                                <td style="padding-left: 10px;">${item.ape1} ${item.ape2}, ${item.nombre}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <div class="flex">
                    <input type="submit" name="boton" value="Actualizar" class="envio">
                    <input type="submit" name="boton" value="Cancelar" class="envio">
                </div>
            </form>

        </div>


    </body>
</html>