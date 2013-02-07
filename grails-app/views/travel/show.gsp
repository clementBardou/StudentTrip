
<%@ page import="org.studenttrip.Travel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'travel.label', default: 'Travel')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-travel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-travel" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list travel">
			
				<g:if test="${travelInstance?.intitule}">
				<li class="fieldcontain">
					<span id="intitule-label" class="property-label"><g:message code="travel.intitule.label" default="Intitule" /></span>
					
						<span class="property-value" aria-labelledby="intitule-label"><g:fieldValue bean="${travelInstance}" field="intitule"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${travelInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="travel.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${travelInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${travelInstance?.heureDebut}">
				<li class="fieldcontain">
					<span id="heureDebut-label" class="property-label"><g:message code="travel.heureDebut.label" default="Heure Debut" /></span>
					
						<span class="property-value" aria-labelledby="heureDebut-label"><g:formatDate date="${travelInstance?.heureDebut}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${travelInstance?.heureFin}">
				<li class="fieldcontain">
					<span id="heureFin-label" class="property-label"><g:message code="travel.heureFin.label" default="Heure Fin" /></span>
					
						<span class="property-value" aria-labelledby="heureFin-label"><g:formatDate date="${travelInstance?.heureFin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${travelInstance?.lieu}">
				<li class="fieldcontain">
					<span id="lieu-label" class="property-label"><g:message code="travel.lieu.label" default="Lieu" /></span>
					
						<span class="property-value" aria-labelledby="lieu-label"><g:link controller="adresse" action="show" id="${travelInstance?.lieu?.id}">${travelInstance?.lieu?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${travelInstance?.co_organisateur}">
				<li class="fieldcontain">
					<span id="co_organisateur-label" class="property-label"><g:message code="travel.co_organisateur.label" default="Coorganisateur" /></span>
					
						<span class="property-value" aria-labelledby="co_organisateur-label"><g:link controller="user" action="show" id="${travelInstance?.co_organisateur?.id}">${travelInstance?.co_organisateur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${travelInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="travel.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${travelInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${travelInstance?.organisateur}">
				<li class="fieldcontain">
					<span id="organisateur-label" class="property-label"><g:message code="travel.organisateur.label" default="Organisateur" /></span>
					
						<span class="property-value" aria-labelledby="organisateur-label"><g:link controller="user" action="show" id="${travelInstance?.organisateur?.id}">${travelInstance?.organisateur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${travelInstance?.participants}">
				<li class="fieldcontain">
					<span id="participants-label" class="property-label"><g:message code="travel.participants.label" default="Participants" /></span>
					
						<g:each in="${travelInstance.participants}" var="p">
						<span class="property-value" aria-labelledby="participants-label"><g:link controller="user" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${travelInstance?.photos}">
				<li class="fieldcontain">
					<span id="photos-label" class="property-label"><g:message code="travel.photos.label" default="Photos" /></span>
					
						<g:each in="${travelInstance.photos}" var="p">
						<span class="property-value" aria-labelledby="photos-label"><g:link controller="photo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${travelInstance?.prix}">
				<li class="fieldcontain">
					<span id="prix-label" class="property-label"><g:message code="travel.prix.label" default="Prix" /></span>
					
						<span class="property-value" aria-labelledby="prix-label"><g:fieldValue bean="${travelInstance}" field="prix"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${travelInstance?.reservation}">
				<li class="fieldcontain">
					<span id="reservation-label" class="property-label"><g:message code="travel.reservation.label" default="Reservation" /></span>
					
						<span class="property-value" aria-labelledby="reservation-label"><g:fieldValue bean="${travelInstance}" field="reservation"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${travelInstance?.id}" />
					<g:link class="edit" action="edit" id="${travelInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
