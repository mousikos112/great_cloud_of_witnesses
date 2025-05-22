<?php
    $dsn = 'mysql:host=localhost;dbname=great_cloud_of_witnesses';
    $username = 'gcw_admin';
    $password = 'pa55word';

    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $error) {
        $error_message = $error->getMessage();
        include('gcw_database_error.php');
        exit();
    }
    
?>