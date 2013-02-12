package org.studenttrip


import java.util.Date;
import org.studenttrip.security.User
import grails.test.GrailsUnitTestCase;
/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
class EventsTests extends GrailsUnitTestCase {
	def event
	
	protected void setUp () {
		super.setUp()
		mockForConstraintsTests(Events)
		User coOrg = new User(username : "narjiss",password:"admin",enabled: true);
		Adresse adr = new Adresse();
		
		event = new Events(
			intitule :"white and black",
			description : "soiree a theme",
			dateDebut :  Date.parse("dd-MM-yyyy HH:mm","31-12-2010 20:00") ,
			dateFin :  Date.parse("dd-MM-yyyy HH:mm","31-12-2010 20:00") ,
			organisateur: new User(username : "narjiss",password:"admin",enabled: true),
			co_organisateur:new User(username : "narjiss",password:"admin",enabled: true),
			lieu:new Adresse(),
			participants:[],
			photos:[]
		)
				
		
	}
	
	
	protected void tearDown() {
		super.tearDown()
	  }
	
	void testNotNullConstraintsIntitule() {
		assert event.validate()
		event.intitule = ""
		//intitule est vide
		assert !event.validate()
	  }

	void testMaxSizeConstraintsDescription() {
		assert event.validate()
		event.description = "blablablablablalbablablablablablablablablabalbalbalbalablablablabalbalbalbalablablablablabalbalbalbalbalablablablabalbalbalabalbalbalbalbalab"
		//intitule est vide
		assert !event.validate()
	}
	
	void testNotNullConstraintsDateDebut() {
		assert event.validate()
		event.dateDebut = null
		//intitule est vide
		assert !event.validate()
	}
	void testNotNullConstraintsDateFin() {
		assert event.validate()
		event.dateFin = null
		//intitule est vide
		assert !event.validate()
	}
		
	void testNotNullConstraintsLieu() {
		assert event.validate()
		event.lieu = null
		//intitule est vide
		assert !event.validate()
	}
	
	void testEquals(){
		assert event.validate()
		Events eventTwo = new Events(
			intitule :"white and black",
			description : "soiree a theme",
			dateDebut :  Date.parse("dd-MM-yyyy HH:mm","31-12-2010 20:00") ,
			dateFin :  Date.parse("dd-MM-yyyy HH:mm","31-12-2010 20:00") ,
			organisateur: new User(username : "narjiss",password:"admin",enabled: true),
			co_organisateur:new User(username : "narjiss",password:"admin",enabled: true),
			lieu:new Adresse(),
			participants:[],
			photos:[]
			)
		assert event.equals(eventTwo);
		Events eventThree = new Events(
			intitule :"Black and red",
			description : "soiree a theme",
			dateDebut :  Date.parse("dd-MM-yyyy HH:mm","01-02-2010 20:00") ,
			dateFin :  Date.parse("dd-MM-yyyy HH:mm","02-02-2010 20:00") ,
			organisateur: new User(username : "narjiss",password:"admin",enabled: true),
			co_organisateur:new User(username : "narjiss",password:"admin",enabled: true),
			lieu:new Adresse(),
			participants:[],
			photos:[]
			)
		assert !event.equals(eventThree);		
	}
	
	
}
