package pages

import geb.Module

class LoginPage extends ScaffoldPage {
	static url = "login/auth"

	static at = {
		title ==~ /Login/
	}

	static content = {
		connexionBouton(to: Index) { $("a", text: "Connexion") }
	}
}
