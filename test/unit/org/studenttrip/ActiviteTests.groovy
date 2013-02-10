package org.studenttrip

import grails.test.GrailsUnitTestCase;
import org.studenttrip.security.User

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */

class ActiviteTests extends GrailsUnitTestCase {

	def activite

	protected void setUp(){
		super.setUp()
		mockForConstraintsTests(Activite)
		User user1 = new User(username:"toto1",password:"apwd1")
		User user2 = new User(username:"toto2",password:"apwd2")
		activite = new Activite(titre:'unTitre',
						  descriptif:'unDescriptif',passionnees:[user1,user2])
	}
	void testToString(){
		
		String string = activite.toString()
		assertEquals(" titre: $activite.titre",string)
	}

	protected void tearDown() {
		super.tearDown();
	}

	void testConstraintsTitreBlanck() {
		assertTrue(activite.validate())
		activite.titre = ""
		assertFalse(activite.validate())
	}

	void testConstraintsTitreNullable() {
		assertTrue(activite.validate())
		activite.titre = null
		assertFalse(activite.validate())
	}
	
	void testConstraintsDescriptifBlanck() {
		assertTrue(activite.validate())
		activite.descriptif = ""
		assertFalse(activite.validate())
	}

	void testConstraintsDescriptifNullable() {
		assertTrue(activite.validate())
		activite.descriptif = null
		assertFalse(activite.validate())
	}
	
	void testCountPassionnee(){
		
		def nbUser = activite.countPassionnees()
		assertEquals(2,nbUser)
	}
	

}
