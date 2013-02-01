<%@ page import="org.studenttrip.Activite" %>



<div class="fieldcontain ${hasErrors(bean: activiteInstance, field: 'titre', 'error')} required">
	<label for="titre">
		<g:message code="activite.titre.label" default="Titre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titre" required="" value="${activiteInstance?.titre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activiteInstance, field: 'descriptif', 'error')} required">
	<label for="descriptif">
		<g:message code="activite.descriptif.label" default="Descriptif" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descriptif" required="" value="${activiteInstance?.descriptif}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activiteInstance, field: 'evenements', 'error')} ">
	<label for="evenements">
		<g:message code="activite.evenements.label" default="Evenements" />
		
	</label>
	<g:select name="evenements" from="${org.studenttrip.Events.list()}" multiple="multiple" optionKey="id" size="5" value="${activiteInstance?.evenements*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activiteInstance, field: 'passionnees', 'error')} ">
	<label for="passionnees">
		<g:message code="activite.passionnees.label" default="Passionnees" />
		
	</label>
	
</div>

