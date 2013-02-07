
<%@ page import="org.studenttrip.Travel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'travel.label', default: 'Travel')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-travel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-travel" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="intitule" title="${message(code: 'travel.intitule.label', default: 'Intitule')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'travel.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="heureDebut" title="${message(code: 'travel.heureDebut.label', default: 'Heure Debut')}" />
					
						<g:sortableColumn property="heureFin" title="${message(code: 'travel.heureFin.label', default: 'Heure Fin')}" />
					
						<th><g:message code="travel.lieu.label" default="Lieu" /></th>
					
						<th><g:message code="travel.co_organisateur.label" default="Coorganisateur" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${travelInstanceList}" status="i" var="travelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${travelInstance.id}">${fieldValue(bean: travelInstance, field: "intitule")}</g:link></td>
					
						<td><g:formatDate date="${travelInstance.date}" /></td>
					
						<td><g:formatDate date="${travelInstance.heureDebut}" /></td>
					
						<td><g:formatDate date="${travelInstance.heureFin}" /></td>
					
						<td>${fieldValue(bean: travelInstance, field: "lieu")}</td>
					
						<td>${fieldValue(bean: travelInstance, field: "co_organisateur")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${travelInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
