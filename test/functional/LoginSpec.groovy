import spock.lang.*
import geb.*
import geb.spock.*

class LoginSpec extends GebReportingSpec {

	def "the title should be Login"() {
		when:
		to LoginPage

		then:
		title == "Login"
		report "login screen"
	}

}