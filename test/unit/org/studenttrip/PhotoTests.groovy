package org.studenttrip


import grails.test.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
class PhotoTests extends GrailsUnitTestCase {
	
	def photo
	
	protected void setUp() {
		super.setUp()
		mockForConstraintsTests(Photo)
		photo = new Photo(nomPhoto:'nomPhoto',
						  datePhoto:new Date(),
						  photo :[0,1,0,0])
	  }
	
	  protected void tearDown() {
		super.tearDown()
	  }
	
	  
	void testContraintBlankPhotoName() {
		assertTrue(photo.validate())
		photo.nomPhoto = ""
		assertFalse(photo.validate())
	}
	
	void testConstraintNotNullPhotoName() {
		assertTrue(photo.validate())
		photo.nomPhoto = null
		assertFalse(photo.validate())
	}
	
	void testToString() {
		assertTrue(photo.validate())
		photo.nomPhoto = "testNomPhoto"
		assertTrue(photo.toString().equals("testNomPhoto"))
	}
	
 }
