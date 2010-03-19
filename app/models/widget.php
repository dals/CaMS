<?php
class Widget extends AppModel {

	var $name = 'Widget';
	var $validate = array(
		'name' => array('notempty')
	);

}
?>