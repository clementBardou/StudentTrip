package org.studenttrip

import org.studenttrip.security.User

class Group {

	static hasMany = [users:User]
	TypeGroup typeGroup 
	
	static constraints = {
    }
}
