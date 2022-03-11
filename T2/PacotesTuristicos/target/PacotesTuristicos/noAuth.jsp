<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <fmt:bundle basename="message">
        <head>
            <meta name="viewport" http-equiv="Content-Type" content="text/html; charset=UTF-8, width=device-width, initial-scale=1"/>
            <title><fmt:message key="auth.title"/></title>
            <link href="${pageContext.request.contextPath}/layout.css" rel="stylesheet" type="text/css"/>
        </head>
        <body>
            <h1></h1>
            <c:if test="${mensagens.existeErros}">
                <div id="erro">
                    <ul>
                        <c:forEach var="erro" items="${mensagens.erros}">
                            <li> ${erro} </li>
                            </c:forEach>
                    </ul>
                </div>
            </c:if>
        </body>
    </fmt:bundle>
</html>