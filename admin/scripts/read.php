<?php 

    function getAll($tbl){

        include('connect.php');

        $queryAll = 'SELECT * FROM '.$tbl;
        $runAll = $pdo->query($queryAll);

        $result = array();       

        while($row = $runAll->fetch(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        return $result;

        }
    

    function getSingle($tbl, $col, $value){

        include('connect.php');
        $querySingle = 'SELECT * FROM '.$tbl.' WHERE '.$col.' = '.$value;
        $runSingle = $pdo->query($querySingle);
        if ($runSingle){
            return $runSingle;
        } else {

            $error = 'There was a problem';
            return $error;
        }
    }

    function filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter) {
        include('connect.php');
        $filterQuery = 'SELECT * FROM ' .$tbl.' as a, ';
        $filterQuery.= $tbl2.' as b, ';
        $filterQuery.= $tbl3.' as c ';
        $filterQuery.= 'WHERE a.' .$col.' = c.'.$col;
        $filterQuery.= ' AND b.' .$col2.' = c.'.$col2;
        $filterQuery.= ' AND b.' .$col3.' = "'.$filter.'"';
        $runQuery = $pdo->query($filterQuery);
        if($runQuery){

                $results = array();

                while($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
                    $results[] = $row;
                }

                return $results;
        }

        /*function filterMoviesResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filterMovies) {
            include('connect.php');
            $filterMoviesQuery = 'SELECT * FROM ' .$tbl.' as a, ';
            $filterMoviesQuery.= $tbl2.' as b, ';
            $filterMoviesQuery.= $tbl3.' as c ';
            $filterMoviesQuery.= 'WHERE a.' .$col.' = c.'.$col;
            $filterMoviesQuery.= ' AND b.' .$col2.' = c.'.$col2;
            $filterMoviesQuery.= ' AND b.' .$col3.' = "'.$filter.'"';
            $runQuery = $pdo->query($filterMoviesQuery);
            if($runQuery){
    
                    $results = array();
    
                    while($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
                        $results[] = $row;
                    }
    
                    return $results;
        }
    
        function filterAudioResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filterAudio) {
            include('connect.php');
            $filterAudioQuery = 'SELECT * FROM ' .$tbl.' as a, ';
            $filterAudioQuery.= $tbl2.' as b, ';
            $filterAudioQuery.= $tbl3.' as c ';
            $filterAudioQuery.= 'WHERE a.' .$col.' = c.'.$col;
            $filterAudioQuery.= ' AND b.' .$col2.' = c.'.$col2;
            $filterAudioQuery.= ' AND b.' .$col3.' = "'.$filter.'"';
            $runQuery = $pdo->query($filterAudioQuery);
            if($runQuery){
    
                    $results = array();
    
                    while($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
                        $results[] = $row;
                    }
    
                    return $results;
        }*/

        else{
            $error = 'There was a problem';
            return $error;
        }
    }

?>