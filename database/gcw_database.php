<?php
    $dsn = 'pgsql:dbname=gcw;host=/var/run/postgresql'; 
    $username = 'gcw';
    $password = ''; // Optional, depends on pg_hba.conf

    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $error) {
        $error_message = $error->getMessage();
        include('gcw_database_error.php');
        exit();
    }
?>