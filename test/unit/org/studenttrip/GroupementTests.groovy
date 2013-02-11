package org.studenttrip

import grails.test.GrailsUnitTestCase;


/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */

class GroupementTests extends GrailsUnitTestCase {

	def groupement
	void setUp() {
		super.setUp()
		mockForConstraintsTests(Groupement)
		groupement = new Groupement(intitule:"unIntitule",description:"uneDescription",
			typeGroup:TypeGroup.ANNEE)
	}

	void tearDown() {
		super.tearDown()
	}

	void testConstraintsIntituleBlanck() {
		assertTrue(groupement.validate())
		groupement.intitule = ""
		assertFalse(groupement.validate())
	}

	void testConstraintsIntituleNullable() {
		assertTrue(groupement.validate())
		groupement.intitule = null
		assertFalse(groupement.validate())
	}
	
	void testConstraintsDescriptionBlanck() {
		assertTrue(groupement.validate())
		groupement.description = ""
		assertFalse(groupement.validate())
	}

	void testConstraintsDescriptionNullable() {
		assertTrue(groupement.validate())
		groupement.description = null
		assertFalse(groupement.validate())
	}
}
