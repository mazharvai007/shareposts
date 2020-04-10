<?php 

class Posts extends Controller
{
    public function __construct()
    {
        if(!isLoggedIn()) {
            redirect('index.php?url=users/login');
        }
    }

    public function index()
    {
        $data = [];

        // Load view
        $this->view('posts/index', $data);
    }
}