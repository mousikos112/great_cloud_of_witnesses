<?php
require_once('database/gcw_database.php');

// Get the anthem data.
$suggestionsID = filter_input(INPUT_POST, 'suggestionsID', FILTER_VALIDATE_INT);

// Validate input.
if ($suggestionsID !== false && $suggestionsID !== null) {
    
    // Delete the suggestion from the database.
    $query = 'DELETE FROM suggestions
                WHERE suggestionsID = :suggestionsID';
    $statement = $db->prepare($query);
    $statement->bindValue(':suggestionsID', $suggestionsID);
    $success = $statement->execute();
    $statement->closeCursor();   
}

// Display some indication that an anthem was deleted.
include('thanks.php');
?>