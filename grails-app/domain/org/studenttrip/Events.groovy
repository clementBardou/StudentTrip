package org.studenttrip

import org.studenttrip.security.User

class Events {

     /*Property*/
        String nom
        Date date
        Date heureDebut
        Date heureFin
        Float duree
        String lieu
        
        /*Relations between domain classes*/
        User organisateur
		User co_organisateur
		static belongsTo=Activite
        //Activite theme
        static hasMany=[participants:User,photos:Photo]


        /*Property Constraints */
    static constraints ={
                nom (blank:false, nullable:false)
                date (nullable:false)
                heureDebut (nullable:false)
                heureFin (nullable:false)
                duree (nullable:false)
                lieu (blank: false, nullable:false)
    }




        String toString(){
                return date + nom + organisateur + participants.count()
        }
}
