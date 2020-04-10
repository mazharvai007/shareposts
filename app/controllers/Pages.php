<?php

class Pages extends Controller
{
    public function __construct()
    {

    }

    public function index()
    {

        $data = [
            'title' => 'SharePosts',
            'description' => 'Simple social network built on the MVC - PHP Framework'
        ];

        $this->view('pages/index', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'Welcome to About Page',
            'description' => 'App to share post with other users'
        ];
        $this->view('pages/about', $data);
    }
}
