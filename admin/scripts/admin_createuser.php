<?php 
	require_once('config.php');
	confirm_logged_in();

	if(empty($_POST['fname']) || empty($_POST['name']) || empty($_POST['email']) || empty($_POST['password']) || empty($_POST['rating'])){
		$message = 'Fill in the required fields';
	}else{
        $fname = $_POST['fname'];
        $username = $_POST['name'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$rating = $_POST['rating'];
		$admin = $_POST['admin'];
        
		$message = createuser($fname, $username, $email, $password, $rating, $admin);
	}

	echo json_encode($message);
?>