package org.studenttrip

class Photo {

    String nomPhoto
	Date datePhoto
    byte [][] photo

    static constraints = {
                nomPhoto (blank: false, nullable:false)
                photo (size :0..1048576)
        }
	
	String toString(){
		return nomPhoto
}
}
