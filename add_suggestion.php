<?php
// Get the anthem data.
$title = filter_input(INPUT_POST, 'title');
$composer = filter_input(INPUT_POST, 'composer');
$type = filter_input(INPUT_POST, 'organ_or_choral');
$comments = filter_input(INPUT_POST, 'comments');

// Validate inputs.
if ($title == NULL || $title == FALSE || $composer == NULL || $composer == FALSE || 
        $type == NULL || $type == FALSE) {
    $error = "Invalid data.  Suggestions must at least have a title, a composer, and an indication 
        of whether it is for choir or organ.";
    include('error.php');
} else {
    require_once('database/gcw_database.php');

    // Add the anthem to the suggestions table of the database.
    $query = 'INSERT INTO suggestions
                 (title, composer, organ_or_choral, comments)
              VALUES
                 (:title, :composer, :organ_or_choral, :comments)';

    $statement = $db->prepare($query);
    $statement->bindValue(':title', $title);
    $statement->bindValue(':composer', $composer);
    $statement->bindValue(':organ_or_choral', $type);
    $statement->bindValue(':comments', $comments);
    $statement->execute();
    $suggestionsID = $db->lastInsertId();
    $statement->closeCursor();

    // Pass all this info as a session variable so that the suggestionsID actually gets passed.
    $submitted_data = [
        'title' => $title,
        'composer' => $composer,
        'type' => $type,
        'comments' => $comments,
        'suggestionsID' => $suggestionsID
    ];

    // Display some indication that an anthem was suggested.
    include('confirm_suggestion.php');
}
?>