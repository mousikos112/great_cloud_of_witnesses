<!--
    Last Author: Megan Coiley
    Date: 2025/04/23
    Purpose:
        This page allows a user to make a suggestion of a piece of music that they believe would be an 
        appropriate fit for this database.  The suggestion is then added to the suggestions table in the 
        database.  Database administrators may then decide whether or not to incorporate these suggestions.
-->

<!DOCTYPE html>
<html lang="en">
<head>
<title>A Great Cloud of Witnesses: Suggest a Piece</title>
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
<h2 style="display: none";>Suggestions</h2>
<p>
    Got an anthem or an organ solo piece that you think should be added?  Let us know about it!<br><br>
    Required fields are indicated by asterisk. (*)
</p>

<div class="main-form">
<form action="add_suggestion.php" method="post" id="add_suggestion">
    <label for="title">* Title</label>
        <input type="text" name="title" id="title" required>
    <label for="composer">* Composer</label>
        <input type="text" name="composer" id="composer" required>
    <label for="organ_or_choral">* Choral or organ?</label>
        <input type="text" name="organ_or_choral" id="organ_or_choral" required>
    <label for="comments">Comments</label>
        <textarea name="comments" id="comments" rows="6" cols="20"></textarea>
    <input type="submit" value="Submit Suggestion">
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