<?php 

class Posts extends Controller
{
    
    public function __construct()
    {
        if(!isLoggedIn()) {
            redirect('index.php?url=users/login');
        }

        $this->postModel = $this->model('Post');
        $this->userModel = $this->model('User');
    }

    /*
    **********
    * Index
    **********
    */     

    public function index()
    {
        // Get Posts
        $posts = $this->postModel->getPosts();
        $data = [
            'posts' => $posts
        ];

        // Load view
        $this->view('posts/index', $data);
    }

    /*
    **********
    * Add Posts
    **********
    */ 

    public function add()
    {
        if($_SERVER['REQUEST_METHOD'] == 'POST') {
            // Sanitize Post array
            $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

            $data = [
                'title' => trim($_POST['title']),
                'body' => trim($_POST['body']),
                'user_id' => $_SESSION['user_id'],
                'title_err' => '',
                'body_err' => ''
            ];  
            
            // Validation
            if(empty($data['title'])) {
                $data['title_err'] = 'Please enter title';
            }
            if(empty($data['body'])) {
                $data['body_err'] = 'Please enter body text';
            }

            // Make sure no errors
            if(empty($data['title_err']) && empty($data['body_err'])) {
                // Post add
                if($this->postModel->addPost($data)) {
                    flash('post_message', 'Post Added');
                    redirect('index.php?url=posts');
                } else {
                    die('Something went wrong');
                }

            } else {
                // Load view with errors
                $this->view('posts/add', $data);
            }

        } else {
            $data = [
                'title' => '',
                'body' => ''
            ];

            // Load view
            $this->view('posts/add', $data);        
        }

    }

    /*
    **********
    * Show Posts
    **********
    */
    
    public function show($id)
    {
        $post = $this->postModel->getPostById($id);
        $user = $this->userModel->getUserById($post->user_id);

        $data = [
            'post' => $post,
            'user' => $user
        ];
        $this->view('posts/show', $data);
    }

    /*
    **********
    * Edit Posts
    **********
    */ 

    public function edit($id)
    {
        if($_SERVER['REQUEST_METHOD'] == 'POST') {
            // Sanitize Post array
            $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

            $data = [
                'id' => $id,
                'title' => trim($_POST['title']),
                'body' => trim($_POST['body']),
                'user_id' => $_SESSION['user_id'],
                'title_err' => '',
                'body_err' => ''
            ];  
            
            // Validation
            if(empty($data['title'])) {
                $data['title_err'] = 'Please enter title';
            }
            if(empty($data['body'])) {
                $data['body_err'] = 'Please enter body text';
            }

            // Make sure no errors
            if(empty($data['title_err']) && empty($data['body_err'])) {
                // Post add
                if($this->postModel->updatePost($data)) {
                    flash('post_message', 'Post Updated');
                    redirect('index.php?url=posts');
                } else {
                    die('Something went wrong');
                }

            } else {
                // Load view with errors
                $this->view('posts/edit', $data);
            }

        } else {

            // Get existing post from model
            $post = $this->postModel->getPostById($id);

            // Check for owner
            if($post->user_id != $_SESSION['user_id']) {
                redirect('index.php?url=posts');
            }

            $data = [
                'id' => $id,
                'title' => $post->title,
                'body' => $post->body
            ];

            // Load view
            $this->view('posts/edit', $data);        
        }
    }    
}