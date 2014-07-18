<%-- 
    Document   : listadoOpciones
    Created on : Jul 15, 2014, 10:51:10 AM
    Author     : AlfredoRegis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Opciones</title>
    </head>
    <body>
        <table border="1" align="center">
            <c:forEach items="${benef}" var="benef">
                <tr>
                    <c:set var="vCodPer" scope="session" value="${benef.CODPER}"/>
                    <td><b>Código:</b></td><td>${benef.CODPER}</td>
                    <td><b>Beneficiario:</b></td><td>${benef.APENOM}</td>
                </tr>
                <tr>
                    <td><b>Tipo Documento:</b></td><td>${benef.CODDOC}</td>
                    <td><b>Nro. Documento:</b></td><td>${benef.NRODOC}</td>
                </tr>
                <tr>
                    <td><b>Dirección:</b></td><td colspan="3">${benef.DOMICILIO}</td>                    
                </tr>
            </c:forEach>
        </table>
        <br>
        <table border="0" align="center">
            <tr><td colspan="4"><b>Opciones:</b></td></tr>
            <tr><td colspan="4"><a href="BoletaServlet?vCodPer=<c:out value="${vCodPer}"/>">Lista de Boletas</td></tr>
            <tr><td colspan="4"><a href="listadoBoletas.jsp">Realizar Consulta</td></tr>
        </table>
    </body>
</html>
