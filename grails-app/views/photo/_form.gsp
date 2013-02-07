<%@ page import="org.studenttrip.Photo" %>



<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'nomPhoto', 'error')} required">
	<label for="nomPhoto">
		<g:message code="photo.nomPhoto.label" default="Nom Photo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomPhoto" required="" value="${photoInstance?.nomPhoto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'photo', 'error')} required">
	<label for="photo">
		<g:message code="photo.photo.label" default="Photo" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'datePhoto', 'error')} required">
	<label for="datePhoto">
		<g:message code="photo.datePhoto.label" default="Date Photo" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="datePhoto" precision="day"  value="${photoInstance?.datePhoto}"  />
</div>

