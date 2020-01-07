<?php

require_once '../app/libraries/Controller.php';

class Users extends Controller
{
    public function __construct()
    {

    }

    // Register
    public function register()
    {
        // Check for POST
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            // Process form
        } else {
            // Init Data
            $data = [
                'name' => '',
                'email' => '',
                'password' => '',
                'confirm_password' => '',
                'name_err' => '',
                'email_err' => '',
                'password_err' => '',
                'confirm_password_err' => ''
            ];

            // Load View
            $this->view('users/register', $data);
        }
    }

    // Login
    public function login()
    {
        // Check for POST
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            // Process form
        } else {
            // Init Data
            $data = [
                'email' => '',
                'password' => '',
                'email_err' => '',
                'password_err' => ''
            ];

            // Load View
            $this->view('users/login', $data);
        }
    }
}