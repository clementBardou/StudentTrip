<%@ page import="org.studenttrip.Party" %>



<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'intitule', 'error')} required">
	<label for="intitule">
		<g:message code="party.intitule.label" default="Intitule" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="intitule" required="" value="${partyInstance?.intitule}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="party.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${partyInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'heureDebut', 'error')} required">
	<label for="heureDebut">
		<g:message code="party.heureDebut.label" default="Heure Debut" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="heureDebut" precision="day"  value="${partyInstance?.heureDebut}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'heureFin', 'error')} required">
	<label for="heureFin">
		<g:message code="party.heureFin.label" default="Heure Fin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="heureFin" precision="day"  value="${partyInstance?.heureFin}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'lieu', 'error')} required">
	<label for="lieu">
		<g:message code="party.lieu.label" default="Lieu" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="lieu" name="lieu.id" from="${org.studenttrip.Adresse.list()}" optionKey="id" required="" value="${partyInstance?.lieu?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'co_organisateur', 'error')} required">
	<label for="co_organisateur">
		<g:message code="party.co_organisateur.label" default="Coorganisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="co_organisateur" name="co_organisateur.id" from="${org.studenttrip.security.User.list()}" optionKey="id" required="" value="${partyInstance?.co_organisateur?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'cout', 'error')} required">
	<label for="cout">
		<g:message code="party.cout.label" default="Cout" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cout" value="${fieldValue(bean: partyInstance, field: 'cout')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="party.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${partyInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'etablissement', 'error')} ">
	<label for="etablissement">
		<g:message code="party.etablissement.label" default="Etablissement" />
		
	</label>
	<g:textField name="etablissement" value="${partyInstance?.etablissement}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'organisateur', 'error')} required">
	<label for="organisateur">
		<g:message code="party.organisateur.label" default="Organisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="organisateur" name="organisateur.id" from="${org.studenttrip.security.User.list()}" optionKey="id" required="" value="${partyInstance?.organisateur?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'participants', 'error')} ">
	<label for="participants">
		<g:message code="party.participants.label" default="Participants" />
		
	</label>
	<g:select name="participants" from="${org.studenttrip.security.User.list()}" multiple="multiple" optionKey="id" size="5" value="${partyInstance?.participants*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'photos', 'error')} ">
	<label for="photos">
		<g:message code="party.photos.label" default="Photos" />
		
	</label>
	<g:select name="photos" from="${org.studenttrip.Photo.list()}" multiple="multiple" optionKey="id" size="5" value="${partyInstance?.photos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partyInstance, field: 'theme', 'error')} ">
	<label for="theme">
		<g:message code="party.theme.label" default="Theme" />
		
	</label>
	<g:textField name="theme" value="${partyInstance?.theme}"/>
</div>

