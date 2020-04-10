<?php 

class Posts extends Controller
{
    public function index()
    {
        $data = [];

        // Load view
        $this->view('posts/index', $data);
    }
}