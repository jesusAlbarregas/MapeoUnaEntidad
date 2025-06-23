<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page pageEncoding="UTF-8" contentType="text/html" />

<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/INC/cabecera.jsp">
            <jsp:param name="titulo" value="Borrado" />
            <jsp:param name="estilo" value="${applicationScope.estilo}" />
        </jsp:include>
    </head>
    <body>

        <div id="principal">
            <h2>Elige un profesor para eliminarlo</h2>

            <form action="${applicationScope.contexto}/Delete" method="post">
                <table>

                    <thead>
                        <tr>
                            <th style="width: 5%;">Elige</th>
                            <th>Apellidos, nombre</th>

                        </tr>
                    </thead>
                    <tbody>
                        
                        <c:forEach var="profesor" items="${requestScope.listado}" varStatus="i">
                            <tr>
                                <c:set var="check" value=""/>
                                <c:if test="${i.count == 1}">
                                    <c:set var="check" value="checked" />
                                </c:if>
                                <td><input type="radio" name="registro" value="${profesor.id}" ${pageScope.check}/></td>

                                <td style="padding-left: 10px;"><c:out value="${profesor.ape1} ${profesor.ape2}, ${profesor.nombre}"/></td>


                            </tr>
                        </c:forEach>
                    </tbody>
                    
                </table>
                    <div class="flex">
                        <input type="submit" name="boton" value="Eliminar" class="envio">
                        <input type="submit" name="boton" value="Cancelar" class="envio">
                    </div>
            </form>

        </div>


    </body>
</html>