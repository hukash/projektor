package projektor

import grails.test.*

class TracecardControllerTests extends ControllerUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testRenderIndex() {
        controller.index()
        assertEquals "Welcome to Projektor", 
            controller.response.contentAsString
    }
}
