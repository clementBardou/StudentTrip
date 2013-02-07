package org.studenttrip



import org.junit.*
import grails.test.mixin.*

@TestFor(ProfilController)
@Mock(Profil)
class ProfilControllerTests {

	void testSomething() {
	
  }
	 /*def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/profil/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.profilInstanceList.size() == 0
        assert model.profilInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.profilInstance != null
    }

    void testSave() {
        controller.save()

        assert model.profilInstance != null
        assert view == '/profil/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/profil/show/1'
        assert controller.flash.message != null
        assert Profil.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/profil/list'

        populateValidParams(params)
        def profil = new Profil(params)

        assert profil.save() != null

        params.id = profil.id

        def model = controller.show()

        assert model.profilInstance == profil
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/profil/list'

        populateValidParams(params)
        def profil = new Profil(params)

        assert profil.save() != null

        params.id = profil.id

        def model = controller.edit()

        assert model.profilInstance == profil
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/profil/list'

        response.reset()

        populateValidParams(params)
        def profil = new Profil(params)

        assert profil.save() != null

        // test invalid parameters in update
        params.id = profil.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/profil/edit"
        assert model.profilInstance != null

        profil.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/profil/show/$profil.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        profil.clearErrors()

        populateValidParams(params)
        params.id = profil.id
        params.version = -1
        controller.update()

        assert view == "/profil/edit"
        assert model.profilInstance != null
        assert model.profilInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/profil/list'

        response.reset()

        populateValidParams(params)
        def profil = new Profil(params)

        assert profil.save() != null
        assert Profil.count() == 1

        params.id = profil.id

        controller.delete()

        assert Profil.count() == 0
        assert Profil.get(profil.id) == null
        assert response.redirectedUrl == '/profil/list'
    }*/
}
