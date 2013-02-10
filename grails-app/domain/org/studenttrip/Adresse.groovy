package org.studenttrip

class Adresse {
	
	String rue
	String nom
	String ville
	int code_postal

    static constraints = {
		rue(blank:false, nullable:false)
		nom(blank:false, nullable:false)
		ville(blank:false, nullable:false)
		code_postal(max:99999)
    }
	
	String toString() {
		
		return rue + nom + ville + code_postal
	}
}
