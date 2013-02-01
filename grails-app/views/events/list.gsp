
<%@ page import="org.studenttrip.Events" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'events.label', default: 'Events')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-events" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-events" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nom" title="${message(code: 'events.nom.label', default: 'Nom')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'events.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="heureDebut" title="${message(code: 'events.heureDebut.label', default: 'Heure Debut')}" />
					
						<g:sortableColumn property="heureFin" title="${message(code: 'events.heureFin.label', default: 'Heure Fin')}" />
					
						<g:sortableColumn property="duree" title="${message(code: 'events.duree.label', default: 'Duree')}" />
					
						<g:sortableColumn property="lieu" title="${message(code: 'events.lieu.label', default: 'Lieu')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventsInstanceList}" status="i" var="eventsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventsInstance.id}">${fieldValue(bean: eventsInstance, field: "nom")}</g:link></td>
					
						<td><g:formatDate date="${eventsInstance.date}" /></td>
					
						<td><g:formatDate date="${eventsInstance.heureDebut}" /></td>
					
						<td><g:formatDate date="${eventsInstance.heureFin}" /></td>
					
						<td>${fieldValue(bean: eventsInstance, field: "duree")}</td>
					
						<td>${fieldValue(bean: eventsInstance, field: "lieu")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventsInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
