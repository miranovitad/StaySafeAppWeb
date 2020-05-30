<?php  
    include 'connect.php'; 
    $sql = "
    SELECT 
    a.idCampaign,
    a.idUser,
    b.name AS namaUser,
    b.phone,
    b.email,
    a.name,
    a.startDate,
    a.endDate,
    a.info,
    a.detail,
    a.target,
    a.bankAcc,
    a.bankNum 
    FROM
    campaign a 
    INNER JOIN USER b 
    WHERE a.`idUser` = b.`id` 
    ";

    $response = mysqli_query($conn, $sql);

    $json_response = array();
    
    if( mysqli_num_rows ($response) > 0 ){
        while ($row = mysqli_fetch_array($response)) {
        $json_response[] = $row;
    }
    echo json_encode(array('campaign' => $json_response));
    } 
?>