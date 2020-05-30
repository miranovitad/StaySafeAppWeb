<?php

if($_SERVER['REQUEST_METHOD'] == 'POST') {

    $id         = $_POST['id'];
    $photo      = $_POST['photo'];
    $name       = $_POST['name'];
    $startDate  = $_POST['startDate'];
    $endDate    = $_POST['endDate'];
    $info       = $_POST['info'];
    $detail     = $_POST['detail'];
    $target     = $_POST['target'];
    $bankAcc    = $_POST['bankAcc'];
    $bankNum    = $_POST['bankNum'];

    require_once 'connect.php';

    $sql_next_id = "SELECT AUTO_INCREMENT AS next_id FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'staysafeapp' AND TABLE_NAME = 'campaign'";
    $response = mysqli_query($conn, $sql_next_id);
    $row = mysqli_fetch_assoc($response);
    $mNextId = $row['next_id'];    

    $path = "campaign_foto/$mNextId.jpeg";
    $finalPath = "http://192.168.43.140/staysafeapp/".$path;

    $sql = "INSERT INTO campaign (idUser, imgCampaign, name, startDate, endDate, info, detail, target, bankAcc, bankNum) 
            VALUES ('$id', '$photo', '$name', '$startDate', '$endDate', '$info', '$detail', '$target', '$bankAcc', '$bankNum')";

    if (mysqli_query($conn, $sql)) {
        
        if ( file_put_contents( $path, base64_decode($photo) ) ) {
            
            $result['success'] = "1";
            $result['message'] = "success";

            echo json_encode($result);
            mysqli_close($conn);

        }

    }

}

?>