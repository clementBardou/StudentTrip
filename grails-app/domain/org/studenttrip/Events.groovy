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
		description (maxSize:50)
        dateDebut (nullable:false)
        heureDebut (nullable:false)
        heureFin (nullable:false)
    }
//        lieu (blank: false, nullable:false)




		String toString(){
                return heureDebut.format("HH:mm") +" "+ heureFin.format("HH:mm")+ " "+dateDebut.format("dd/mm/yyyy") +" "+ description +" "+ intitule ;
        }
}
