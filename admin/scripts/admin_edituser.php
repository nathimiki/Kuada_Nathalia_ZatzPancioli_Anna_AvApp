<?php 
	require_once('config.php');
	confirm_logged_in();
	
	if(empty($_POST['username']) || empty($_POST['password'])){
		$message = 'Fill in the required fields';
	}else{
		$username = $_POST['username'];
        $password = $_POST['password'];
        $id = $_POST['id'];

		$message = edituser($username,$password,$id);
	}

	echo json_encode($message);
?>