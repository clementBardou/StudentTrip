package org.studenttrip

import org.studenttrip.security.User

class Events {

     /*Property*/
        String intitule
		String description
        Date date
        Date heureDebut
        Date heureFin
                
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
                date (nullable:false)
                heureDebut (nullable:false)
                heureFin (nullable:false)
                lieu (blank: false, nullable:false)
    }




        String toString(){
                return date + intitule + organisateur + participants.count()
        }
}
