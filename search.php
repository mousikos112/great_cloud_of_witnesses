<!--
    Last Author: Megan Coiley
    Date: 2025/04/23
    Purpose:
        This is an interactive website containing a relational database of sacred music (choral and organ) by composers whose
        identities are demographically underrepresented in the canon of Western classical music.  Its purpose is to provide 
        church musicians with information about well-written music that would be appropriate for use during the church year.
-->

<?php
require('database/gcw_database.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>A Great Cloud of Witnesses: Search</title>
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

<main class="main-form">
<form action="refine_search.php" method="post">
    <label for="search_parameters">Search By</label>
        <!-- Go get categories for the options.  Get this from the tables.  
         Make sure the associated ID is there.  That will be the query parameter.
         Somewhere in chapter 4.  echo that into the options.-->
        <select size="1" name="searchAnthemsBy" id="searchAnthemsBy" required>
	        <option>How would you like to search?</option>
	        <option value="composer">Composer</option>
            <option value="type">Type (anthem, canticle, organ solo, etc.)</option>
            <option value="season">Season</option>
            <option value="voicing">Voicing</option>
        </select>
    <input type="submit" value="Search">
</form>
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