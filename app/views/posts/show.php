<?php require APPROOT . '/views/inc/header.php'; ?>
    <a href="<?php echo URLROOT; ?>/index.php?url=posts" class="btn btn-light">
        <i class="fa fa-backward"></i> Back
    </a>
    <br><br>

    <div class="row mb-3">
        <div class="card card-body mb-3">
            <h4 class="cart-title"><?php echo $data['post']->title; ?></h4>
            <div class="bg-secondary text-white p-3 mb-3">
                Written by <?php echo $data['user']->name; ?> on <?php echo $data['post']->created_at; ?>
            </div>
            <p class="card-text"><?php echo $data['post']->body; ?></p>
        </div>
    </div>

    <?php if($data['post']->user_id == $_SESSION['user_id']) : ?>
        <hr>
        <a href="<?php echo URLROOT; ?>/index.php?url=posts/edit/<?php echo $data['post']->id; ?>" class="btn btn-dark"><i class="fa fa-pencil"></i> Edit</a>

        <form action="<?php echo URLROOT; ?>/index.php?url=posts/delete/<?php echo $data['post']->id; ?>" method="post" class="pull-right">
            <input type="submit" value="Delete" name="delete_post" class="btn btn-danger">
        </form>      
    <?php endif; ?>
<?php require APPROOT . '/views/inc/footer.php'; ?>