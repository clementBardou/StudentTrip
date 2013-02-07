
<%@ page import="org.studenttrip.Events" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'events.label', default: 'Events')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-events" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-events" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list events">
			
				<g:if test="${eventsInstance?.intitule}">
				<li class="fieldcontain">
					<span id="intitule-label" class="property-label"><g:message code="events.intitule.label" default="Intitule" /></span>
					
						<span class="property-value" aria-labelledby="intitule-label"><g:fieldValue bean="${eventsInstance}" field="intitule"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventsInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="events.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${eventsInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventsInstance?.heureDebut}">
				<li class="fieldcontain">
					<span id="heureDebut-label" class="property-label"><g:message code="events.heureDebut.label" default="Heure Debut" /></span>
					
						<span class="property-value" aria-labelledby="heureDebut-label"><g:formatDate date="${eventsInstance?.heureDebut}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventsInstance?.heureFin}">
				<li class="fieldcontain">
					<span id="heureFin-label" class="property-label"><g:message code="events.heureFin.label" default="Heure Fin" /></span>
					
						<span class="property-value" aria-labelledby="heureFin-label"><g:formatDate date="${eventsInstance?.heureFin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventsInstance?.lieu}">
				<li class="fieldcontain">
					<span id="lieu-label" class="property-label"><g:message code="events.lieu.label" default="Lieu" /></span>
					
						<span class="property-value" aria-labelledby="lieu-label"><g:link controller="adresse" action="show" id="${eventsInstance?.lieu?.id}">${eventsInstance?.lieu?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventsInstance?.co_organisateur}">
				<li class="fieldcontain">
					<span id="co_organisateur-label" class="property-label"><g:message code="events.co_organisateur.label" default="Coorganisateur" /></span>
					
						<span class="property-value" aria-labelledby="co_organisateur-label"><g:link controller="user" action="show" id="${eventsInstance?.co_organisateur?.id}">${eventsInstance?.co_organisateur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventsInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="events.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${eventsInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventsInstance?.organisateur}">
				<li class="fieldcontain">
					<span id="organisateur-label" class="property-label"><g:message code="events.organisateur.label" default="Organisateur" /></span>
					
						<span class="property-value" aria-labelledby="organisateur-label"><g:link controller="user" action="show" id="${eventsInstance?.organisateur?.id}">${eventsInstance?.organisateur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventsInstance?.participants}">
				<li class="fieldcontain">
					<span id="participants-label" class="property-label"><g:message code="events.participants.label" default="Participants" /></span>
					
						<g:each in="${eventsInstance.participants}" var="p">
						<span class="property-value" aria-labelledby="participants-label"><g:link controller="user" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventsInstance?.photos}">
				<li class="fieldcontain">
					<span id="photos-label" class="property-label"><g:message code="events.photos.label" default="Photos" /></span>
					
						<g:each in="${eventsInstance.photos}" var="p">
						<span class="property-value" aria-labelledby="photos-label"><g:link controller="photo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${eventsInstance?.id}" />
					<g:link class="edit" action="edit" id="${eventsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
