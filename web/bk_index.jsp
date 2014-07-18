<%-- 
    Document   : index
    Created on : Jul 9, 2014, 4:44:14 PM
    Author     : AlfredoRegis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login de Usuario</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="LaCajaServlet" method="POST">
            <table border="1">
                <tr>
                    <td>Documento:</td>
                    <td><input type="text" name="txtNroDoc"></td>                                  
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="text" name="txtPsw"></td>
                </tr>
                <tr>
                    <td></td><td><input type="submit" name="btnSubmit" value="Ingresar"></td>
                </tr>
                <font color="red">
                    <c:if test="${not empty valor}">
                        <c:if test="${valor ne true}">
                            <p> Error en el Documento y/o Password!! </p>
                        </c:if>
                    </c:if>
                </font>                
            </table>
        </form>
    </body>
</html>
