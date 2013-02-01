<%@ page import="org.studenttrip.Events" %>



<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="events.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${eventsInstance?.nom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="events.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${eventsInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'heureDebut', 'error')} required">
	<label for="heureDebut">
		<g:message code="events.heureDebut.label" default="Heure Debut" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="heureDebut" precision="day"  value="${eventsInstance?.heureDebut}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'heureFin', 'error')} required">
	<label for="heureFin">
		<g:message code="events.heureFin.label" default="Heure Fin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="heureFin" precision="day"  value="${eventsInstance?.heureFin}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'duree', 'error')} required">
	<label for="duree">
		<g:message code="events.duree.label" default="Duree" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="duree" value="${fieldValue(bean: eventsInstance, field: 'duree')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'lieu', 'error')} required">
	<label for="lieu">
		<g:message code="events.lieu.label" default="Lieu" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lieu" required="" value="${eventsInstance?.lieu}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'co_organisateur', 'error')} required">
	<label for="co_organisateur">
		<g:message code="events.co_organisateur.label" default="Coorganisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="co_organisateur" name="co_organisateur.id" from="${org.studenttrip.security.User.list()}" optionKey="id" required="" value="${eventsInstance?.co_organisateur?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'organisateur', 'error')} required">
	<label for="organisateur">
		<g:message code="events.organisateur.label" default="Organisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="organisateur" name="organisateur.id" from="${org.studenttrip.security.User.list()}" optionKey="id" required="" value="${eventsInstance?.organisateur?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'participants', 'error')} ">
	<label for="participants">
		<g:message code="events.participants.label" default="Participants" />
		
	</label>
	<g:select name="participants" from="${org.studenttrip.security.User.list()}" multiple="multiple" optionKey="id" size="5" value="${eventsInstance?.participants*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'photos', 'error')} ">
	<label for="photos">
		<g:message code="events.photos.label" default="Photos" />
		
	</label>
	<g:select name="photos" from="${org.studenttrip.Photo.list()}" multiple="multiple" optionKey="id" size="5" value="${eventsInstance?.photos*.id}" class="many-to-many"/>
</div>

