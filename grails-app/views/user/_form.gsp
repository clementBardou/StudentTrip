<%@ page import="org.studenttrip.security.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'sexe', 'error')} ">
	<label for="sexe">
		<g:message code="user.sexe.label" default="Sexe" />
		
	</label>
	<g:select name="sexe" from="${userInstance.constraints.sexe.inList}" value="${userInstance?.sexe}" valueMessagePrefix="user.sexe" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthDay', 'error')} required">
	<label for="birthDay">
		<g:message code="user.birthDay.label" default="Birth Day" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDay" precision="day"  value="${userInstance?.birthDay}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="user.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="user.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="user.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${userInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emailShow', 'error')} ">
	<label for="emailShow">
		<g:message code="user.emailShow.label" default="Email Show" />
		
	</label>
	<g:checkBox name="emailShow" value="${userInstance?.emailShow}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passions', 'error')} ">
	<label for="passions">
		<g:message code="user.passions.label" default="Passions" />
		
	</label>
	<g:select name="passions" from="${org.studenttrip.Activite.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.passions*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'profil', 'error')} required">
	<label for="profil">
		<g:message code="user.profil.label" default="Profil" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profil" name="profil.id" from="${org.studenttrip.Profil.list()}" optionKey="id" required="" value="${userInstance?.profil?.id}" class="many-to-one"/>
</div>

