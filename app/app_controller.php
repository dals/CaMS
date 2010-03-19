<?php
class AppController extends Controller {
    var $components = array('Acl', 'Auth');

    function beforeFilter() {
        //Configure AuthComponent
        $this->Auth->authorize = 'actions';
        $this->Auth->loginAction = array('controller' => 'users', 'action' => 'login');
        $this->Auth->logoutRedirect = array('controller' => 'users', 'action' => 'login');
        $this->Auth->loginRedirect = array('controller' => 'posts', 'action' => 'add');
        $this->Auth->actionPath = 'controllers/';
        $this->Auth->allowedActions = array('view', 'index');
    }
}
