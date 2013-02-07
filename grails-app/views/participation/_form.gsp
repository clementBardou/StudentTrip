<%@ page import="org.studenttrip.Participation" %>



<div class="fieldcontain ${hasErrors(bean: participationInstance, field: 'etat', 'error')} required">
	<label for="etat">
		<g:message code="participation.etat.label" default="Etat" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="etat" from="${org.studenttrip.EtatParticipation?.values()}" keys="${org.studenttrip.EtatParticipation.values()*.name()}" required="" value="${participationInstance?.etat?.name()}"/>
</div>

