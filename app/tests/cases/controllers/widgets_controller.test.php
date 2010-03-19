<?php 
/* SVN FILE: $Id$ */
/* WidgetsController Test cases generated on: 2010-03-18 13:02:28 : 1268910148*/
App::import('Controller', 'Widgets');

class TestWidgets extends WidgetsController {
	var $autoRender = false;
}

class WidgetsControllerTest extends CakeTestCase {
	var $Widgets = null;

	function startTest() {
		$this->Widgets = new TestWidgets();
		$this->Widgets->constructClasses();
	}

	function testWidgetsControllerInstance() {
		$this->assertTrue(is_a($this->Widgets, 'WidgetsController'));
	}

	function endTest() {
		unset($this->Widgets);
	}
}
?>