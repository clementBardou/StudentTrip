package org.studenttrip

import org.hibernate.validator.cfg.defs.AssertTrueDef;

import grails.test.*

class AdresseTests extends GrailsUnitTestCase {
		
	def adresse
	def adresse1
	def adresse2
      
	protected void setUp(){
		  super.setUp()
		  mockForConstraintsTests(Adresse)
		  adresse  = new Adresse(rue:'266',nom:'Henri Desbals',
			  					 ville:'Toulouse',code_postal:31100);
		  adresse1  = new Adresse(rue:'266',nom:'Henri Desbals',
								 ville:'Toulouse',code_postal:31100);
		  adresse2  = new Adresse(rue:'26',nom:'jean paul',
								 ville:'londre',code_postal:60000);
	}

	protected void tearDown(){
		super.tearDown()
		
	}
	
	
	void TestConstraintRue() {
		assertTrue(adresse.validate())
		adresse.rue=""
		assertFalse(adresse.validate())
		adresse.rue=null
		assertFalse(adresse.validate())
			
		}

	void TestConstraineNom() {
		assertTrue(adresse.validate())
		adresse.nom=""
		assertFalse(adresse.validate())
		adresse.nom=null
		assertFalse(adresse.validate())
		
		}
	
	void TestConstraineVille() {
		assertTrue(adresse.validate())
		adresse.ville=''
		assertFalse(adresse.validate())
		adresse.ville=null
		assertFalse(adresse.validate())

		}

	void TestContraintCodePostal(){
		assertTrue(adresse.validate())
		adresse.code_postal=null
		assertFalse(adresse.validate())
		}
	void TestMethodeEquals(){
		assertTrue(adresse.validate())
		assertTrue(adresse.equals(adresse1))
		assertFalse(adresse1.equals(adresse2))
		
			}
	

	}