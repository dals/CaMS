<?php 
/* SVN FILE: $Id$ */
/* Widget Test cases generated on: 2010-03-18 13:02:28 : 1268910148*/
App::import('Model', 'Widget');

class WidgetTestCase extends CakeTestCase {
	var $Widget = null;
	var $fixtures = array('app.widget');

	function startTest() {
		$this->Widget =& ClassRegistry::init('Widget');
	}

	function testWidgetInstance() {
		$this->assertTrue(is_a($this->Widget, 'Widget'));
	}

	function testWidgetFind() {
		$this->Widget->recursive = -1;
		$results = $this->Widget->find('first');
		$this->assertTrue(!empty($results));

		$expected = array('Widget' => array(
			'id'  => 1,
			'name'  => 'Lorem ipsum dolor sit amet',
			'part_no'  => 'Lorem ipsu',
			'quantity'  => 1
		));
		$this->assertEqual($results, $expected);
	}
}
?>