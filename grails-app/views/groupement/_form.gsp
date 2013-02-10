<%@ page import="org.studenttrip.Groupement" %>



<div class="fieldcontain ${hasErrors(bean: groupementInstance, field: 'intitule', 'error')} required">
	<label for="intitule">
		<g:message code="groupement.intitule.label" default="Intitule" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="intitule" required="" value="${groupementInstance?.intitule}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupementInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="groupement.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${groupementInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupementInstance, field: 'typeGroup', 'error')} required">
	<label for="typeGroup">
		<g:message code="groupement.typeGroup.label" default="Type Group" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="typeGroup" from="${org.studenttrip.TypeGroup?.values()}" keys="${org.studenttrip.TypeGroup.values()*.name()}" required="" value="${groupementInstance?.typeGroup?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupementInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="groupement.users.label" default="Users" />
		
	</label>
	<g:select name="users" from="${org.studenttrip.security.User.list()}" multiple="multiple" optionKey="id" size="5" value="${groupementInstance?.users*.id}" class="many-to-many"/>
</div>

