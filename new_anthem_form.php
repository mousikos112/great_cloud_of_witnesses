<!--
    Last Author: Megan Coiley
    Date: 2025/05/10
    Purpose:
        This page allows a database administrator to enter a piece of music into the database.
-->

<?php
    require('database/gcw_database.php');
    require('functions.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>A Great Cloud of Witnesses: Add a Piece</title>
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
<h2 style="display: none";>Add a Piece</h2>
<p>
    Please add all of the information you have about the piece you are adding.
</p>
<div class="secondary-form">
<form action="add_new_anthem.php" method="post" id="new_anthem">
    <!-- Title -->
    <div class="row">
        <label for="title">* Title</label>
        <input type="text" name="title" id="title" required>
    </div>
    <!-- Composer -->
    <div class="input-group">
        <label for="first_name">Composer First Name</label>
        <input type="text" name="first_name" id="first_name">
    </div>
    <div class="input-group">
        <label for="last_name">* Composer Last Name</label>
        <input type="text" name="last_name" id="last_name">
    </div>
    <!-- Type of piece -->
    <div class="input-group">
        <label for="type">* Type of piece</label>
        <select size="1" name="type_of_piece" id="type_of_piece" required>
            <option>-- Select a type of piece --</option>
            <?php
                // Get the anthem types from the database.
                $types = getTypes();
                // Create the options for the select menu.
                foreach ($types as $type) {
                echo '<option value="' . $type['typeID'] . '">' . 
                    htmlspecialchars($type['anthemType']) . '</option>';
                }
            ?>
            <option value="other">Other</option>
        </select>
    </div>
    <!-- Voicing of piece -->
    <div class="input-group">
    <label for="voicing">Voicing of piece (where applicable)</label>
        <select size="1" name="voicing" id="voicing" required>
            <option>-- Select a voicing --</option>
            <?php
                // Get the possible voicings from the database.
                $voicings = getVoicings();
                // Create the options for the select menu.
                foreach ($voicings as $voicing) {
                echo '<option value="' . $voicing['voicingID'] . '">' . 
                    htmlspecialchars($voicing['voicing']) . '</option>';
                }
            ?>
            <option value="other">Other</option>
        </select>
    </div>
    <!-- Accompanying instrument -->
    <div class="input-group">
        <label for="instrument">Accompanying Instrument (e.g. organ, piano, handbells (opt.), oboe)<br>
            <i>Do not add for organ solo pieces.</i></label>
        <input type="text" name="instrument" id="instrument">
    </div>
    <!-- Language of piece -->
    <div class="input-group">
        <label for="language">Language (where applicable)</label>
        <select size="1" name="language" id="language">
            <option>-- Select a language --</option>
            <?php
                // Get the possible seasons from the database.
                $languages = getLanguages();
                // Create the options for the select menu.
                foreach ($languages as $language) {
                echo '<option value="' . $language['languageID'] . '">' . 
                    htmlspecialchars($language['languageName']) . '</option>';
                }
            ?>
            <option value="other">Other</option>
        </select>
    </div>
    <!-- Solos -->
    <div class="input-group">
        <label for="solos">Solos (e.g. S, MS, A)</label>
        <input type="text" name="solos" id="solos">
    </div>
    <!-- Publisher -->
    <div class="input-group">
    <label for="publisher">Publisher</label>
        <select size="1" name="publisher" id="publisher">
            <option>-- Select a publisher --</option>
            <?php
                // Get the publishers from the database.
                $publishers = getPublishers();
                // Create the options for the select menu.
                foreach ($publishers as $publisher) {
                echo '<option value="' . $publisher['publisherID'] . '">' . 
                    htmlspecialchars($publisher['publisherName']) . '</option>';
                }
            ?>
            <option value="other">Other</option>
        </select>
    </div>
    <!-- Difficulty -->
    <div class="input-group">
        <label for="difficulty">Difficulty<br>
        <i>For choral, 1 is Mozart - Ave Verum Corpus level; 5 is the Poulenc Mass in G Major<br>
        For organ, 1 is Price - Adoration; 5 is a Vierne symphony</i></label>
        <select size="1" name="difficulty" id="difficulty">
            <option>-- Select a difficulty --</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select>
    </div>
    <!-- Duration -->
    <div class="input-group">
        <label for="duration">Duration (please round to the nearest 30 seconds)</label>
        <input type="text" name="duration" id="duration">
    </div>
    <!-- Season of piece -->
    <div class="input-group">
        <label for="season">* Liturgical season of piece (select as many as apply)</label>
            <div class="checkbox-group">
                <?php
                    // Get the possible seasons from the database.
                    $seasons = getSeasons();
                    // Create the checkboxes.
                   foreach ($seasons as $season) {
                        echo '<label class="checkbox-item">';
                        echo '<input type="checkbox" name="' . htmlspecialchars($season['seasonID']) . 
                            '" id="' . htmlspecialchars($season['seasonID']) . '" value="yes"> ';
                        echo htmlspecialchars($season['liturgicalSeason']);
                        echo '</label>';
                    }
                ?>
        </div>
    </div>
    <!-- Notes/Comments -->
    <div class="input-group">
        <label for="notes">Notes/Comments</label>
        <textarea name="notes" id="notes" rows="6" cols="20"></textarea>
    </div>
    <!-- Score link -->
    <div class="row">
        <label for="score">Link to purchase or download the score</label>
        <input type="text" name="score" id="score">
    </div>
    <!-- Recording link -->
    <div class="row">
        <label for="recording">Link to a decent recording</label>
        <input type="text" name="recording" id="recording">
    </div>
    <div class="row">
        <input type="submit" value="Submit New Anthem">
    </div>
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
