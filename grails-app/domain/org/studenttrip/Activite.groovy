package org.studenttrip

import org.studenttrip.security.User

class Activite {

        String titre
        String descriptif

        
		static hasMany = [passionnees:User,evenements:Events]
		static belongsTo=User
		
        static constraints ={
                titre (blank:false, nullable:false)
                descriptif (blank: false, nullable:false)
        }

        String toString(){
                return " titre: $titre"
        }

        def int countPassionnees(){
            passionnees.size();
        }

        List mailPassionnees(){
            List usersMails = []
            passionnees.each {
                usersMails.add(it.email)
            }
            return usersMails

        }
}
