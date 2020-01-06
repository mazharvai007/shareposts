<?php

require_once '../app/libraries/Controller.php';

class Pages extends Controller
{
    public function __construct()
    {

    }

    public function index()
    {

        $data = [
            'title' => 'Welcome to Homepage',
        ];

        $this->view('pages/index', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'Welcome to About Page',
            'des' => 'Description'
        ];
        $this->view('pages/about', $data);
    }
}
