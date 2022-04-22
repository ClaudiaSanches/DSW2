<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
	<fmt:bundle basename="message">
		<head>
			<meta name="viewport" content="width=device-width, initial-scale=1"/>
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layout.css"/>
			<!-- <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
			<script crossorigin src="https://unpkg.com/react@16.13.1/umd/react.development.js"></script>
			<script crossorigin src="https://unpkg.com/react-dom@16.13.1/umd/react-dom.development.js"></script>
			<script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
			<script type="text/babel" src="./modulos/MostraLinksUser.jsx"></script>
			<script type="text/babel" src="./modulos/LinksUser.jsx"></script>
			<script type="text/babel">
				$(document).ready(function() {
					ReactDOM.render(<MostraLinksUser usuario="admin"/>, document.getElementById("linksadmin"));
				});
			</script> -->
			<title><fmt:message key="admin.title"/></title>
		</head>
		<body>
			<h2><fmt:message key="admin.title"/></h2>
			<%
				String contextPath = request.getContextPath().replace("/", "");
			%>
			<!-- <div id="linksadmin"></div> -->
			<a href="/<%=contextPath%>/admin/cadastroCliente"><fmt:message key="admin.insert.client.index"/></a><br/>
			<a href="/<%=contextPath%>/admin/cadastroAgencia"><fmt:message key="admin.insert.agency.index"/></a><br/>
			<a href="/<%=contextPath%>/admin/listaClientes"><fmt:message key="admin.list.client"/></a><br/>
			<a href="/<%=contextPath%>/admin/listaAgencias"><fmt:message key="admin.list.agency"/></a><br/>
			<a href="/<%=contextPath%>/index.jsp"><fmt:message key="homepage"/></a><br/>
			<a href="/<%=contextPath%>/logout/logout"><fmt:message key="logout"/></a>
		</body>
	</fmt:bundle>
</html>