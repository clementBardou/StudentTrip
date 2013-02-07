package org.studenttrip.security

import org.studenttrip.Activite
import org.studenttrip.Profil

class User {

	transient springSecurityService

	String username
	String firstname
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	
	String sexe
	String telephone
	Date birthDay
	String email
	boolean emailShow

	/** description */
	String description = ''
	byte[][] avatar

	Profil profil
	static hasMany = [passions:Activite]
	
	static constraints = {
		username blank: false, unique: true
		password blank: false
		enabled()
		sexe (inList : ["F","M"])

		Date toDay = new Date();
		Date minDate = toDay.minus(13*365)
		birthDay max: minDate
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
	
}
