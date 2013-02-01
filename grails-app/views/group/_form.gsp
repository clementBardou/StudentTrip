<%@ page import="org.studenttrip.Group" %>



<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'typeGroup', 'error')} required">
	<label for="typeGroup">
		<g:message code="group.typeGroup.label" default="Type Group" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="typeGroup" from="${org.studenttrip.TypeGroup?.values()}" keys="${org.studenttrip.TypeGroup.values()*.name()}" required="" value="${groupInstance?.typeGroup?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="group.users.label" default="Users" />
		
	</label>
	<g:select name="users" from="${org.studenttrip.security.User.list()}" multiple="multiple" optionKey="id" size="5" value="${groupInstance?.users*.id}" class="many-to-many"/>
</div>

