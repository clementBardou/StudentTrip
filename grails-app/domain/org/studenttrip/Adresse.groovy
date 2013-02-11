package org.studenttrip

import org.hibernate.loader.custom.Return;

class Adresse {

	String rue
	String nom
	String ville
	int code_postal

	static constraints = {
		rue(blank:false, nullable:false)
		nom(blank:false, nullable:false)
		ville(blank:false, nullable:false)
		code_postal(nullable:false)
	}

	@Override
	public boolean equals(Object obj) {
		Adresse adresse=(Adresse) obj
		if ((adresse.rue).equals(rue) && (adresse.nom).equals(nom) && (adresse.ville) && (adresse.code_postal)) {
			return true;
		} else {

			return false;
		}
	}

	String toString() {

		return rue + nom + ville + code_postal
	}
}
