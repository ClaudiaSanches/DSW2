<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
	<fmt:bundle basename="message">
		<head>
			<meta name="viewport" content="width=device-width, initial-scale=1"/>
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layout.css"/>
			<title><fmt:message key="client.title"/></title>
			<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
			<script crossorigin src="https://unpkg.com/react@16.13.1/umd/react.development.js"></script>
			<script crossorigin src="https://unpkg.com/react-dom@16.13.1/umd/react-dom.development.js"></script>
			<script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
			<script type="text/babel" src="./modulos/MostraLinksUser.jsx"></script>
			<script type="text/babel" src="./modulos/Links.jsx"></script>
			<script type="text/babel">
				$(document).ready(function() {
					ReactDOM.render(<MostraLinksUser user="cliente"/>, document.getElementsByClassName("linksuser"));
				});
			</script>
		</head>
		<body>
			<h2><fmt:message key="client.welcome"/>, ${sessionScope.usuarioLogado.nome}!!</h2>
			<%
				String contextPath = request.getContextPath().replace("/", "");
			%>
			<div class="linksuser"></div>
		</body>
	</fmt:bundle>
</html>