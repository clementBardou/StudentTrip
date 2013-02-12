import spock.lang.*

import geb.*
import geb.spock.*

import pages.*

@Stepwise
class LoginSpec extends GebReportingSpec {

	String getBaseUrl() { "http://localhost:8080/StudentTrip" }
	File getReportDir() { new File("target/geb-reports") }
	
	def "the title should be Login"() {
		when:
		to LoginPage

		then:
		title == "Login"
		report "login screen"
	}

}