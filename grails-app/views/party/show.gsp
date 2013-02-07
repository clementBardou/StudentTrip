
<%@ page import="org.studenttrip.Party" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'party.label', default: 'Party')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-party" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-party" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list party">
			
				<g:if test="${partyInstance?.intitule}">
				<li class="fieldcontain">
					<span id="intitule-label" class="property-label"><g:message code="party.intitule.label" default="Intitule" /></span>
					
						<span class="property-value" aria-labelledby="intitule-label"><g:fieldValue bean="${partyInstance}" field="intitule"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partyInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="party.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${partyInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${partyInstance?.heureDebut}">
				<li class="fieldcontain">
					<span id="heureDebut-label" class="property-label"><g:message code="party.heureDebut.label" default="Heure Debut" /></span>
					
						<span class="property-value" aria-labelledby="heureDebut-label"><g:formatDate date="${partyInstance?.heureDebut}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${partyInstance?.heureFin}">
				<li class="fieldcontain">
					<span id="heureFin-label" class="property-label"><g:message code="party.heureFin.label" default="Heure Fin" /></span>
					
						<span class="property-value" aria-labelledby="heureFin-label"><g:formatDate date="${partyInstance?.heureFin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${partyInstance?.lieu}">
				<li class="fieldcontain">
					<span id="lieu-label" class="property-label"><g:message code="party.lieu.label" default="Lieu" /></span>
					
						<span class="property-value" aria-labelledby="lieu-label"><g:link controller="adresse" action="show" id="${partyInstance?.lieu?.id}">${partyInstance?.lieu?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${partyInstance?.co_organisateur}">
				<li class="fieldcontain">
					<span id="co_organisateur-label" class="property-label"><g:message code="party.co_organisateur.label" default="Coorganisateur" /></span>
					
						<span class="property-value" aria-labelledby="co_organisateur-label"><g:link controller="user" action="show" id="${partyInstance?.co_organisateur?.id}">${partyInstance?.co_organisateur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${partyInstance?.cout}">
				<li class="fieldcontain">
					<span id="cout-label" class="property-label"><g:message code="party.cout.label" default="Cout" /></span>
					
						<span class="property-value" aria-labelledby="cout-label"><g:fieldValue bean="${partyInstance}" field="cout"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partyInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="party.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${partyInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partyInstance?.etablissement}">
				<li class="fieldcontain">
					<span id="etablissement-label" class="property-label"><g:message code="party.etablissement.label" default="Etablissement" /></span>
					
						<span class="property-value" aria-labelledby="etablissement-label"><g:fieldValue bean="${partyInstance}" field="etablissement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partyInstance?.organisateur}">
				<li class="fieldcontain">
					<span id="organisateur-label" class="property-label"><g:message code="party.organisateur.label" default="Organisateur" /></span>
					
						<span class="property-value" aria-labelledby="organisateur-label"><g:link controller="user" action="show" id="${partyInstance?.organisateur?.id}">${partyInstance?.organisateur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${partyInstance?.participants}">
				<li class="fieldcontain">
					<span id="participants-label" class="property-label"><g:message code="party.participants.label" default="Participants" /></span>
					
						<g:each in="${partyInstance.participants}" var="p">
						<span class="property-value" aria-labelledby="participants-label"><g:link controller="user" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${partyInstance?.photos}">
				<li class="fieldcontain">
					<span id="photos-label" class="property-label"><g:message code="party.photos.label" default="Photos" /></span>
					
						<g:each in="${partyInstance.photos}" var="p">
						<span class="property-value" aria-labelledby="photos-label"><g:link controller="photo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${partyInstance?.theme}">
				<li class="fieldcontain">
					<span id="theme-label" class="property-label"><g:message code="party.theme.label" default="Theme" /></span>
					
						<span class="property-value" aria-labelledby="theme-label"><g:fieldValue bean="${partyInstance}" field="theme"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${partyInstance?.id}" />
					<g:link class="edit" action="edit" id="${partyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
