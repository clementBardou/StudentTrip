import org.studenttrip.security.Role
import org.studenttrip.security.User
import org.studenttrip.security.UserRole

class BootStrap {

	 def init = { servletContext ->
     def roleAdmin = new Role(authority: 'ROLE_ADMIN').save(flush: true)
     def roleUser = new Role(authority: 'ROLE_USER').save(flush: true)
     def userAdmin = new User(username: 'admin', password: 'admin', enabled: true)
     userAdmin.save(flush: true)
	 def userSimple = new User(username: 'student', password: 'student', enabled: true)
	 userSimple.save(flush: true)
     //UserRole.create(userAdmin, roleAdmin, true)
	 //UserRole.create(userSimple, roleUser, true)
    	
	 
	}
	
    def destroy = {
    }
}
