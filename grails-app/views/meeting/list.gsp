
<%@ page import="org.studenttrip.Meeting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'meeting.label', default: 'Meeting')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-meeting" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-meeting" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="intitule" title="${message(code: 'meeting.intitule.label', default: 'Intitule')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'meeting.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="heureDebut" title="${message(code: 'meeting.heureDebut.label', default: 'Heure Debut')}" />
					
						<g:sortableColumn property="heureFin" title="${message(code: 'meeting.heureFin.label', default: 'Heure Fin')}" />
					
						<th><g:message code="meeting.lieu.label" default="Lieu" /></th>
					
						<th><g:message code="meeting.co_organisateur.label" default="Coorganisateur" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${meetingInstanceList}" status="i" var="meetingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${meetingInstance.id}">${fieldValue(bean: meetingInstance, field: "intitule")}</g:link></td>
					
						<td><g:formatDate date="${meetingInstance.date}" /></td>
					
						<td><g:formatDate date="${meetingInstance.heureDebut}" /></td>
					
						<td><g:formatDate date="${meetingInstance.heureFin}" /></td>
					
						<td>${fieldValue(bean: meetingInstance, field: "lieu")}</td>
					
						<td>${fieldValue(bean: meetingInstance, field: "co_organisateur")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${meetingInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
