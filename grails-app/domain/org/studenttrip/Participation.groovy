package org.studenttrip

class Participation {
	
	EtatParticipation etat

    static constraints = {
		etat(nullable: false)
    }
}
