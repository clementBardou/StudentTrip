package org.studenttrip



import org.junit.*
import grails.test.mixin.*

@TestFor(TravelController)
@Mock(Travel)
class TravelControllerTests {

	void testSomething() {
	
  }
   /* def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/travel/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.travelInstanceList.size() == 0
        assert model.travelInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.travelInstance != null
    }

    void testSave() {
        controller.save()

        assert model.travelInstance != null
        assert view == '/travel/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/travel/show/1'
        assert controller.flash.message != null
        assert Travel.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/travel/list'

        populateValidParams(params)
        def travel = new Travel(params)

        assert travel.save() != null

        params.id = travel.id

        def model = controller.show()

        assert model.travelInstance == travel
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/travel/list'

        populateValidParams(params)
        def travel = new Travel(params)

        assert travel.save() != null

        params.id = travel.id

        def model = controller.edit()

        assert model.travelInstance == travel
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/travel/list'

        response.reset()

        populateValidParams(params)
        def travel = new Travel(params)

        assert travel.save() != null

        // test invalid parameters in update
        params.id = travel.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/travel/edit"
        assert model.travelInstance != null

        travel.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/travel/show/$travel.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        travel.clearErrors()

        populateValidParams(params)
        params.id = travel.id
        params.version = -1
        controller.update()

        assert view == "/travel/edit"
        assert model.travelInstance != null
        assert model.travelInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/travel/list'

        response.reset()

        populateValidParams(params)
        def travel = new Travel(params)

        assert travel.save() != null
        assert Travel.count() == 1

        params.id = travel.id

        controller.delete()

        assert Travel.count() == 0
        assert Travel.get(travel.id) == null
        assert response.redirectedUrl == '/travel/list'
    }*/
}
