<%@ page import="org.studenttrip.Meeting" %>



<div class="fieldcontain ${hasErrors(bean: meetingInstance, field: 'intitule', 'error')} required">
	<label for="intitule">
		<g:message code="meeting.intitule.label" default="Intitule" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="intitule" required="" value="${meetingInstance?.intitule}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: meetingInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="meeting.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${meetingInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: meetingInstance, field: 'heureDebut', 'error')} required">
	<label for="heureDebut">
		<g:message code="meeting.heureDebut.label" default="Heure Debut" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="heureDebut" precision="day"  value="${meetingInstance?.heureDebut}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: meetingInstance, field: 'heureFin', 'error')} required">
	<label for="heureFin">
		<g:message code="meeting.heureFin.label" default="Heure Fin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="heureFin" precision="day"  value="${meetingInstance?.heureFin}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: meetingInstance, field: 'lieu', 'error')} required">
	<label for="lieu">
		<g:message code="meeting.lieu.label" default="Lieu" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="lieu" name="lieu.id" from="${org.studenttrip.Adresse.list()}" optionKey="id" required="" value="${meetingInstance?.lieu?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: meetingInstance, field: 'co_organisateur', 'error')} required">
	<label for="co_organisateur">
		<g:message code="meeting.co_organisateur.label" default="Coorganisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="co_organisateur" name="co_organisateur.id" from="${org.studenttrip.security.User.list()}" optionKey="id" required="" value="${meetingInstance?.co_organisateur?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: meetingInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="meeting.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${meetingInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: meetingInstance, field: 'organisateur', 'error')} required">
	<label for="organisateur">
		<g:message code="meeting.organisateur.label" default="Organisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="organisateur" name="organisateur.id" from="${org.studenttrip.security.User.list()}" optionKey="id" required="" value="${meetingInstance?.organisateur?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: meetingInstance, field: 'participants', 'error')} ">
	<label for="participants">
		<g:message code="meeting.participants.label" default="Participants" />
		
	</label>
	<g:select name="participants" from="${org.studenttrip.security.User.list()}" multiple="multiple" optionKey="id" size="5" value="${meetingInstance?.participants*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: meetingInstance, field: 'photos', 'error')} ">
	<label for="photos">
		<g:message code="meeting.photos.label" default="Photos" />
		
	</label>
	<g:select name="photos" from="${org.studenttrip.Photo.list()}" multiple="multiple" optionKey="id" size="5" value="${meetingInstance?.photos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: meetingInstance, field: 'sujet', 'error')} ">
	<label for="sujet">
		<g:message code="meeting.sujet.label" default="Sujet" />
		
	</label>
	<g:textField name="sujet" value="${meetingInstance?.sujet}"/>
</div>

