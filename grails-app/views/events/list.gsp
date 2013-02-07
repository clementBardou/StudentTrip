
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
					
						<g:sortableColumn property="intitule" title="${message(code: 'events.intitule.label', default: 'Intitule')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'events.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="heureDebut" title="${message(code: 'events.heureDebut.label', default: 'Heure Debut')}" />
					
						<g:sortableColumn property="heureFin" title="${message(code: 'events.heureFin.label', default: 'Heure Fin')}" />
					
						<th><g:message code="events.lieu.label" default="Lieu" /></th>
					
						<th><g:message code="events.co_organisateur.label" default="Coorganisateur" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventsInstanceList}" status="i" var="eventsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventsInstance.id}">${fieldValue(bean: eventsInstance, field: "intitule")}</g:link></td>
					
						<td><g:formatDate date="${eventsInstance.date}" /></td>
					
						<td><g:formatDate date="${eventsInstance.heureDebut}" /></td>
					
						<td><g:formatDate date="${eventsInstance.heureFin}" /></td>
					
						<td>${fieldValue(bean: eventsInstance, field: "lieu")}</td>
					
						<td>${fieldValue(bean: eventsInstance, field: "co_organisateur")}</td>
					
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
