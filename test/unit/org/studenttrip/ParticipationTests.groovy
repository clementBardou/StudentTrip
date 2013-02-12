package org.studenttrip


import grails.test.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
class ParticipationTests extends GrailsUnitTestCase {
	
	def participation
	def participation2
	def participation3
	
	protected void setUp() {
		super.setUp()
		mockForConstraintsTests(Participation)
		participation = new Participation(etat: EtatParticipation.OUI)
		participation2 = new Participation(etat: EtatParticipation.OUI)
		participation3 = new Participation(etat: EtatParticipation.NON)
	  }
	
	  protected void tearDown() {
		super.tearDown()
	  }
		
	void testConstraintNotNullEtat() {
		assertTrue(participation.validate())
		participation.etat = null
		assertFalse(participation.validate())
	}
	
	void TestEquals(){
		assertTrue(participation.validate())
		assertTrue(participation.equals(participation2))
		assertFalse(participation2.equals(participation3))
	
	}

  
}
