 <?php
require_once('database/gcw_database.php');

 // Get the anthem data using the session variable set up in add_suggestion.php.
 $title = $submitted_data['title'];
 $composer = $submitted_data['composer'];
 $type = $submitted_data['type'];
 $comments = $submitted_data['comments'];
 $suggestionsID = $submitted_data['suggestionsID'];
?>

 <!DOCTYPE html>
<html lang="en">
<head>
<title>A Great Cloud of Witnesses: Confirm Suggestion</title>
<meta charset="utf-8">
<meta name="description" content="A Great Cloud of Witnesses is an interactive website containing a relational database of 
    sacred music (choral and organ) by composers whose identities are demographically underrepresented in the canon of Western 
    classical music.">
<link rel="stylesheet" href="styles/styles.css">
</head>

<body class="container">
<div class="headernav">
    <header>
        <h1><a href="index.php">A Great Cloud of Witnesses</a></h1>
    </header>

    <nav>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="search.php">Search</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="contact.php">Contact</a></li>
        </ul>
    </nav>
</div>

<main>
<p>
    You entered the following suggestion:
</p>
<div class="confirm_suggestion_info">
<label class="suggestion_label">Title:</label>
    <span class="suggestion_info"><?php echo htmlspecialchars($title); ?></span>
<label class="suggestion_label">Composer:</label>
    <span class="suggestion_info"><?php echo htmlspecialchars($composer); ?></span>
<label class="suggestion_label">Choral or organ?</label>
    <span class="suggestion_info"><?php echo htmlspecialchars($type); ?></span>
<label class="suggestion_label">Comments:</label>
    <span class="suggestion_info"><?php echo htmlspecialchars($comments); ?></span>
</div>

<p>
    Is this accurate?  If so, click "Confirm Suggestion."  If not, click "Remove Suggestion."
</p>

<!-- Ask the user if they'd like to confirm or remove the suggestion. -->
<div class="buttons">
<form action="thanks.php" method="post" id="confirm_suggestion">
    <input class="button01" type="submit" value="Confirm Suggestion">
</form>
<form action="delete_suggestion.php" method="post" id="delete_suggestion">
    <input type="hidden" name="suggestionsID" value="<?php echo $suggestionsID; ?>">
    <input class="button02" type="submit" value="Remove Suggestion">
</form>
</div>
</main>

<footer class="footer">
    <div class="webmaster">Copyright &copy; 2025 Megan Coiley. All rights reserved.</div>
    <div class="subpages">
        <ul>
            <li><a href="suggestions.php">Suggest a piece of music</a></li>
            <li><a href="contact.php">Contact us</a></li>
        </ul>
    </div>
</footer>

</body>
</html>