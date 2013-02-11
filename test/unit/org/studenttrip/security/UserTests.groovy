package org.studenttrip.security

import grails.test.GrailsUnitTestCase;
/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */

class UserTests extends GrailsUnitTestCase {

	def admin
	
	protected void setUp() {
		// Setup logic here
		super.setUp()
		mockForConstraintsTests(User)
		admin = new User(username: 'admin', password: 'admin', enabled: true)
	}

	
	protected void tearDown() {
		// Tear down logic here
		super.tearDown()
	}

	void testContraintBlankUserName() {
		assertTrue(admin.validate())
		admin.username = ""
		assertFalse(admin.validate())
	}
	
	void testConstraintNotNullUserName() {
		assertTrue(admin.validate())
		admin.username = null
		assertFalse(admin.validate())
	}
	
	void testContraintBlankUserPassword() {
		assertTrue(admin.validate())
		admin.password = ""
		assertFalse(admin.validate())
	}
	
	void testConstraintNotNullUserPassword() {
		assertTrue(admin.validate())
		admin.password = null
		assertFalse(admin.validate())
	}

}