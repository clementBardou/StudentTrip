package org.studenttrip

import org.studenttrip.security.User

class Groupement {

   String intitule
	String description

	static hasMany = [users:User]
	TypeGroup typeGroup 

	static constraints = {
		intitule (blank:false, nullable:false)
		description (blank: false, nullable:false)
    }
}
