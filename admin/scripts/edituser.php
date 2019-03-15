<?php 
	function createuser($fname, $username, $email, $password, $admin, $rating){
		include('connect.php');

		$create_user_query = 'INSERT INTO tbl_user(user_fname,user_name,user_pass,user_email,user_admin,user_access)';
		$create_user_query .= ' VALUES(:fname,:name,:pass,:email,:admin,:access)';
		$create_user_set = $pdo->prepare($create_user_query);
		$create_user_set->execute(
			array(
                ':fname'=>$fname,
				':name'=>$username,
				':pass'=>$password,
				':email'=>$email,
				':admin'=>$admin,
				':access'=>$rating
			)
		);
		if($create_user_set->rowCount()){
			$message = 'User created!';
			return $message;
		}else{
			$message = 'Something went wrong!';
			return $message;
		}
	}

	function edituser($username, $password, $id){
		include('connect.php');
	
		$update_user_query = 'UPDATE tbl_user SET user_name = :username, user_pass = :pass WHERE user_id = :id';
        $update_user = $pdo->prepare($update_user_query);
        $result = $update_user->execute(
            array(
                ':username'=> $username,
                ':pass'=> $password,
                ':id'=> $id
                )
        );

		if($update_user->rowCount()){
			$message = 'User Edited!';
			return $message;
		}else{
			$message = 'Something went wrong!';
			return $message;
		}
	}

	function deleteuser($id){
		include('connect.php');
	
		$delete_user_query = 'DELETE FROM tbl_user WHERE user_id = :id';
        $delete_user = $pdo->prepare($delete_user_query);
        $result = $delete_user->execute(
            array(
                ':id'=> $id
                )
        );

		if($delete_user->rowCount()){
			$message = 'User deleted successfully!';
			return $message;
		}else{
			$message = 'Something went wrong!';
			return $message;
		}
    }
    
?>