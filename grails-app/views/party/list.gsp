
<%@ page import="org.studenttrip.Party" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'party.label', default: 'Party')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-party" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-party" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="intitule" title="${message(code: 'party.intitule.label', default: 'Intitule')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'party.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="heureDebut" title="${message(code: 'party.heureDebut.label', default: 'Heure Debut')}" />
					
						<g:sortableColumn property="heureFin" title="${message(code: 'party.heureFin.label', default: 'Heure Fin')}" />
					
						<th><g:message code="party.lieu.label" default="Lieu" /></th>
					
						<th><g:message code="party.co_organisateur.label" default="Coorganisateur" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${partyInstanceList}" status="i" var="partyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${partyInstance.id}">${fieldValue(bean: partyInstance, field: "intitule")}</g:link></td>
					
						<td><g:formatDate date="${partyInstance.date}" /></td>
					
						<td><g:formatDate date="${partyInstance.heureDebut}" /></td>
					
						<td><g:formatDate date="${partyInstance.heureFin}" /></td>
					
						<td>${fieldValue(bean: partyInstance, field: "lieu")}</td>
					
						<td>${fieldValue(bean: partyInstance, field: "co_organisateur")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${partyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
