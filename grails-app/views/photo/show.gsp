
<%@ page import="org.studenttrip.Photo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'photo.label', default: 'Photo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-photo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-photo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list photo">
			
				<g:if test="${photoInstance?.nomPhoto}">
				<li class="fieldcontain">
					<span id="nomPhoto-label" class="property-label"><g:message code="photo.nomPhoto.label" default="Nom Photo" /></span>
					
						<span class="property-value" aria-labelledby="nomPhoto-label"><g:fieldValue bean="${photoInstance}" field="nomPhoto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label"><g:message code="photo.photo.label" default="Photo" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.datePhoto}">
				<li class="fieldcontain">
					<span id="datePhoto-label" class="property-label"><g:message code="photo.datePhoto.label" default="Date Photo" /></span>
					
						<span class="property-value" aria-labelledby="datePhoto-label"><g:formatDate date="${photoInstance?.datePhoto}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${photoInstance?.id}" />
					<g:link class="edit" action="edit" id="${photoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
