package org.studenttrip

import org.studenttrip.security.User

class Group {
	
	String intitule
	String description

	static hasMany = [users:User]
	TypeGroup typeGroup 
	
	static constraints = {
    }
}
