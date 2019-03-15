<?php 
	require_once('config.php');
	confirm_logged_in();
	
	if(empty($_POST['id'])){
		$message = 'Missing ID';
	}else{
        $id = $_POST['id'];

		$message = deleteuser($id);
	}

	echo json_encode($message);
?>