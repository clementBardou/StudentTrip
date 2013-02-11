
<%@ page import="org.studenttrip.Groupement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'groupement.label', default: 'Groupement')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-groupement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-groupement" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list groupement">
			
				<g:if test="${groupementInstance?.intitule}">
				<li class="fieldcontain">
					<span id="intitule-label" class="property-label"><g:message code="groupement.intitule.label" default="Intitule" /></span>
					
						<span class="property-value" aria-labelledby="intitule-label"><g:fieldValue bean="${groupementInstance}" field="intitule"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupementInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="groupement.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${groupementInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupementInstance?.typeGroup}">
				<li class="fieldcontain">
					<span id="typeGroup-label" class="property-label"><g:message code="groupement.typeGroup.label" default="Type Group" /></span>
					
						<span class="property-value" aria-labelledby="typeGroup-label"><g:fieldValue bean="${groupementInstance}" field="typeGroup"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupementInstance?.users}">
				<li class="fieldcontain">
					<span id="users-label" class="property-label"><g:message code="groupement.users.label" default="Users" /></span>
					
						<g:each in="${groupementInstance.users}" var="u">
						<span class="property-value" aria-labelledby="users-label"><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${groupementInstance?.id}" />
					<g:link class="edit" action="edit" id="${groupementInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
