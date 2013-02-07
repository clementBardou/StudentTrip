package org.studenttrip



import org.junit.*
import grails.test.mixin.*

@TestFor(GroupementController)
@Mock(Groupement)
class GroupementControllerTests {
	
	void testSomething() {
	
}

    /*def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/groupement/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.groupementInstanceList.size() == 0
        assert model.groupementInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.groupementInstance != null
    }

    void testSave() {
        controller.save()

        assert model.groupementInstance != null
        assert view == '/groupement/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/groupement/show/1'
        assert controller.flash.message != null
        assert Groupement.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/groupement/list'

        populateValidParams(params)
        def groupement = new Groupement(params)

        assert groupement.save() != null

        params.id = groupement.id

        def model = controller.show()

        assert model.groupementInstance == groupement
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/groupement/list'

        populateValidParams(params)
        def groupement = new Groupement(params)

        assert groupement.save() != null

        params.id = groupement.id

        def model = controller.edit()

        assert model.groupementInstance == groupement
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/groupement/list'

        response.reset()

        populateValidParams(params)
        def groupement = new Groupement(params)

        assert groupement.save() != null

        // test invalid parameters in update
        params.id = groupement.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/groupement/edit"
        assert model.groupementInstance != null

        groupement.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/groupement/show/$groupement.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        groupement.clearErrors()

        populateValidParams(params)
        params.id = groupement.id
        params.version = -1
        controller.update()

        assert view == "/groupement/edit"
        assert model.groupementInstance != null
        assert model.groupementInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/groupement/list'

        response.reset()

        populateValidParams(params)
        def groupement = new Groupement(params)

        assert groupement.save() != null
        assert Groupement.count() == 1

        params.id = groupement.id

        controller.delete()

        assert Groupement.count() == 0
        assert Groupement.get(groupement.id) == null
        assert response.redirectedUrl == '/groupement/list'
    }*/
}
