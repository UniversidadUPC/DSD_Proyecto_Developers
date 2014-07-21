<%-- 
    Document   : listadoBoletas
    Created on : Jul 14, 2014, 7:44:55 PM
    Author     : AlfredoRegis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Boletas</title>
    </head>
    <body>        
        <br>
        <table border="1" align="center">
            <tr><td>Año Período</td><td>Mes Período</td><td>Fecha</td><td>Plana</td><td>Grado de Baja</td><td>Total Descuento</td><td>Total Remuneración</td></tr>
            <tr>
                <c:forEach items="${boleta}" var="boleta">
                    <td align="center">${boleta.PERANO}</td>
                    <td align="center">${boleta.PERMES}</td>
                    <td>${boleta.FECGEN}</td>
                    <td>${boleta.PLANA}</td>
                    <td>${boleta.DESGRADBAJ}</td>
                    <td align="right">${boleta.TOTREM}</td>
                    <td align="right">${boleta.TOTDES}</td>
                </c:forEach>
            </tr>                        
        </table> 
        <br><br>
        <table border="1" align="center">
            <tr><td colspan="4"><b>Detalle:</b></td></tr>
            <br>
            <tr><td>Tipo de Movimiento</td><td>Cod.Concepto</td><td>Concepto</td><td>Total Remuneración</td></tr>            
                <c:forEach var="cab" items="${boleta}">                                         
                    <c:forEach var="det" items="${cab.detalle}">
                        <tr>
                        <td align="center">${det.TIPOMOV}</td>
                        <td>${det.CONCEPTO}</td>
                        <td>${det.DESCRI}</td>
                        <td align="right">${det.IMPORTE}</td>  
                        </tr>
                    </c:forEach>                                        
                </c:forEach>
                                    
        </table>
    </body>
</html>
