<?php
    if (isset($_GET['allRatings'])) {
        include('connect.php');

        $query = 'SELECT * FROM tbl_rating';
        $getAllRating = $pdo->prepare($query);
        $getAllRating->execute();

        $rating = array();

        while($result = $getAllRating->fetch(PDO::FETCH_ASSOC)) {
            $rate = array();
            $rate = $result;
            $rating[] = $rate;
        }

        echo json_encode($rating);
    }

?>