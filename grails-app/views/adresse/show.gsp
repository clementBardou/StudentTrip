
<%@ page import="org.studenttrip.Adresse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'adresse.label', default: 'Adresse')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-adresse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-adresse" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list adresse">
			
				<g:if test="${adresseInstance?.code_postal}">
				<li class="fieldcontain">
					<span id="code_postal-label" class="property-label"><g:message code="adresse.code_postal.label" default="Codepostal" /></span>
					
						<span class="property-value" aria-labelledby="code_postal-label"><g:fieldValue bean="${adresseInstance}" field="code_postal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adresseInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="adresse.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${adresseInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adresseInstance?.rue}">
				<li class="fieldcontain">
					<span id="rue-label" class="property-label"><g:message code="adresse.rue.label" default="Rue" /></span>
					
						<span class="property-value" aria-labelledby="rue-label"><g:fieldValue bean="${adresseInstance}" field="rue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adresseInstance?.ville}">
				<li class="fieldcontain">
					<span id="ville-label" class="property-label"><g:message code="adresse.ville.label" default="Ville" /></span>
					
						<span class="property-value" aria-labelledby="ville-label"><g:fieldValue bean="${adresseInstance}" field="ville"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${adresseInstance?.id}" />
					<g:link class="edit" action="edit" id="${adresseInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
