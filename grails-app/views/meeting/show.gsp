
<%@ page import="org.studenttrip.Meeting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'meeting.label', default: 'Meeting')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-meeting" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-meeting" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list meeting">
			
				<g:if test="${meetingInstance?.intitule}">
				<li class="fieldcontain">
					<span id="intitule-label" class="property-label"><g:message code="meeting.intitule.label" default="Intitule" /></span>
					
						<span class="property-value" aria-labelledby="intitule-label"><g:fieldValue bean="${meetingInstance}" field="intitule"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="meeting.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${meetingInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.heureDebut}">
				<li class="fieldcontain">
					<span id="heureDebut-label" class="property-label"><g:message code="meeting.heureDebut.label" default="Heure Debut" /></span>
					
						<span class="property-value" aria-labelledby="heureDebut-label"><g:formatDate date="${meetingInstance?.heureDebut}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.heureFin}">
				<li class="fieldcontain">
					<span id="heureFin-label" class="property-label"><g:message code="meeting.heureFin.label" default="Heure Fin" /></span>
					
						<span class="property-value" aria-labelledby="heureFin-label"><g:formatDate date="${meetingInstance?.heureFin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.lieu}">
				<li class="fieldcontain">
					<span id="lieu-label" class="property-label"><g:message code="meeting.lieu.label" default="Lieu" /></span>
					
						<span class="property-value" aria-labelledby="lieu-label"><g:link controller="adresse" action="show" id="${meetingInstance?.lieu?.id}">${meetingInstance?.lieu?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.co_organisateur}">
				<li class="fieldcontain">
					<span id="co_organisateur-label" class="property-label"><g:message code="meeting.co_organisateur.label" default="Coorganisateur" /></span>
					
						<span class="property-value" aria-labelledby="co_organisateur-label"><g:link controller="user" action="show" id="${meetingInstance?.co_organisateur?.id}">${meetingInstance?.co_organisateur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="meeting.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${meetingInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.organisateur}">
				<li class="fieldcontain">
					<span id="organisateur-label" class="property-label"><g:message code="meeting.organisateur.label" default="Organisateur" /></span>
					
						<span class="property-value" aria-labelledby="organisateur-label"><g:link controller="user" action="show" id="${meetingInstance?.organisateur?.id}">${meetingInstance?.organisateur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.participants}">
				<li class="fieldcontain">
					<span id="participants-label" class="property-label"><g:message code="meeting.participants.label" default="Participants" /></span>
					
						<g:each in="${meetingInstance.participants}" var="p">
						<span class="property-value" aria-labelledby="participants-label"><g:link controller="user" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.photos}">
				<li class="fieldcontain">
					<span id="photos-label" class="property-label"><g:message code="meeting.photos.label" default="Photos" /></span>
					
						<g:each in="${meetingInstance.photos}" var="p">
						<span class="property-value" aria-labelledby="photos-label"><g:link controller="photo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${meetingInstance?.sujet}">
				<li class="fieldcontain">
					<span id="sujet-label" class="property-label"><g:message code="meeting.sujet.label" default="Sujet" /></span>
					
						<span class="property-value" aria-labelledby="sujet-label"><g:fieldValue bean="${meetingInstance}" field="sujet"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${meetingInstance?.id}" />
					<g:link class="edit" action="edit" id="${meetingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
