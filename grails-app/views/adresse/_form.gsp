<%@ page import="org.studenttrip.Adresse" %>



<div class="fieldcontain ${hasErrors(bean: adresseInstance, field: 'code_postal', 'error')} required">
	<label for="code_postal">
		<g:message code="adresse.code_postal.label" default="Codepostal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="code_postal" type="number" value="${adresseInstance.code_postal}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: adresseInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="adresse.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${adresseInstance?.nom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adresseInstance, field: 'rue', 'error')} ">
	<label for="rue">
		<g:message code="adresse.rue.label" default="Rue" />
		
	</label>
	<g:textField name="rue" value="${adresseInstance?.rue}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adresseInstance, field: 'ville', 'error')} ">
	<label for="ville">
		<g:message code="adresse.ville.label" default="Ville" />
		
	</label>
	<g:textField name="ville" value="${adresseInstance?.ville}"/>
</div>

