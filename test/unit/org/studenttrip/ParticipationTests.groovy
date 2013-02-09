package org.studenttrip


import grails.test.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
class ParticipationTests extends GrailsUnitTestCase {
	
	def participation
	
	protected void setUp() {
		super.setUp()
		mockForConstraintsTests(Participation)
		participation = new Participation(etat: EtatParticipation.OUI)
	  }
	
	  protected void tearDown() {
		super.tearDown()
	  }
		
	void testConstraintNotNullEtat() {
		assertTrue(participation.validate())
		participation.etat = null
		assertFalse(participation.validate())
	}

  
}
