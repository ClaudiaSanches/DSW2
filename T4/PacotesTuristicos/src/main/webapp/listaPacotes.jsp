<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
	<fmt:bundle basename="message">
		<head>
			<meta name="viewport" content="width=device-width, initial-scale=1"/>
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layout.css"/>
			<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
			<script crossorigin src="https://unpkg.com/react@16.13.1/umd/react.development.js"></script>
			<script crossorigin src="https://unpkg.com/react-dom@16.13.1/umd/react-dom.development.js"></script>
			<script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
			<script type="text/babel" src="./modulos/MostraLinks.jsx"></script>
			<script type="text/babel" src="./modulos/Links.jsx"></script>
			<script type="text/babel">
				$(document).ready(function() {
					ReactDOM.render(<MostraLinks papel="${sessionScope.usuarioLogado.papel}"/>, document.getElementById("links"));
				});
			</script>
			<title><fmt:message key="trip.title"/></title>
		</head>
		<body>
			<%
				String contextPath = request.getContextPath().replace("/", "");
			%>
			<div id="links"></div>
			<div align="center">
				<h1><fmt:message key="trip.title"/></h1>
			</div>
			<div align="center">
				<table border="1" class="tabela">
					<tr class="table-header">
						<th><fmt:message key="trip.list.id"/></th>
						<th><fmt:message key="trip.list.name"/></th>
						<th><fmt:message key="trip.list.agency"/></th>
						<th><fmt:message key="trip.list.location"/></th>
						<th><fmt:message key="trip.list.departure"/></th>
						<th><fmt:message key="trip.list.duration"/></th>
						<th><fmt:message key="trip.list.price"/></th>
					</tr>
					<c:forEach var="pacote" items="${requestScope.listaPacotes}">
						<tr>
							<td><c:out value="${pacote.id}" /></td>
							<td><c:out value="${pacote.nome}" /></td>
							<td><c:out value="${pacote.agencia.nome}" /></td>
							<td>
								<c:choose>
									<c:when test="${pacote.estado} != null">
										<c:out value="${pacote.cidade}, ${pacote.estado} - ${pacote.pais}"/>
									</c:when>
									<c:otherwise>
										<c:out value="${pacote.cidade} - ${pacote.pais}"/>
									</c:otherwise>
								</c:choose>
							</td>
							<td><c:out value="${pacote.partida}" /></td>
							<td><c:out value="${pacote.duracao}" /></td>
							<td><c:out value="${pacote.valor}" /></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<h3><fmt:message key="trip.filter"/></h3>
			<div id="container">
				<div>
					<p class="filtros"><fmt:message key="trip.filter.agency"/></p>
					<c:forEach var="agencia" items="${requestScope.listaAgencias}">
						&emsp;<a href="/<%=contextPath%>/listaPacotes?agencia=${agencia}">
								<c:out value="${agencia}"/></a><br/>
					</c:forEach>
				</div>
				<div>
					<p class="filtros"><fmt:message key="trip.filter.location"/></p>
					<c:forEach var="destino" items="${requestScope.listaDestinos}">
						&emsp;<a href="/<%=contextPath%>/listaPacotes?destino=${destino}">
								<c:out value="${destino}"/></a><br/>
					</c:forEach>
				</div>
				<div>
					<p class="filtros"><fmt:message key="trip.filter.departure"/></p>
					<c:forEach var="partida" items="${requestScope.listaPartidas}">
						&emsp;<a href="/<%=contextPath%>/listaPacotes?partida=${partida}">
								<c:out value="${partida}"/></a><br/>
					</c:forEach>
				</div>
			</div>
		</body>
	</fmt:bundle>
</html>