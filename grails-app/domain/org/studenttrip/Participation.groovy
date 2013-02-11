package org.studenttrip

import org.hibernate.loader.custom.Return;

class Participation {

	EtatParticipation etat

	static constraints = { etat(nullable: false) }
	@Override
	public boolean equals(Object obj) {
		Participation participation=(Participation) obj
		return this.etat.equals(participation.etat)
	}

	@Override
	public String toString() {
		return etat
	}
}
