<%@ page import="org.studenttrip.Travel" %>



<div class="fieldcontain ${hasErrors(bean: travelInstance, field: 'intitule', 'error')} required">
	<label for="intitule">
		<g:message code="travel.intitule.label" default="Intitule" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="intitule" required="" value="${travelInstance?.intitule}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: travelInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="travel.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${travelInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: travelInstance, field: 'heureDebut', 'error')} required">
	<label for="heureDebut">
		<g:message code="travel.heureDebut.label" default="Heure Debut" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="heureDebut" precision="day"  value="${travelInstance?.heureDebut}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: travelInstance, field: 'heureFin', 'error')} required">
	<label for="heureFin">
		<g:message code="travel.heureFin.label" default="Heure Fin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="heureFin" precision="day"  value="${travelInstance?.heureFin}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: travelInstance, field: 'lieu', 'error')} required">
	<label for="lieu">
		<g:message code="travel.lieu.label" default="Lieu" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="lieu" name="lieu.id" from="${org.studenttrip.Adresse.list()}" optionKey="id" required="" value="${travelInstance?.lieu?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: travelInstance, field: 'co_organisateur', 'error')} required">
	<label for="co_organisateur">
		<g:message code="travel.co_organisateur.label" default="Coorganisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="co_organisateur" name="co_organisateur.id" from="${org.studenttrip.security.User.list()}" optionKey="id" required="" value="${travelInstance?.co_organisateur?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: travelInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="travel.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${travelInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: travelInstance, field: 'organisateur', 'error')} required">
	<label for="organisateur">
		<g:message code="travel.organisateur.label" default="Organisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="organisateur" name="organisateur.id" from="${org.studenttrip.security.User.list()}" optionKey="id" required="" value="${travelInstance?.organisateur?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: travelInstance, field: 'participants', 'error')} ">
	<label for="participants">
		<g:message code="travel.participants.label" default="Participants" />
		
	</label>
	<g:select name="participants" from="${org.studenttrip.security.User.list()}" multiple="multiple" optionKey="id" size="5" value="${travelInstance?.participants*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: travelInstance, field: 'photos', 'error')} ">
	<label for="photos">
		<g:message code="travel.photos.label" default="Photos" />
		
	</label>
	<g:select name="photos" from="${org.studenttrip.Photo.list()}" multiple="multiple" optionKey="id" size="5" value="${travelInstance?.photos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: travelInstance, field: 'prix', 'error')} required">
	<label for="prix">
		<g:message code="travel.prix.label" default="Prix" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="prix" value="${fieldValue(bean: travelInstance, field: 'prix')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: travelInstance, field: 'reservation', 'error')} ">
	<label for="reservation">
		<g:message code="travel.reservation.label" default="Reservation" />
		
	</label>
	<g:textField name="reservation" value="${travelInstance?.reservation}"/>
</div>

