<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <fmt:bundle basename="message">
        <head>
            <meta name="viewport" http-equiv="Content-Type" content="text/html; charset=UTF-8, width=device-width, initial-scale=1"/>
            <title><fmt:message key="login.title" /></title>
            <link href="${pageContext.request.contextPath}/layout.css" rel="stylesheet" type="text/css"/>
        </head>
        <body>
            <!-- <h1><fmt:message key="page.label" /></h1> -->
            <c:if test="${mensagens.existeErros}">
                <div id="erro">
                    <ul>
                        <c:forEach var="erro" items="${mensagens.erros}">
                            <li> ${erro} </li>
                            </c:forEach>
                    </ul>
                </div>
            </c:if>
            <form method="post" action="log.jsp">
                <table>
                    <tr>
                        <th><fmt:message key="login.user" />:</th>
                        <td><input type="text" name="login"
                                   value="${param.login}"/></td>
                    </tr>
                    <tr>
                        <th><fmt:message key="login.password" />:</th>
                        <td><input type="password" name="senha" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"> 
                            <input class="button" type="submit" name="bOK" value="<fmt:message key="login.login"/>">
                        </td>
                    </tr>
                </table>
            </form>
        </body>
    </fmt:bundle>
</html>