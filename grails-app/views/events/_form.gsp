<%@ page import="org.studenttrip.Events" %>



<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'intitule', 'error')} required">
	<label for="intitule">
		<g:message code="events.intitule.label" default="Intitule" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="intitule" required="" value="${eventsInstance?.intitule}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="events.description.label" default="Description" />
		
	</label>
	<g:textField name="description" maxlength="500" value="${eventsInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'dateDebut', 'error')} required">
	<label for="dateDebut">
		<g:message code="events.dateDebut.label" default="Date Debut" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateDebut" precision="day"  value="${eventsInstance?.dateDebut}"  />
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

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'dateFin', 'error')} required">
	<label for="dateFin">
		<g:message code="events.dateFin.label" default="Date Fin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateFin" precision="day"  value="${eventsInstance?.dateFin}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'lieu', 'error')} required">
	<label for="lieu">
		<g:message code="events.lieu.label" default="Lieu" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="lieu" name="lieu.id" from="${org.studenttrip.Adresse.list()}" optionKey="id" required="" value="${eventsInstance?.lieu?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'co_organisateur', 'error')} required">
	<label for="co_organisateur">
		<g:message code="events.co_organisateur.label" default="Coorganisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="co_organisateur" name="co_organisateur.id" from="${org.studenttrip.security.User.list()}" optionKey="id" required="" value="${eventsInstance?.co_organisateur?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventsInstance, field: 'participants', 'error')} ">
	<label for="participants">
		<g:message code="events.participants.label" default="Participants" />
		
	</label>
	<g:select name="participants" from="${org.studenttrip.security.User.list()}" multiple="multiple" optionKey="id" size="5" value="${eventsInstance?.participants*.id}" class="many-to-many"/>
</div>



