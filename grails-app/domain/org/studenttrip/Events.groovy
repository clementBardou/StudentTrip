package org.studenttrip

import java.util.Date;

import org.h2.util.IntIntHashMap;
import org.studenttrip.security.User

class Events {

	/*Property*/
	String intitule
	String description
	Date dateDebut
	Date dateFin

	/*Relations between domain classes*/
	User organisateur
	User co_organisateur
	Adresse lieu
	static belongsTo=Activite
	//Activite theme
	static hasMany=[participants:User,photos:Photo]


	/*Property Constraints */
	static constraints ={
		intitule (blank:false, nullable:false)
		description (maxSize:50)
		dateDebut (nullable:false)
		lieu (blank: false, nullable:false)
	}



	/**
	 * Display the values of the instance properties 
	 */
	String toString(){
		return description+" "+ intitule +" "+dateFin.format("dd/mm/yyyy HH:mm") +" "+dateDebut.format("dd/mm/yyyy HH:mm"); 
	}
	
	
	/**
	 * Test if both instances are equals
	 * @param obj
	 * 		instance to compare with
	 */
	public boolean equals(Object obj) {
		Events event = (Events) obj		
		return this.intitule.equals(event.intitule) && this.description.equals(event.description) && this.dateDebut.equals(event.dateDebut) && this.dateFin.equals(event.dateFin)
	}
}
