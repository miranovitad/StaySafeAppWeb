<?php  
    include 'connect.php'; 
    $sql = "SELECT idHotline, hosName, address, phone FROM hotline";

    $response = mysqli_query($conn, $sql);

    $json_response = array();
    
    if( mysqli_num_rows ($response) > 0 ){
        while ($row = mysqli_fetch_array($response)) {
        $json_response[] = $row;
    }
    echo json_encode(array('hotline' => $json_response));
    } 
?>